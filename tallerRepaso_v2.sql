create database votaciones2503816;
show databases;
use votaciones2503816;


create table Genero(
idGenero int primary key,
nomGenero varchar(20),
estadoG bool);


create table Jornada(
idJornada int primary key,
nomJornada varchar(15),
estadoJ bool);


create table TipoDocumento(
idTipoDoc int primary key,
nomTipoDoc varchar(25),
estadoTD bool);


create table TipoMiembro(
idTipoMiembro int primary key,
nomTipoMiembro varchar(15),
estadoTM bool);


create table Curso(
idCurso int primary key,
nomCurso int(4),
estadoCu bool);


create table Consejo(
idConsejo int primary key,
nomConsejo varchar(20),
estadoCo bool);


create table Cargo(
idCargo int primary key,
nomCargo varchar(15),
idConsejoFk int,
estadoC bool,
foreign key (idConsejoFk) references Consejo(idConsejo));


create table Eleccion(
idEleccion int primary key,
fechaEleccion date,
anioEleccion year,
estadoEL bool);


create table Usuario(
idUsuario int primary key,
noDocUsuario double,
idTipoDocFK int,
nombreUsuario varchar(25),
apellidoUsuario varchar(25),
idGeneroFK int,
fechaNacUsuario date,
emailUsuario varchar(30),
passwordUsuario varchar(30),
fotoUsuario blob,
idjornadaFK int,
idTipoMiembroFK int,
idCursoFK int,
estadoU bool,
foreign key (idTipoDocFK) references TipoDocumento(idTipoDoc),
foreign key (idGeneroFK) references Genero(idGenero),
foreign key (idjornadaFK) references Jornada(idJornada),
foreign key (idTipoMiembroFK) references TipoMiembro(idTipoMiembro),
foreign key (idCursoFK) references Curso(idCurso));


create table Postulacion_candidato(
idPostCandidato int primary key,
idUsuarioFk int,
idEleccionFk int,
idCargoFK int,
propuestas varchar (80),
totalVotos int,
estadoCan bool,
foreign key (idUsuarioFk) references Usuario(idUsuario),
foreign key (idEleccionFk) references Eleccion(idEleccion),
foreign key (idCargoFK) references Cargo(idCargo));


create table Votacion(
idVotacion int primary key,
horaVotacion time,
idUsuarioVotanteFk int,
idPostCandidatoFK int,
estadoV bool,
foreign key (idUsuarioVotanteFk) references Usuario(idUsuario),
foreign key (idPostCandidatoFK) references Postulacion_candidato(idPostCandidato));


#insert de la tabla Genero

insert into Genero values(1,"Femenino",true);
insert into Genero values(2,"Masculino",true);

#insert de la tabla Jornada

insert into Jornada values(1,"Mañana",true);
insert into Jornada values(2,"Tarde",true);
insert into Jornada values(3,"Noche",true);

#insert de la tabla TipoDocumento

insert into TipoDocumento values(1,"Tarjeta de identidad",true);
insert into TipoDocumento values(2,"Cedula de ciudadania",true);
insert into TipoDocumento values(3,"Cedula extranjeria",true);
insert into TipoDocumento values(4,"Pasaporte",true);
insert into TipoDocumento values(5,"Nuip",false);

#insert de la tabla TipoMiembro
 
insert into TipoMiembro values(1,"Estudiante",true);
insert into TipoMiembro values(2,"Profesor",true);
insert into TipoMiembro values(3,"Acudiente",true);

#insert de la tabla Curso

insert into Curso values(1,901,true);
insert into Curso values(2,902,true);
insert into Curso values(3,1001,true);
insert into Curso values(4,1002,true);
insert into Curso values(5,1003,true);
insert into Curso values(6,1101,true);
insert into Curso values(7,1102,true);
insert into Curso values(8,1103,true);

#insert de la tabla Consejo

insert into Consejo values(1,"Concejo Academico",true);
insert into Consejo values(2,"Consejo Directivo",true);
insert into Consejo values(3,"Consejo Convivencia",true);

#insert de la tabla Cargo

insert into Cargo values(1,"Personero",1,true);
insert into Cargo values(2,"Contralor",1,true);
insert into Cargo values(3,"Cabildante",1,true);

#insert de la tabla Elección

insert into Eleccion values(1,'2020-04-20','2020',true);
insert into Eleccion values(2,'2019-04-15','2019',true);
insert into Eleccion values(3,'2019-04-12','2019',false);
insert into Eleccion values(4,'2018-04-14','2018',true);
insert into Eleccion values(5,'2017-04-12','2017',true);

#insert de la tabla Usuario

insert into Usuario values(1,1,1,"VOTO","BLANCO",2,null,null,null,null,1,1,3,true);
insert into Usuario values(2,1010123456,1,"DAVID SANTIAGO","LÓPEZ MORA",2,'2004-10-11',"davidLopez456@hotmail.com","David2004",null,1,1,1,true);
insert into Usuario values(3,1010123789,1,"LAURA MILENA","GOMEZ BONILLA",1,'2004-03-17',"lauragomez@gmail.com","Gomez2004",null,1,1,1,true);
insert into Usuario values(4,1010123741,1,"DIEGO FERNANDO","CAÑON VARGAS",2,'2003-05-20',"diegocanon@hotmail.com","Diego2003",null,1,1,1,true);
insert into Usuario values(5,1010123852,1,"TATIANA","VARGAS CABRERA",1,'2003-11-28',"tatacabrera@gmail.com","Cabrera2003",null,1,1,3,true);
insert into Usuario values(6,1010123963,1,"LEYDY KATHERINE","FERNANDEZ RODRIGUEZ",1,'2004-06-28',"leydy2004@gmail.com","Leydy2004",null,1,1,4,true);
insert into Usuario values(7,1010123654,2,"MAURICIO","BERMUDEZ AMAYA",2,'2002-01-26',"maobermudez@gmail.com","Amaya2002",null,1,1,4,true);
insert into Usuario values(8,1010741258,1,"ANDRES FELIPE","RODRIGUEZ PEREZ",2,'2004-03-23',"andyrodriguez@gmail.com","Arodriguez2004",null,1,1,3,true);
insert into Usuario values(9,1010236859,1,"MARIA ANGÉLICA","TRIVIÑO LATORRE",1,'2002-02-04',"angelicatri@gmail.com","Trivino2002",null,1,1,3,true);
insert into Usuario values(10,1010236963,1,"GENARO","VASQUEZ RODRIGUEZ",2,'2002-11-14',"gevasquez@gmail.com","Vasquez123",null,1,1,3,false);

#insert de la tabla Postulacion_candidato

insert into Postulacion_candidato values(1,1,1,1,"Mejorar entrega refrigerios, Alargar descansos",0,true);
insert into Postulacion_candidato values(2,5,1,1,"Mejorar entrega refrigerios, Alargar descansos",0,true);
insert into Postulacion_candidato values(3,7,1,1,"Mejorar sala de informática,Construir piscina",0,true);

#insert de la tabla Votación

insert into Votacion values(1,'12:08:15',1,1,true);
insert into Votacion values(2,'12:12:35',2,3,true);
insert into Votacion values(3,'12:14:18',3,2,true);
insert into Votacion values(4,'12:15:58',4,2,true);
insert into Votacion values(5,'12:18:02',5,3,true);
insert into Votacion values(6,'12:24:22',6,3,true);
insert into Votacion values(7,'12:28:02',7,3,true);
insert into Votacion values(8,'12:30:14',8,2,true);
insert into Votacion values(9,'12:40:20',9,2,true);
insert into Votacion values(10,'12:45:20',10,2,true);

#1 Consulta de consejo,cargo y estado

select nomConsejo,nomCargo, case estadoCo when 1 then 'Activo' else 'Inactivo' end as estadoCo
from Consejo,Cargo where idConsejo=idConsejoFK;

#2 Consulta de consejo,cargo y estado con campos vacios

select idConsejo,nomConsejo,nomCargo,estadoC
from Consejo LEFT JOIN Cargo ON idConsejo = idConsejoFk
ORDER BY nomConsejo ASC;

#3 Consulta de usuario con su jornada,tipo de miembro y curso

select idUsuario,nombreUsuario,idJornadaFK,idTipoMiembroFK,idCursoFK from Usuario;

#4 Consulta de Cantidad de votos

select idPostCandidatoFK, count(*) as 'Cantidad Votos' FROM Votacion group by idPostCandidatoFK;


/*Procedimientos_Almacenados_PA*/

DELIMITER $$
CREATE PROCEDURE PAConxNombreJornada(IN PnomJ varchar (30))
BEGIN 
SELECT*FROM Jornada WHERE nomJornada=PnomJ;
END$$

DELIMITER ;

CALL PAConxNombreJornada('tarde');

DELIMITER $$ 
CREATE PROCEDURE PAEdadUsuario(IN PidUsuario int, OUT Pedad int)
BEGIN
select year (CURDATE())-year(fechaNacUsuario)
from Usuario
where idUsuario=PidUsuario
INTO Pedad;
end $$

DELIMITER ;

CALL PAEdadUsuario(2,@Pedad);
select @Pedad;


DELIMITER $$

#Registrar un eleccion

DELIMITER $$

CREATE PROCEDURE RegistrarEleccion(
    IN p_fechaEleccion DATE,
    IN p_anioEleccion YEAR
)
BEGIN
    INSERT INTO Eleccion (idEleccion,fechaEleccion, anioEleccion, estadoEL)
    VALUES (p_fechaEleccion, p_anioEleccion, 1);
END $$

DELIMITER ;

CALL RegistrarEleccion('2021-04-20','2021');
select * from eleccion; 


#Actualizar fecha de eleccion

DELIMITER $$

CREATE PROCEDURE ActualizarFechaEleccion(
    IN p_idEleccion INT,
    IN p_nuevaFechaEleccion DATE
)
BEGIN
    UPDATE Eleccion
    SET fechaEleccion = p_nuevaFechaEleccion
    WHERE idEleccion = p_idEleccion;
END $$

DELIMITER ;

CALL ActualizarFechaEleccion(p_idEleccion, p_nuevaFechaEleccion);


# Cambiar el estado de una elección

DELIMITER $$

CREATE PROCEDURE CambiarEstadoEleccion(
    IN p_idEleccion INT,
    IN p_nuevoEstado BOOLEAN
)
BEGIN
    UPDATE Eleccion
    SET estadoEL = p_nuevoEstado
    WHERE idEleccion = p_idEleccion;
END $$

DELIMITER ;

CALL CambiarEstadoEleccion(p_idEleccion, p_nuevoEstado);


#Consulatar usuario

DELIMITER $$

CREATE PROCEDURE ConsultarUsuario(
    IN p_idUsuario INT
)
BEGIN
    SELECT U.*, TD.nomTipoDoc, G.nomGenero, J.nomJornada, TM.nomTipoMiembro, C.nomCurso
    FROM Usuario U
    INNER JOIN TipoDocumento TD ON U.idTipoDocFK = TD.idTipoDoc
    INNER JOIN Genero G ON U.idGeneroFK = G.idGenero
    INNER JOIN Jornada J ON U.idjornadaFK = J.idJornada
    INNER JOIN TipoMiembro TM ON U.idTipoMiembroFK = TM.idTipoMiembro
    INNER JOIN Curso C ON U.idCursoFK = C.idCurso
    WHERE U.idUsuario = p_idUsuario;
END $$

DELIMITER ;

call ConsultarUsuario2(3);



# Registrar usuario 

DELIMITER $$

CREATE PROCEDURE RegistrarUsuario(
    IN p_noDocUsuario DOUBLE,
    IN p_idTipoDocFK INT,
    IN p_nombreUsuario VARCHAR(25),
    IN p_apellidoUsuario VARCHAR(25),
    IN p_idGeneroFK INT,
    IN p_fechaNacUsuario DATE,
    IN p_emailUsuario VARCHAR(30),
    IN p_passwordUsuario VARCHAR(30),
    IN p_fotoUsuario BLOB,
    IN p_idjornadaFK INT,
    IN p_idTipoMiembroFK INT,
    IN p_idCursoFK INT
)
BEGIN
    INSERT INTO Usuario (noDocUsuario, idTipoDocFK, nombreUsuario, apellidoUsuario, idGeneroFK, fechaNacUsuario, emailUsuario, passwordUsuario, fotoUsuario, idjornadaFK, idTipoMiembroFK, idCursoFK, estadoU)
    VALUES (p_noDocUsuario, p_idTipoDocFK, p_nombreUsuario, p_apellidoUsuario, p_idGeneroFK, p_fechaNacUsuario, p_emailUsuario, p_passwordUsuario, p_fotoUsuario, p_idjornadaFK, p_idTipoMiembroFK, p_idCursoFK, 1);
END $$

DELIMITER ;

CALL RegistrarUsuario(p_noDocUsuario, p_idTipoDocFK, p_nombreUsuario, p_apellidoUsuario, p_idGeneroFK, p_fechaNacUsuario, p_emailUsuario, p_passwordUsuario, p_fotoUsuario, p_idjornadaFK, p_idTipoMiembroFK, p_idCursoFK);


# Cambiar contraseña usuario

DELIMITER $$

CREATE PROCEDURE CambiarPasswordUsuario(
    IN p_idUsuario INT,
    IN p_nuevoPassword VARCHAR(30)
)
BEGIN
    UPDATE Usuario
    SET passwordUsuario = p_nuevoPassword
    WHERE idUsuario = p_idUsuario;
END $$

DELIMITER ;

CALL CambiarPasswordUsuario(p_idUsuario, p_nuevoPassword);


# Cambiar el estado de un usuario

DELIMITER $$

CREATE PROCEDURE CambiarEstadoUsuario(IN idUsuarioParam INT, IN nuevoEstadoParam BOOL)
BEGIN
    UPDATE Usuario SET estadoU = nuevoEstadoParam WHERE idUsuario = idUsuarioParam;
END $$

DELIMITER ;

CALL CambiarEstadoUsuario(idUsuarioParam, nuevoEstadoParam);


#Consultar usuario (con llaves foráneas) que tengan cédula de ciudadanía  

DELIMITER $$

CREATE PROCEDURE ConsultarUsuariosPorCedula(IN cedulaParam DOUBLE)
BEGIN
    SELECT U.*
    FROM Usuario U
    INNER JOIN TipoDocumento TD ON U.idTipoDocFK = TD.idTipoDoc
    WHERE TD.nomTipoDoc = 'Cédula de Ciudadanía' AND U.noDocUsuario = cedulaParam;
END $$

DELIMITER ;


CALL ConsultarUsuariosPorCedula(cedulaParam);

