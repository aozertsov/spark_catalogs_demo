-- Создание таблицы orders в базе данных habr
CREATE TABLE IF NOT EXISTS orders (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Уникальный идентификатор записи',
    order_id VARCHAR(50) NOT NULL UNIQUE COMMENT 'Уникальный номер заказа',
    customer_id INT NOT NULL COMMENT 'ID клиента',
    product_id INT NOT NULL COMMENT 'ID товара',
    quantity INT NOT NULL DEFAULT 1 COMMENT 'Количество товара',
    price DECIMAL(10, 2) NOT NULL COMMENT 'Цена за единицу товара',
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата заказа',
    status ENUM('pending', 'processing', 'shipped', 'delivered', 'cancelled') DEFAULT 'pending' COMMENT 'Статус заказа',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания записи',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время последнего обновления записи',
    
    INDEX idx_customer_id (customer_id),
    INDEX idx_product_id (product_id),
    INDEX idx_order_date (order_date),
    INDEX idx_status (status)
) COMMENT = 'Таблица заказов';