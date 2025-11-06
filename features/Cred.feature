Feature: #Aquí se describe el título

    @Automated
    Scenario Outline: Visualizar datos inválidos en <herramienta> (<idioma>)
        Given el cliente se loguea con el usuario de credentials
        And el idioma del sistema está en <idioma>
        And Ingresa en la pantalla Credenciales
        And El cliente hace click sobre el boton Nuevo en la pantalla de Credenciales
        And selecciona la herramienta <herramienta>
        When completa los datos <datos> para la credencial de <herramienta>
        Then se verifica que el boton <boton> esta deshabilitado
        And en la seccion de nuevas credenciales verifica que el mensaje de error <mensaje> aparece para <numero> campos
        And se visualiza el ícono de exlamación para <numero> campos
        # Validar si este escenario sale con el de abajo, para que quede todo en uno

        @ES
        Examples:
            | idioma | herramienta  | mensaje          | datos                                                                                                                                                                                                                                                     | numero | boton   |
            | ES     | Jira         | Formato inválido | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,email:datos inválidos,domain:datos inválidos   | 2      | Guardar |
            | ES     | Azure DevOps | Formato inválido | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,domain:datos inválidos                         | 1      | Guardar |
            | ES     | Bitbucket    | Formato inválido | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,usuario:datos inválidos,domain:datos inválidos | 1      | Guardar |
            | ES     | Gitlab       | Formato inválido | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,email:datos inválidos,domain:datos inválidos   | 1      | Guardar |
            | ES     | OpenAI       | Formato inválido | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,email:datos inválidos                          | 1      | Guardar |


        @EN
        Examples:
            | idioma | herramienta  | mensaje        | datos                                                                                                                                                                                                                                                     | numero | boton |
            | EN     | Jira         | Invalid format | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,email:datos inválidos,domain:datos inválidos   | 2      | Save  |
            | EN     | Azure DevOps | Invalid format | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,domain:datos inválidos                         | 1      | Save  |
            | EN     | Bitbucket    | Invalid format | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,usuario:datos inválidos,domain:datos inválidos | 1      | Save  |
            | EN     | Gitlab       | Invalid format | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,email:datos inválidos,domain:datos inválidos   | 1      | Save  |
            | EN     | OpenAI       | Invalid format | accessKey:ATATT3xFfGF0txkgRk_XNkVoBq_F8J_pcJ5vkCCdmpyzmGDHFD7sfo97OtRXpwqO4OdVK_nYdK6G3usbo_Q886SGKon1n4eU3mnkzFNmGz-7tUNlS1o_Vqym8wWhL_mWHE44TIcO6PDwf20DcAhzJW9PEhLlAa_u9_PXJTtoqimnhE9n6ULKvkg=01DF7AA4,email:datos inválidos                          | 1      | Save  |
