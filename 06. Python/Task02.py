
# Develop a simple python USSD program, users has the following
# credit balance. Allows users to be able 
# 1. Buy recharge Card (*310#)
# 2. to purchase data  (*323#)
# 3. pay for bill. (*500#)
# When any of this transaction is perform update the balance amount

user_wallet = {
    "credit_balance": 90.04,
    "data_balance": 30,   # MB
}

while True:
    intro = """
    Welcome to my eazyWallet
     1. Buy recharge Card (*310#)
     2. to purchase data  (*323#)
     3. pay for bill. (*500#)
     4. Exit (exit)
            """
    print(intro)

    shortcode = input("Enter shortcode (exit to stop): ")

    if shortcode == "*310#":
        print("Buy a recharge card")
        amount = eval(input("Enter the amount: "))
        user_wallet["credit_balance"] = user_wallet["credit_balance"] + amount # update the credit balance

    elif shortcode == "*323#":
        print("Buy a data")
        amount = eval(input("Enter the amount (MB): "))
        user_wallet["data_balance"] = user_wallet["data_balance"] + amount

    elif shortcode == "*500#":
        print("Pay for bill")
    elif shortcode == "exit":
        break
    else:
        print("Invalid Shortcode")



print(user_wallet)