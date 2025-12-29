Feature: login

 Scenario: Inicio de sesión exitoso con credenciales válidas
  Given que el usuario se encuentra en la pantalla de Login
  When ingresar el correo "maria.lopez@example.com"
  And ingresar la contraseña "M4ria!2025"
  And hacer clic en el botón "Iniciar sesión"
  Then validar el redireccionamiento al dashboard
  And visualizar el mensaje de bienvenida "Hola, María"