Feature: #Aquí se describe el título
  Aquí se describe el feature
  
Scenario: Error de inicio de sesión por campos vacíos
  Given que el usuario está en la página de inicio de sesión
  When deja el campo de nombre de usuario vacío
  And deja el campo de contraseña vacío
  And hace clic en el botón de iniciar sesión
  Then el sistema muestra un mensaje de error "Por favor, complete todos los campos"
  
  Scenario: Error de registro por nombre de usuario inválido
  Given que el usuario está en la página de registro
  When ingresa un nombre de usuario inválido "us"
  And ingresa una contraseña válida "ContraseñaSegura123"
  And ingresa un correo electrónico válido "usuario@example.com"
  And hace clic en el botón de registro
  Then el sistema muestra un mensaje de error "El nombre de usuario debe tener al menos 3 caracteres"
  
  Scenario: Error de registro por nombre de usuario inválido
  Given que el usuario está en la página de registro
  When ingresa un nombre de usuario inválido "us"
  And ingresa una contraseña válida "ContraseñaSegura123"
  And ingresa un correo electrónico válido "usuario@example.com"
  And hace clic en el botón de registro
  Then el sistema muestra un mensaje de error "El nombre de usuario debe tener al menos 3 caracteres"