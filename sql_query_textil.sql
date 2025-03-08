use master;

go
use TallerTextil_DB;
go
--create table CLIENTES (
--Id int identity(1,1) not null,
--Nombre varchar(10) not null,
--Apellido varchar(15) not null,
--Dni varchar(8) not null,
--Email varchar(100),
--Telefono varchar(15),
--constraint PK_ID_CLIENTE primary key(Id)

--);

--create table IMAGENES (
--Id int identity(1,1) not null,
--Nombre varchar(50) not null,
--Archivo varbinary(max) not null,
--constraint PK_ID_IMAGEN primary key(Id)
--)
--create table TRABAJOS(
	--Id int identity(1,1) not null,
	--Fecha date not null,
	--Id_estado int not null,
	--Id_Tipo int not null,
	--Valor decimal(10,2) not null,
	--constraint PK_ID_TRABAJO primary key(Id)
--)
create table ESTADOS (
	Id int identity(1,1) not null,
	Nombre varchar (20) not null,
	constraint PK_ID_ESTADO primary key(Id)
)

create table IMAGENES (
	Id int identity (1,1) not null,
	Nombre varchar(50) not null,
	Archivo VARBINARY (MAX) not null,
	constraint PK_ID_IMAGEN primary key (Id)
)
create table MATRICES (
	Id int identity (1,1) not null,
	Nombre varchar (50) not null,
	archivo_dst VARBINARY(MAX) not null,
	Id_imagen int not null,
	constraint PK_ID_MATRIZ primary key(Id),
	constraint FK_ID_IMAGEN foreign key (Id_imagen) REFERENCES IMAGENES (Id)
	)
create table BORDADOS (
	Id int identity (1,1) not null,
	Posicion varchar(20) not null,
	Id_Matriz int not null,
	Valor decimal (10,2) not null,
	constraint PK_ID_BORDADO primary key (Id),
	constraint FK_ID_MATRIZ foreign key (Id_Matriz) references	MATRICES (Id)
)
create table CONFECCIONES (
	Id int identity (1,1) not null,
	Valor decimal (10,2) not null,
	constraint PK_ID_CONFECCION primary key(Id)
)
create table TELAS (
	Id int identity(1,1) not null,
	Nombre varchar (20) not null,
	Color varchar (20) not null,
	constraint PK_ID_TELA primary key (Id)
)


create table PRENDAS (
	Id int identity(1,1) not null,
	Id_tipo int not null,
	Id_tela int not null,
	Id_talle int not null,
	Valor decimal(10,2) not null,
	Descripcion varchar(100),
	constraint PK_ID_PRENDA primary key(Id),
	constraint FK_ID_TELA foreign key (Id_tela) REFERENCES TELAS (Id)
)
CREATE TABLE CONFECCION_PRENDA (
    Id INT IDENTITY (1,1) NOT NULL,
    Id_confeccion INT NOT NULL,
    Id_prenda INT NOT NULL,
    CONSTRAINT PK_CONFECCION_PRENDA PRIMARY KEY (Id),
    CONSTRAINT FK_ID_CONFECCION FOREIGN KEY (Id_confeccion) REFERENCES CONFECCIONES (Id),
    CONSTRAINT FK_ID_PRENDA FOREIGN KEY (Id_prenda) REFERENCES PRENDAS (Id)
);


