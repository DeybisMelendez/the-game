extends Control

onready var Rules = $VBoxContainer/Rules
onready var History = $VBoxContainer/History

func _ready():
	Rules.connect("button_up", self, "open_rules")
	History.connect("button_up", self, "open_history")

func open_rules():
	OS.shell_open("https://en.wikipedia.org/wiki/The_Game_(mind_game)")

func open_history():
	get_tree().change_scene("res://scenes/history/History.tscn")
