Feature: #Aquí se describe el título

Scenario: Error de inicio de sesión por campos vacíos
  Given que el usuario está en la página de inicio de sesión
  When deja el campo de nombre de usuario vacío
  And deja el campo de contraseña vacío
  And hace clic en el botón de iniciar sesión
  Then el sistema muestra un mensaje de error "Por favor, complete todos los campos"