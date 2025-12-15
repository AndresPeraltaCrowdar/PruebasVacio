@Regression @ToBeAutomated
Feature: Compra

@Ecommerce
Scenario: Compra exitosa de un producto con pago aprobado
  Given que el usuario se encuentra autenticado en la tienda y con el carrito vacío
  When buscar el producto "Auriculares Bluetooth ZX-500"
  And agregar al carrito el producto con cantidad "1"
  And validar el carrito visualizando subtotal, costo de envío y total
  And completar la dirección de envío con "Calle 123, Ciudad, CP 1000"
  And seleccionar el método de envío "Express 48h"
  And seleccionar el método de pago "Tarjeta de crédito"
  And ingresar los datos de pago con tarjeta "4111 1111 1111 1111", vencimiento "12/27" y CVV "123"
  And confirmar la compra
  Then visualizar la confirmación de pedido con número de orden
  And registrar el estado del pedido como "Pago aprobado" y "Preparando envío"