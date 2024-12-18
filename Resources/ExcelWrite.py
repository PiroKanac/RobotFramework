import openpyxl

vk = openpyxl.Workbook()
print(vk.active.title)
sh = vk.active
sh.title="HelloTestingWorld"
print(sh.title)

sh['A4'].value="www.theTestingWorld.com"

#Second Sheet is Created
vk.create_sheet(title="Test")
#Add data in second sheet
sh1= vk['Test']
sh1['A3'] = "93457348734753"

#Remove sheet
vk.remove(vk['HelloTestingWorld'])

vk.save("C:\\Users\\niri\\Documents\\Test2.xlsx")