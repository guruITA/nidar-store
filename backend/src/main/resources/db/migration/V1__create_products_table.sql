CREATE TABLE products (
                          id BIGINT NOT NULL AUTO_INCREMENT,
                          name VARCHAR(150) NOT NULL,
                          description TEXT,
                          price DECIMAL(10, 2) NOT NULL,
                          stock INT NOT NULL DEFAULT 0,
                          image_url VARCHAR(500),
                          active BOOLEAN NOT NULL DEFAULT TRUE,
                          created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
                              ON UPDATE CURRENT_TIMESTAMP,

                          CONSTRAINT pk_products PRIMARY KEY (id),
                          CONSTRAINT chk_products_price_non_negative CHECK (price >= 0),
                          CONSTRAINT chk_products_stock_non_negative CHECK (stock >= 0)
);