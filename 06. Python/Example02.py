
# cart system: 

# product
# price
# qty

carts = []

while True:
    try:
        # collecting details
        product = input("Enter the product name: ")
        price = eval(input("Enter the price: "))
        qty = eval(input("Enter the quatity: "))

        # as dictionary
        new_item = {"product_name": product,
                    "price": price,
                    "qty": qty}
        
        # adding item to cart
        carts.append(new_item)

        # ask user if they will like to perform another transac.
        exit = input("Will you like to add a new item (Yes/No):")
        if exit == "yes":
            continue
        else:
            break

    except:
        print("An Error Occurred")


# display all cart info
print(carts)