@Regression
Feature: Login

@Login @Smoke
Scenario: Inicio de sesión exitoso con Facebook
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And ingresa sus credenciales de Facebook válidas
  Then el sistema redirige al usuario a la página principal
  And muestra un mensaje de bienvenida