@Regression @Regression
Feature: Login

@Login @Smoke @Automated
Scenario: Inicio de sesión exitoso con Facebook
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And ingresa sus credenciales de Facebook válidas
  Then el sistema redirige al usuario a la página principal
  And muestra un mensaje de bienvenida

@Smoke @Automated
Scenario: Error de inicio de sesión con Facebook por campos vacíos
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And no ingresa ninguna credencial
  Then el sistema muestra un mensaje de error indicando que los campos no pueden estar vacíos
  
@Candidate @Smoke
Scenario: Error de inicio de sesión con Facebook por credenciales inválidas
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And ingresa credenciales inválidas
  Then el sistema muestra un mensaje de error indicando que las credenciales son incorrectas
  
@NoCandidate @Smoke
Scenario: Error de inicio de sesión con Facebook por credenciales inválidas
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And ingresa credenciales inválidas
  Then el sistema muestra un mensaje de error indicando que las credenciales son incorrectas

@Candidate
Scenario: Error de inicio de sesión con Facebook por credenciales inválidas
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And ingresa credenciales inválidas
  Then el sistema muestra un mensaje de error indicando que las credenciales son incorrectas

@NoCandidate  
Scenario: Error de inicio de sesión con Facebook por credenciales inválidas
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And ingresa credenciales inválidas
  Then el sistema muestra un mensaje de error indicando que las credenciales son incorrectas
 
@Automated 
Scenario: Error de inicio de sesión con Facebook por credenciales inválidas
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And ingresa credenciales inválidas
  Then el sistema muestra un mensaje de error indicando que las credenciales son incorrectas

@Automated  
Scenario: Error de inicio de sesión con Facebook por credenciales inválidas
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And ingresa credenciales inválidas
  Then el sistema muestra un mensaje de error indicando que las credenciales son incorrectas
  
@ToBeAutomated @Smoke
Scenario: Error de inicio de sesión con Facebook por credenciales inválidas
  Given que el usuario está en la página de inicio de sesión
  When hace clic en el botón "Iniciar sesión con Facebook"
  And ingresa credenciales inválidas
  Then el sistema muestra un mensaje de error indicando que las credenciales son incorrectas