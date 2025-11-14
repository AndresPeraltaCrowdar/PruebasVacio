Feature: #Aquí se describe el título
  Aquí se describe el feature
  
Scenario: Error de inicio de sesión por campos vacíos
  Given que el usuario está en la página de inicio de sesión
  When deja el campo de nombre de usuario vacío
  And deja el campo de contraseña vacío
  And hace clic en el botón de iniciar sesión
  Then el sistema muestra un mensaje de error "Por favor, complete todos los campos"
  
  Scenario: Error al intentar comprar sin completar los campos obligatorios
  Given que el usuario ha iniciado sesión en su cuenta
  When selecciona un producto de la lista de productos
  And agrega el producto al carrito de compras
  And procede al checkout
  And deja los campos de información de pago vacíos
  Then el sistema muestra un mensaje de error solicitando completar los campos obligatorios
  
  Scenario: Error al intentar comprar sin completar los campos obligatorios
  Given que el usuario ha iniciado sesión en su cuenta
  When selecciona un producto de la lista de productos
  And agrega el producto al carrito de compras
  And procede al checkout
  And deja los campos de información de pago vacíos
  Then el sistema muestra un mensaje de error solicitando completar los campos obligatorios