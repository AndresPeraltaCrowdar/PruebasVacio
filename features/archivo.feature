Feature: Registro

@ToBeAutomated
Scenario: Registro exitoso de un nuevo usuario
  Given que el usuario está en la página de registro
  When completa el formulario con nombre "Juan Pérez", correo "juan.perez@example.com" y contraseña "Password123"
  And hace clic en el botón de "Registrar"
  Then el sistema muestra un mensaje de confirmación "Registro exitoso"
  
@Candidate
Scenario: Error de registro por correo electrónico inválido
  Given que el usuario está en la página de registro
  When completa el formulario con nombre "Ana López", correo "ana.lopez@.com" y contraseña "Password123"
  And hace clic en el botón de "Registrar"
  Then el sistema muestra un mensaje de error "Correo electrónico inválido"

@NoCandidate
Scenario: Error de registro por campos vacíos
  Given que el usuario está en la página de registro
  When deja todos los campos del formulario vacíos
  And hace clic en el botón de "Registrar"
  Then el sistema muestra un mensaje de error "Todos los campos son obligatorios"

@Automated
Scenario: Error de registro por campos vacíos
  Given que el usuario está en la página de registro de Facebook
  When deja el campo de nombre vacío
  And deja el campo de apellido vacío
  And deja el campo de correo electrónico vacío
  And deja el campo de contraseña vacío
  And hace clic en el botón "Registrarse"
  Then el sistema muestra un mensaje de error "Todos los campos son obligatorios"
  
@ToBeAutomated
Scenario: Error de registro por campos vacíos
  Given que el usuario está en la página de registro de Facebook
  When deja el campo de nombre vacío
  And deja el campo de apellido vacío
  And deja el campo de correo electrónico vacío
  And deja el campo de contraseña vacío
  And hace clic en el botón "Registrarse"
  Then el sistema muestra un mensaje de error "Todos los campos son obligatorios"
  
@ToBeAutomated
Scenario: Error de registro por campos vacíos
  Given que el usuario está en la página de registro de Facebook
  When deja el campo de nombre vacío
  And deja el campo de apellido vacío
  And deja el campo de correo electrónico vacío
  And deja el campo de contraseña vacío
  And hace clic en el botón "Registrarse"
  Then el sistema muestra un mensaje de error "Todos los campos son obligatorios"
  
@ToBeAutomated
Scenario: Error de registro por campos vacíos
  Given que el usuario está en la página de registro de Facebook
  When deja el campo de nombre vacío
  And deja el campo de apellido vacío
  And deja el campo de correo electrónico vacío
  And deja el campo de contraseña vacío
  And hace clic en el botón "Registrarse"
  Then el sistema muestra un mensaje de error "Todos los campos son obligatorios"