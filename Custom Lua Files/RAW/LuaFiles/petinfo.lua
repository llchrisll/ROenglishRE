PetNameTable_Custom = {
	-- Mob File Name (same as jobname_custom.lub)
	-- [jobtbl_custom.JT_] = "<mob file name>"
}
PetIllustNameTable_Custom = {
	-- Pet Illust File (default: Poring)
	-- [jobtbl_custom.JT_] = ".bmp"
}
PetIllustNameTable_Eng_Custom = {
	-- English Pet Illust File (default: Poring)
	-- [jobtbl_custom.JT_] = ".bmp"
}
PetAccIDs_Custom = {
	-- View ID of the Pet Accessory
	-- ACC_ = 0, Max ID 10046 - I'm not sure what happens if you increase this ID
	ACC_FIRST = 10047, -- Last official ID is 10046 so far
	ACC_LAST = 10100
}
PetAccActNameTable_Custom = {
	-- Accessory Act File Name (only needed if Accessory is set above)
	-- [PetAccIDs_Custom.ACC_] = ".act"
}
PetAccActNameTable_Eng_Custom = {
	-- English Accessory Act File Name (only needed if Accessory is set above)
	-- [PetAccIDs_Custom.ACC_] = ".act"
}
PetStringTable_Custom = {
	-- Pet Display Name
	-- [jobtbl_custom.JT_] = "Name"
}
PetEggItemID_PetJobID_Custom = {
	-- Assigns the Item ID of the EGG to the respective Pet
	-- [0] = jobtbl_custom.JT_
}
PetFoodTable_Custom = {
	-- Item ID for Pet Food for the respective Pet
	-- [jobtbl_custom.JT_] = 531
}
