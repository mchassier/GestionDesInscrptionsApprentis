--Script

create table ville(
	vil_id serial constraint pk_ville primary key,
	vil_cp char(5) not null,
	vil_libelle varchar(50) not null
);

create index tri_ville on ville (vil_cp asc);

create table apprenti(
	app_id serial constraint pk_apprenti primary key,
	app_nom varchar(30) not null,
	app_prenom varchar(30) not null,
	app_rue varchar(50) not null,
	app_complement varchar(50),
	app_datenaissance date not null,
	app_prefixe_tel char(2) not null,
	app_telephone char(9) not null,
	app_mail varchar(100) not null,
	app_ville int constraint fk_apprenti_ville references ville(vil_id) not null,
	app_lieu_naissance int constraint fk_apprenti_lieu references ville(vil_id) not null
)

