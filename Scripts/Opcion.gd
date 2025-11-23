class_name Opcion
extends Resource

var texto_respuesta: String
var moral: int
var relationship: int

func _init(texto: String, moral: int, relationship: int):
	self.texto_respuesta = texto
	self.moral = clamp(moral, -3, 3)
	self.relationship = clamp(relationship, -3, 3)
