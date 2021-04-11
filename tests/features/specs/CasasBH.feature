# language: pt

@casabh
Funcionalidade: incluir produto no carrinho

Cenario:Validar carrinho

Dado que estou na Home
E pesquiso um produto
Quando Selecionar o produto desejado
E adiciono no carrinho
Então Deve finalizar a compra
