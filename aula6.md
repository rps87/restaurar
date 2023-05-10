
BANCO DE DADOS: lanchonete

TABELA: lanches
        - idLanche
        - nomeLanche
        - descricao
        - preco

TABELA: pedidos
        - idPedido
        - idLanche
        - quant
        - valorPedido
        - observacao
        - dataPedido
        - horaPedido

TABELA: entregas
        - idEntrega
        - idPedido
        - valorTotal
        - endereco
        - nomeCliente
        - telCliente