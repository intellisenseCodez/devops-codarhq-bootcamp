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
sudo yum install -y java-1.8.0-openjdk git maven wget

# Download and extract Tomcat
echo "Installing Tomcat ${TOMCAT_VERSION}..."
cd /tmp/
wget $TOMURL 
tar xzvf apache-tomcat-8.5.37.tar.gz



# Create Tomcat user and set up directory
echo "Configuring Tomcat user and permissions..."
sudo useradd --home-dir /usr/local/tomcat8 --shell /sbin/nologin tomcat

sudo cp -r /tmp/apache-tomcat-8.5.37/* /usr/local/tomcat8/
sudo chown -R tomcat.tomcat /usr/local/tomcat8



# Create systemd service file
echo "Creating systemd service..."
sudo cat <<EOF > /etc/systemd/system/tomcat.service

[Unit] 
Description=Tomcat 
After=network.target 

[Service] 
User=tomcat 
Group=tomcat
WorkingDirectory=/usr/local/tomcat8

Environment=JRE_HOME=/usr/lib/jvm/jre 
Environment=JAVA_HOME=/usr/lib/jvm/jre 
Environment=CATALINA_HOME=/usr/local/tomcat8 
Environment=CATALINE_BASE=/usr/local/tomcat8 

ExecStart=/usr/local/tomcat8/bin/catalina.sh run
ExecStop=/usr/local/tomcat8/bin/shutdown.sh
SyslogIdentifier=tomcat-%i

[Install] 
WantedBy=multi-user.target
EOF


# Reload and start Tomcat service
echo "Starting Tomcat service..."
sudo systemctl daemon-reload
sudo systemctl enable tomcat
sudo systemctl start tomcat

# Enabling the firewall and allowing port 8080 to access the tomcat
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --get-active-zones
sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent
sudo firewall-cmd --reload

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
mvn install

sudo systemctl stop tomcat
sleep 60

sudo rm -rf /usr/local/tomcat8/webapps/ROOT


sudo cp /vagrant/target/vprofile-v2.war /usr/local/tomcat8/webapps/ROOT.war

sudo chown tomcat.tomcat /usr/local/tomcat8/webapps -R


sudo systemctl start tomcat

# sleep 120
# sudo cp ${APP_PROPERTIES} ${TOMCAT_INSTALL_DIR}/webapps/ROOT/WEB-INF/classes/application.properties
# sudo systemctl restart tomcat

echo "Tomcat installation and configuration completed successfully!"