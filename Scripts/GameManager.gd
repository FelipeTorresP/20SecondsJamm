extends Control

var dialogues = []

@onready var question = $Question
@onready var opcion1 = $Opcion1
@onready var opcion2 = $Opcion2

# Called when the node enters the scene tree for the first time.
func _ready():
	load_json()
	pass # Replace with function body.

func load_json():
	var file = FileAccess.open("res://Base.json", FileAccess.READ)
	if file:
		var content = file.get_as_text()
		var data = JSON.parse_string(content)
		if typeof(data) == TYPE_DICTIONARY and data.has("dialogues"):
			dialogues.clear()
			for d in data["dialogues"]:
				var opciones = []
				for o in d["opciones"]:
					var opcion = Opcion.new(o["textoRespuesta"], o["moral"], o["relationship"])
					opciones.append(opcion)
				var dialogo = Dialogos.new(d["idPregunta"], d["pregunta"], d["requierePreguntaAnterior"], opciones)
				dialogues.append(dialogo)
