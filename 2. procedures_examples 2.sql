-- Procedimiento almacenado listar productos
CREATE PROCEDURE PA_Listar_productos3
@valor int(5)
AS
  select cod_prod, desc_prod, valor_prod
   from productos
   where valor_prod > @valor
   order by valor_prod;

-- Llamado del Procedimiento

exec PA_Listar_productos3 N'600';


-- Procedimiento almacenado listar productos con LIKE
CREATE PROCEDURE PA_Listar_personalizada
@tipo_prod varchar(30)
AS
   select * from productos
   where tp_cod_tprod like @tipo_prod;

-- Llamado del Procedimiento

exec PA_Listar_personalizada 'Comidas';
execute PA_Listar_personalizada '%Be%';


-- Procedimiento almacenado Insertar Tipo Producto
CREATE PROCEDURE PA_insertar_TProducto
@parametro1 VARCHAR(30), @parametro2 INT
AS
INSERT INTO tipo_prod (cod_tprod, estado_prod)
VALUES (@parametro1, @parametro2);

-- Llamado del Procedimiento

 exec PA_insertar_TProducto 'Hogar' ,1;
 execute PA_insertar_TProducto 'Aseo' ,1;

 Select * from tipo_prod;


 -- Procedimiento almacenado Actualiazar Tipo Producto
CREATE PROCEDURE PA_actualizar_TProducto 
@Cod_prod_new VARCHAR(30), @estado_prod INT, @Cod_prod_old VARCHAR(30)
AS
UPDATE tipo_prod SET cod_tprod = @Cod_prod_new, estado_prod = @estado_prod
WHERE cod_tprod = @Cod_prod_old;

-- Llamado del Procedimiento


 exec PA_actualizar_Producto 'Aseo y Otros' ,0, 'Aseo';
 execute PA_actualizar_TProducto 'Hogar y Aseo' ,1, 'Hogares';

 -- Desactivar un Tipo de producto
 execute PA_actualizar_TProducto 'Aseo' ,0, 'Aseo'; 

  Select * from tipo_prod;

-- Consultar los Tipos de Productos Activos e Inactivo
  SELECT
 cod_tprod, estado_prod,
 CASE
    WHEN estado_prod = '1'
     THEN 'Activo'
     ELSE 'Inactivo'
     END AS estado
FROM tipo_prod;


-- Procedimiento almacenado Eliminar Tipo Producto
CREATE PROCEDURE PA_eliminar_TProducto
@Cod_prod VARCHAR(30)
AS
DELETE FROM tipo_prod
WHERE cod_tprod = @Cod_prod;

-- Llamado del Procedimiento

 exec PA_eliminar_TProducto 'Aseo';
 exececute PA_eliminar_TProducto 'Hogar y Aseo';

 Select * from tipo_prod;
