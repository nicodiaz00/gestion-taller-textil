use master;
go
use GESTOR_TEXTIL_DB;
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
create table TRABAJOS(
Id int identity(1,1) not null,
Fecha date not null,
Id_estado int not null,
Id_Tipo int not null,
Valor decimal(10,2) not null,
constraint PK_ID_TRABAJO primary key(Id)
)
create table ESTADOS (
Id int identity(1,1) not null,
Nombre varchar (20) not null,
constraint PK_ID_ESTADO primary key(Id)
)
create table BORDADOS (
Id int identity (1,1) not null,
Posicion varchar(20) not null,
Id_Matriz int not null,
Valor decimal (10,2) not null,
constraint PK_ID_BORDADO primary key (Id)
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

