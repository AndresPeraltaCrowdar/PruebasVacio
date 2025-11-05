Feature: Update

@Candidate  
Scenario: Actualización de aplicación exitosa
  Given que el usuario tiene la aplicación instalada y una nueva versión está disponible
  When el usuario inicia la aplicación
  And selecciona la opción de actualizar
  Then la aplicación se descarga e instala correctamente
  And el usuario puede acceder a la nueva versión sin problemas

@NoCandidate
Scenario: Error al actualizar aplicación por versión incompatible
  Given que el usuario tiene la aplicación instalada y una nueva versión está disponible
  When el usuario inicia la aplicación
  And selecciona la opción de actualizar
  Then el sistema muestra un mensaje de error indicando que la versión no es compatible con el dispositivo
  
@ToBeAutomated
Scenario: Error al intentar actualizar aplicación con campos vacíos
  Given que el usuario tiene la aplicación instalada y una nueva versión está disponible
  When el usuario inicia la aplicación
  And no selecciona ninguna opción de actualización
  Then el sistema no realiza ninguna acción de actualización
  And el usuario permanece en la versión actual de la aplicación
  
Scenario: Error al intentar actualizar aplicación con campos vacíos
  Given que el usuario tiene la aplicación instalada y una nueva versión está disponible
  When el usuario inicia la aplicación
  And no selecciona ninguna opción de actualización
  Then el sistema muestra un mensaje de advertencia indicando que no se ha seleccionado ninguna opción
  And el usuario permanece en la versión actual de la aplicación