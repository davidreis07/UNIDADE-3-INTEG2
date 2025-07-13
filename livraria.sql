CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de produtos (agora com 4 produtos)
INSERT INTO produtos (nome, preco) VALUES
('Livro de SQL', 59.90),
('HTML e CSS na Prática', 44.50),
('JavaScript Essencial', 69.00),
('Python para Iniciantes', 75.20); -- produto adicionado

-- Inserção de pedidos
INSERT INTO pedidos (produto_id, quantidade, data_pedido) VALUES
(1, 2, '2025-07-10'),
(2, 1, '2025-07-10'),
(3, 3, '2025-07-11'),
(4, 1, '2025-07-12'); -- pedido para o novo produto

-- Exibir os dados inseridos
SELECT * FROM produtos;
SELECT * FROM pedidos;
