CREATE TABLE trim_practice (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100)
);

INSERT INTO trim_practice (product_id, product_name)
VALUES
(1, '  Apple iPhone  '),
(2, '***Samsung Galaxy***'),
(3, '---Sony PlayStation---'),
(4, '   Microsoft Surface   '),
(5, '%%%Dell XPS%%%'),
(6, '*** Google Pixel ***');
