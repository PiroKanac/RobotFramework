# This is Python Module
# Here we are writing executable code
# Also class can be created inside module


print("Welcome to Python Module with name ModuleOne")

# Functions inside Python file(Without class), Module Functions

def testModuleFunction():
    print("This is Python Module Function")

def sum(a,b):
    c=a+b
    return c

class A:
    def __init__(self):
        print("This is constructor in class which is inside Module")
    def testing(self):
        print("This is Class Function inside Module")