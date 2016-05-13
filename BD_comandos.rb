
------ Creando mi primera base de datos

CodeaCamp10s-Mac-mini:Primera_Base_Datos codea_mac_10$ sqlite3 base.db
-- Loading resources from /Users/codea_mac_10/.sqliterc

SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.
sqlite> CREATE TABLE usuarios (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   nombre VARCHAR(64) NOT NULL,
   ...>   apellido  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   fecha_nacimiento DATETIME NOT NULL,
   ...>   genero VARCHAR(10) NOT NULL
   ...> );
sqlite> INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino');
sqlite> SELECT * FROM usuarios
   ...> 
   ...> SELECT * FROM usuarios;
Error: near "SELECT": syntax error
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
sqlite> cat << EOF > ~/.sqliterc
   ...> .headers on
   ...> .mode column
   ...> EOF
   ...> 
   ...> SELECT * FROM usuarios;
Error: near "cat": syntax error
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
sqlite> INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino');
Error: UNIQUE constraint failed: usuarios.email
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
sqlite> ALTER usuarios
   ...> ;
Error: near "usuarios": syntax error
sqlite> ALTER TABLE usuarios
   ...> ADD apodo VARCHAR(64) NOT NULL;
Error: Cannot add a NOT NULL column with default value NULL
sqlite> ALTER TABLE usuarios
   ...> ADD apodo VARCHAR(64) NOT NULL
   ...> DEFAULT NOT NULL;
Error: near "NOT": syntax error
sqlite> .schema
CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL
);
sqlite> ALTER usuarios
   ...> ADD apodo VARCHAR(64) NOT NULL;
Error: near "usuarios": syntax error
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
sqlite> ALTER TABLE usuarios
   ...> ADD apodo VARCHAR(64) NOT NULL;
Error: Cannot add a NOT NULL column with default value NULL
sqlite> ALTER TABLE usuarios
   ...> ADD apodo VARCHAR(64) NOT NULL DEFAULT 'defaultValue';
sqlite> .schema
CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL
, apodo VARCHAR(64) NOT NULL DEFAULT 'defaultValue');
sqlite> clear
   ...> ;
Error: near "clear": syntax error
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo       
----------  ----------  ----------  ----------------  ----------------  ----------  ------------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   defaultValue
sqlite> sqlite> INSERT INTO usuarios (nombre, apellido, email, fecha_nacimiento, genero, apodo)
   ...> VALUES ('Diana', 'Ortiz','diana@hotmail.com','1991-05-27', 'femenino','Dianita');
Error: table usuarios has no column named fecha_nacimie_nacimiento
sqlite> INSERT INTO usuarios (nombre, apellido, email, fecha_nacimiento, genero, apodo)
   ...> VALUES ('Diana','Ortiz','diana@hotmail.com','1991-27-05','femenino','Dianita');
sqlite> SELECT * FROM usuarios
   ...> ;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo       
----------  ----------  ----------  ----------------  ----------------  ----------  ------------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   defaultValue
2           Diana       Ortiz       diana@hotmail.co  1991-27-05        femenino    Dianita     
sqlite> sqlite> UPDATE usuarios SET apodo = 'Charly' WHERE id = 1;
Error: near "id": syntax error
sqlite> 
sqlite> ;
sqlite> UPDATE usuarios SET apodo = 'Charly' WHERE id = 1;
sqlite> SELECT * FROM usuarios
   ...> 
   ...> ;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   Charly    
2           Diana       Ortiz       diana@hotmail.co  1991-27-05        femenino    Dianita   
sqlite> UPDATE usuarios SET apellido = 'Rivero', fecha_nacimiento = '1980-11-03' 
   ...> WHERE id = 1;
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Rivero      carlos@yahoo.com  1980-11-03        masculino   Charly    
2           Diana       Ortiz       diana@hotmail.co  1991-27-05        femenino    Dianita   
sqlite> 
