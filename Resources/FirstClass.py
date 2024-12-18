
# First we are creating a class
class A:
    # This is Class function with no argument and no return value
    def welcome(self):
        print("This is Class function")

    # Function which will take 2 arguments, sum value and display
    def sum(self,a,b):
        c=a+b
        print("Sum is  - " + str(c))

    #Function which will take argument and return value as well
    def mul(self,a,b):
        c=a*b
        return c

    # Constractor is created with __init__, can have values but can not return them and it is automaticly called when object of the class is created
    def __init__(self,a, b):
        print("This is Constructor")
        c=a+b
        print(c)

# To Call any member of class, create object of that class
obj=A(34,43)

# Call functions of class by using object
x=obj.mul(10,20)
print(x)