@Automated
Feature: login

@Automated
Scenario: Inicio de sesión exitoso con credenciales válidas
  Given que el usuario se encuentra en la pantalla de Login
  When ingresar el correo "maria.lopez@example.com"
  And ingresar la contraseña "M4ria!2025"
  And hacer clic en el botón "Iniciar sesión"
  Then validar el redireccionamiento al dashboard
  And visualizar el mensaje de bienvenida "Hola, María"
 
Scenario: Redirección a restablecer contraseña
  Given que el usuario se encuentra en la pantalla de Login
  When hacer clic en el enlace "¿Olvidaste tu contraseña?"
  Then validar el redireccionamiento a la pantalla "Restablecer contraseña"