CREATE TABLE IF NOT EXISTS tb_category (
                                           id SERIAL PRIMARY KEY,
                                           name VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS tb_user (
                                       id SERIAL PRIMARY KEY,
                                       name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS tb_product (
                                          id SERIAL PRIMARY KEY,
                                          name VARCHAR(255) NOT NULL,
                                          description TEXT,
                                          price DOUBLE PRECISION NOT NULL,
                                          img_url TEXT
    );

CREATE TABLE IF NOT EXISTS tb_order (
                                        id SERIAL PRIMARY KEY,
                                        moment TIMESTAMP WITH TIME ZONE NOT NULL,
                                        order_status INTEGER NOT NULL,
                                        client_id INTEGER REFERENCES tb_user(id)
    );

CREATE TABLE IF NOT EXISTS tb_payment (
                                          id SERIAL PRIMARY KEY,
                                          moment TIMESTAMP WITH TIME ZONE NOT NULL,
                                          order_id INTEGER UNIQUE REFERENCES tb_order(id)
    );

CREATE TABLE IF NOT EXISTS tb_order_item (
                                             order_id INTEGER REFERENCES tb_order(id),
    product_id INTEGER REFERENCES tb_product(id),
    quantity INTEGER NOT NULL,
    price DOUBLE PRECISION NOT NULL,
    PRIMARY KEY (order_id, product_id)
    );

CREATE TABLE IF NOT EXISTS tb_product_category (
                                                   product_id INTEGER REFERENCES tb_product(id),
    category_id INTEGER REFERENCES tb_category(id),
    PRIMARY KEY (product_id, category_id)
    );
