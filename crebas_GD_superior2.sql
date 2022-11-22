/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     09/06/2022 18:07:47                          */
/*==============================================================*/


if exists (select 1
            from  sysindexes
           where  id    = object_id('ADMISION_EJERCITO')
            and   name  = 'RELATIONSHIP_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index ADMISION_EJERCITO.RELATIONSHIP_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ADMISION_EJERCITO')
            and   name  = 'RELATIONSHIP_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index ADMISION_EJERCITO.RELATIONSHIP_10_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ADMISION_EJERCITO')
            and   type = 'U')
   drop table ADMISION_EJERCITO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ASPIRANTES')
            and   type = 'U')
   drop table ASPIRANTES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BATALLONES')
            and   type = 'U')
   drop table BATALLONES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BATALLON_ENTRENAMIENTO')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index BATALLON_ENTRENAMIENTO.RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BATALLON_ENTRENAMIENTO')
            and   name  = 'RELATIONSHIP_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index BATALLON_ENTRENAMIENTO.RELATIONSHIP_17_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BATALLON_ENTRENAMIENTO')
            and   type = 'U')
   drop table BATALLON_ENTRENAMIENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CASTIGOS')
            and   name  = 'RELATIONSHIP_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index CASTIGOS.RELATIONSHIP_16_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CASTIGOS')
            and   name  = 'RELATIONSHIP_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index CASTIGOS.RELATIONSHIP_14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CASTIGOS')
            and   type = 'U')
   drop table CASTIGOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ENTRENAMIENTOS')
            and   type = 'U')
   drop table ENTRENAMIENTOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LINE_MISIONES')
            and   name  = 'RELATIONSHIP_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index LINE_MISIONES.RELATIONSHIP_6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LINE_MISIONES')
            and   name  = 'RELATIONSHIP_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index LINE_MISIONES.RELATIONSHIP_7_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LINE_MISIONES')
            and   type = 'U')
   drop table LINE_MISIONES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MILITARES')
            and   name  = 'RELATIONSHIP_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index MILITARES.RELATIONSHIP_18_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MILITARES')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index MILITARES.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MILITARES')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index MILITARES.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MILITARES')
            and   type = 'U')
   drop table MILITARES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MISIONES')
            and   type = 'U')
   drop table MISIONES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRUEBA_RANGOS')
            and   name  = 'RELATIONSHIP_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRUEBA_RANGOS.RELATIONSHIP_12_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRUEBA_RANGOS')
            and   name  = 'RELATIONSHIP_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRUEBA_RANGOS.RELATIONSHIP_11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRUEBA_RANGOS')
            and   type = 'U')
   drop table PRUEBA_RANGOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RANGOS')
            and   type = 'U')
   drop table RANGOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SALIDAS')
            and   name  = 'RELATIONSHIP_19_FK'
            and   indid > 0
            and   indid < 255)
   drop index SALIDAS.RELATIONSHIP_19_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SALIDAS')
            and   type = 'U')
   drop table SALIDAS
go

/*==============================================================*/
/* Table: ADMISION_EJERCITO                                     */
/*==============================================================*/
create table ADMISION_EJERCITO (
   ID_ADMISION          int                  not null,
   ID_ASPIRANTE         int                  not null,
   ID_SOLDADO           int                  null,
   FECHA_ADMIS          datetime             null,
   ESTADO_ADMIS         varchar(20)          null,
   constraint PK_ADMISION_EJERCITO primary key nonclustered (ID_ADMISION)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on ADMISION_EJERCITO (
ID_ASPIRANTE ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on ADMISION_EJERCITO (
ID_SOLDADO ASC
)
go

/*==============================================================*/
/* Table: ASPIRANTES                                            */
/*==============================================================*/
create table ASPIRANTES (
   ID_ASPIRANTE         int                  not null,
   NOMBRE_ASPIRANTE     varchar(40)          null,
   APELLIDO_ASPIRANTE   varchar(40)          null,
   FECHA_NACIMIENTO     datetime             null,
   constraint PK_ASPIRANTES primary key nonclustered (ID_ASPIRANTE)
)
go

/*==============================================================*/
/* Table: BATALLONES                                            */
/*==============================================================*/
create table BATALLONES (
   ID_BATALLON          int                  not null,
   ALIAS_BATALLON       varchar(10)          null,
   NOMBRE_S_MANDO       varchar(20)          null,
   NUMERO_BATALLON      int                  null,
   constraint PK_BATALLONES primary key nonclustered (ID_BATALLON)
)
go

/*==============================================================*/
/* Table: BATALLON_ENTRENAMIENTO                                */
/*==============================================================*/
create table BATALLON_ENTRENAMIENTO (
   ID_BATALLON          int                  not null,
   ID_ENTRENAMIENTO     int                  not null,
   constraint PK_BATALLON_ENTRENAMIENTO primary key nonclustered (ID_BATALLON, ID_ENTRENAMIENTO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on BATALLON_ENTRENAMIENTO (
ID_ENTRENAMIENTO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on BATALLON_ENTRENAMIENTO (
ID_BATALLON ASC
)
go

/*==============================================================*/
/* Table: CASTIGOS                                              */
/*==============================================================*/
create table CASTIGOS (
   ID_CASTIGO           int                  not null,
   ID_SOLDADO           int                  not null,
   MIL_ID_SOLDADO       int                  not null,
   FECHA_I_CASTIGO      datetime             null,
   FECHA_F_CASTIGO      datetime             null,
   DESCRIP_CASTIGO      varchar(30)          null,
   constraint PK_CASTIGOS primary key nonclustered (ID_CASTIGO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on CASTIGOS (
ID_SOLDADO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on CASTIGOS (
MIL_ID_SOLDADO ASC
)
go

/*==============================================================*/
/* Table: ENTRENAMIENTOS                                        */
/*==============================================================*/
create table ENTRENAMIENTOS (
   ID_ENTRENAMIENTO     int                  not null,
   FECHA_I_E            datetime             null,
   FECHA_F_E            datetime             null,
   CALIFICACION         varchar(15)          null,
   constraint PK_ENTRENAMIENTOS primary key nonclustered (ID_ENTRENAMIENTO)
)
go

/*==============================================================*/
/* Table: LINE_MISIONES                                         */
/*==============================================================*/
create table LINE_MISIONES (
   ID_GRUPO             int                  not null,
   ID_SOLDADO           int                  not null,
   constraint PK_LINE_MISIONES primary key nonclustered (ID_GRUPO, ID_SOLDADO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on LINE_MISIONES (
ID_SOLDADO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on LINE_MISIONES (
ID_GRUPO ASC
)
go

/*==============================================================*/
/* Table: MILITARES                                             */
/*==============================================================*/
create table MILITARES (
   ID_SOLDADO           int                  not null,
   ID_BATALLON          int                  null,
   ID_RANGO             int                  not null,
   ID_ADMISION          int                  not null,
   constraint PK_MILITARES primary key nonclustered (ID_SOLDADO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on MILITARES (
ID_BATALLON ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on MILITARES (
ID_RANGO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on MILITARES (
ID_ADMISION ASC
)
go

/*==============================================================*/
/* Table: MISIONES                                              */
/*==============================================================*/
create table MISIONES (
   ID_GRUPO             int                  not null,
   INSTRUMENTO_USADO    varchar(40)          null,
   INSTRUMENTO_DANADO   varchar(40)          null,
   TIPO_MISION          varchar(30)          null,
   LIDER_G_MISION       varchar(20)          null,
   FECHA_INICIO_MISI    datetime             null,
   FECHA_FINAL_MISI     datetime             null,
   constraint PK_MISIONES primary key nonclustered (ID_GRUPO)
)
go

/*==============================================================*/
/* Table: PRUEBA_RANGOS                                         */
/*==============================================================*/
create table PRUEBA_RANGOS (
   ID_PRUEBA            int                  not null,
   ID_RANGO             int                  not null,
   ID_SOLDADO           int                  null,
   PRUEBA_FISICA        int                  null,
   PRUEBA_TEORICA       int                  null,
   CUMPLE               varchar(5)           null,
   constraint PK_PRUEBA_RANGOS primary key nonclustered (ID_PRUEBA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on PRUEBA_RANGOS (
ID_RANGO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on PRUEBA_RANGOS (
ID_SOLDADO ASC
)
go

/*==============================================================*/
/* Table: RANGOS                                                */
/*==============================================================*/
create table RANGOS (
   ID_RANGO             int                  not null,
   NOMBRE_RANGO         varchar(20)          null,
   constraint PK_RANGOS primary key nonclustered (ID_RANGO)
)
go

/*==============================================================*/
/* Table: SALIDAS                                               */
/*==============================================================*/
create table SALIDAS (
   ID_DSALIDA           int                  not null,
   ID_SOLDADO           int                  not null,
   DESCRIP_SALIDA       varchar(30)          null,
   FECHA_SALIDA         datetime             null,
   INVESTIGACION_SALI   varchar(40)          null,
   constraint PK_SALIDAS primary key nonclustered (ID_DSALIDA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_19_FK on SALIDAS (
ID_SOLDADO ASC
)
go

