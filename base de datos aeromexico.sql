create database aeromexico;
use aeromexico;
create table mexico(
mexico_id int(10) auto_increment not null primary key,
destination varchar(50),
city varchar(50),
state_name varchar(10),
fligth_cost double 
);

insert into mexico(destination,city,state_name,fligth_cost)values
('TeotiHUAcan','Mexico','EM',null),
('MONTE alban','Oaxaca','Oax','872.30'),
('seven volcanos','Valle Santiago','Gto','1200.52'),
('las MOMIAS',null,'Gto','988.00');
SELECT 
    UPPER(destination), LOWER(destination)
FROM
    mexico;
SELECT 
    CONCAT(destination, state_name) AS trip
FROM
    mexico;
SELECT 
    CONCAT(destination, 'is in', state_name) AS sentence
FROM
    mexico;
SELECT 
    destination, CONVERT( fligth_cost , CHAR) AS price
FROM
    mexico
WHERE
    fligth_cost IS NOT NULL;
SELECT 
    destination, CONCAT('$', FORMAT(fligth_cost, 2)) AS price
FROM
    mexico
WHERE
    fligth_cost IS NOT NULL;