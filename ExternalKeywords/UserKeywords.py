import os

def create_folder(foldername):
    os.mkdir("C:\\"+ foldername)

def create_sub_folder(subfoldername):
    os.mkdir("C:\\RobotFrameworkTesting\\"+ subfoldername)

def concatenate_two_values(val1, val2):
    val3 = val1+" " + val2
    return val3
