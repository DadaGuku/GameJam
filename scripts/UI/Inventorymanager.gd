### Inventorymanager.gd
extends Node


#Inventory Items
var inventory = []

#To Signal changes to the UI
signal inventory_update


func _ready():
	inventory.resize(10)


func add_item(item: Dictionary) -> bool:
	for i in range(inventory.size()):
		if inventory[i] != null and inventory[i]["type"] == item["type"]:
			inventory[i]["quantity"] += item["quantity"]
			inventory_update.emit()
			return true
		elif inventory[i] == null:
			inventory[i] = item
			inventory_update.emit()
			return true
	
	return false

	
func remove_item() -> bool:
	inventory_update.emit()
	return false
	

	
