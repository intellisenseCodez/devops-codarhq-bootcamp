# pythagoras theorem
# create an application to find the hyp of a triangle
#. hyp^2 = opp^2 + adj^2

# input
opp = eval(input("Enter the Opposite Value (cm): "))
adj = eval(input("Enter the Adjacent Value (cm): "))

# process
hyp = ((opp ** 2) + (adj ** 2)) ** 1/2

# output
print("The hypotenus of the traingle is", hyp)

