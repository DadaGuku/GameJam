extends Node

#Inventory Items
var inventory = []

#To Signal changes to the UI
signal inventory_update


func _ready():
	inventory.resize(10)
	
func add_item() -> bool:
	inventory_update.emit() 
	return false

	
func remove_item() -> bool:
	inventory_update.emit()
	return false
	

	
