# Whenever we are importing any module, that module executable code will run
import ModuleOne

# Call module function by using module name

ModuleOne.testModuleFunction()

# Call module function with return value
x=ModuleOne.sum(100, 200)
print(x)

# Use Function inside a Class created in Module
obj=ModuleOne.A()
obj.testing()
