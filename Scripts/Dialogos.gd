# Question.gd
class_name Dialogos
extends Resource

var id_pregunta: String
var pregunta: String
var requiere_pregunta_anterior: bool = false
var opciones: Array = []

func _init(id_pregunta: String, pregunta: String, requiere: bool, opciones: Array):
	self.id_pregunta = id_pregunta
	self.pregunta = pregunta
	self.requiere_pregunta_anterior = requiere
	self.opciones = opciones
