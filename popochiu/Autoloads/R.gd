tool
extends "res://addons/Popochiu/Engine/Interfaces/IRoom.gd"

# classes ----
const PR101 := preload('res://popochiu/Rooms/101/Room101.gd')
# ---- classes

# nodes ----
var R101: PR101 setget , get_101
# ---- nodes

# functions ----
func get_101(): return .get_runtime_room('101')
# ---- functions

