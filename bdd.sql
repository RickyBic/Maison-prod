create table users(
    idUser serial PRIMARY KEY,
    nom varchar(50),
    mdp varchar(50)
);

create table sexe(
    idSexe serial PRIMARY KEY,
    nom varchar(6)
);

create table acteur(
    idActeur serial PRIMARY KEY,
    nom varchar(50),
    idSexe int,
    nomImage text,

    FOREIGN KEY (idSexe) REFERENCES sexe(idSexe) 
);

create table emotion(
    idEmotion serial PRIMARY KEY,
    nom text
);

create table geste(
    idGeste serial PRIMARY KEY,
    nom text
);

create table projet(
    idProjet serial PRIMARY KEY,
    nom text,
    nomImage text,
    synopsis text
);

create table categoriePlateau(
    idCategoriePlateau serial PRIMARY KEY,
    nom text
);

create table plateau(
    idPlateau serial PRIMARY KEY,
    nom text,
    description text,
    nomImage text, 
    idProjet int,
    idCategoriePlateau int,

    FOREIGN KEY (idCategoriePlateau) REFERENCES categoriePlateau(idCategoriePlateau),
    FOREIGN KEY (idProjet) REFERENCES projet(idProjet)
);

create table scene(
    idScene serial PRIMARY KEY,
    nom text,
    duree int,
    idPlateau int,

    FOREIGN KEY (idPlateau) REFERENCES plateau(idPlateau)
);

create table action(
    idAction serial PRIMARY KEY,
    nom text,
    scenario text,
    idScene int,

    FOREIGN KEY (idScene) REFERENCES scene(idScene)
);

create table details_action(
    idDetails_action serial PRIMARY KEY,
    idAction int,
    idActeur int,
    phrase text,
    idEmotion int,
    idGeste int,

    FOREIGN KEY (idAction) REFERENCES action(idAction),
    FOREIGN KEY (idActeur) REFERENCES acteur(idActeur),
    FOREIGN KEY (idEmotion) REFERENCES emotion(idEmotion),
    FOREIGN KEY (idGeste) REFERENCES geste(idGeste)
);