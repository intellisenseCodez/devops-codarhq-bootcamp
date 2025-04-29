#!/bin/bash

# Configuration
TOMURL="https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz"
TOMCAT_VERSION="8.5.37"
TOMCAT_INSTALL_DIR="/usr/local/tomcat8"
APP_WAR="vprofile-v2.war"
APP_PROPERTIES="/vagrant/application.properties"

# Update system packages
echo "Updating system packages..."
sudo yum update -y

# Install required packages
echo "Installing dependencies..."
yum install -y java-1.8.0-openjdk git maven wget

# Download and extract Tomcat
echo "Installing Tomcat ${TOMCAT_VERSION}..."
cd /tmp/
wget $TOMURL -O tomcatbin.tar.gz
EXTOUT=`tar xzvf tomcatbin.tar.gz`
TOMDIR=`echo $EXTOUT | cut -d '/' -f1`

# Create Tomcat user and set up directory
echo "Configuring Tomcat user and permissions..."
useradd --shell /sbin/nologin tomcat
rsync -avzh "/tmp/${TOMDIR}/" "${TOMCAT_INSTALL_DIR}/"
chown -R tomcat:tomcat "${TOMCAT_INSTALL_DIR}"



rm -rf /etc/systemd/system/tomcat.service

# Create systemd service file
echo "Creating systemd service..."
cat <<EOF > /etc/systemd/system/tomcat.service
[Unit]
Description=Apache Tomcat ${TOMCAT_VERSION}
After=network.target

[Service]
User=tomcat
Group=tomcat
WorkingDirectory=${TOMCAT_INSTALL_DIR}

Environment=JAVA_HOME=/usr/lib/jvm/jre
Environment=CATALINA_HOME=${TOMCAT_INSTALL_DIR}
Environment=CATALINA_BASE=${TOMCAT_INSTALL_DIR}
Environment=CATALINA_PID=/var/tomcat/%i/run/tomcat.pid

ExecStart=${TOMCAT_INSTALL_DIR}/bin/catalina.sh run
ExecStop=${TOMCAT_INSTALL_DIR}/bin/shutdown.sh

RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target
EOF


# Reload and start Tomcat service
echo "Starting Tomcat service..."
sudo systemctl daemon-reload
sudo systemctl enable tomcat
sudo systemctl start tomcat

# Verify Tomcat is running
if systemctl is-active --quiet tomcat; then
    echo "Tomcat is running successfully!"
else
    echo "ERROR: Tomcat failed to start"
    exit 1
fi

# Application deployment
echo "Deploying application..."
cd /vagrant/
# mvn install
mvn clean install -DskipTests
sudo systemctl stop tomcat
sleep 60
sudo rm -rf ${TOMCAT_INSTALL_DIR}/webapps/ROOT*
sudo cp /vagrant/target/${APP_WAR} ${TOMCAT_INSTALL_DIR}/webapps/ROOT.war

sudo chown tomcat.tomcat ${TOMCAT_INSTALL_DIR}/webapps -R


sudo systemctl start tomcat
sleep 120
sudo cp ${APP_PROPERTIES} ${TOMCAT_INSTALL_DIR}/webapps/ROOT/WEB-INF/classes/application.properties
sudo systemctl restart tomcat

echo "Tomcat installation and configuration completed successfully!"

