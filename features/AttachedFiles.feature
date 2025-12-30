@Login @Regression
Feature: Adjuntar imagen

@Automated
Scenario: Carga exitosa de imagen al producto
  Given que el usuario se encuentra en la ficha de producto "Zapatillas Running X20"
  When hacer clic en "Agregar imagen"
  And seleccionar el archivo "zapatillas_x20_frente.jpg" de 1.8 MB en formato JPG
  Then visualizar la vista previa de la imagen seleccionada
  Then registrar la imagen al producto y mostrar el mensaje "Imagen cargada correctamente"

@NoCandidate
Scenario: Validación de campos vacíos al intentar cargar sin archivo
  Given que el usuario se encuentra en la ficha de producto "Zapatillas Running X20"
  When hacer clic en "Agregar imagen"
  And hacer clic en "Guardar" sin seleccionar archivo
  Then visualizar el mensaje de validación "Debe seleccionar una imagen"
  Then no registrar cambios en la galería del producto
  
Scenario: Carga fallida de imagen por tamaño excedido
  Given que el usuario se encuentra en la ficha de producto "Zapatillas Running X20"
  When hacer clic en "Agregar imagen"
  And seleccionar el archivo "zapatillas_x20_frente.jpg" de 6 MB en formato JPG
  Then visualizar el mensaje de error "El tamaño de la imagen excede el límite permitido"