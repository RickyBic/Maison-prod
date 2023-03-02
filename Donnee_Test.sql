insert into sexe values(DEFAULT,'HOMME');
insert into sexe values(DEFAULT,'FEMME');

insert into acteur values(DEFAULT,'NITA',1,'author-2.jpg');
insert into acteur values(DEFAULT,'SAM',2,'author-1.jpg');
insert into acteur values(DEFAULT,'GOKU',1,'author-2.jpg');
insert into acteur values(DEFAULT,'DIVNO',1,'author-2.jpg');
insert into acteur values(DEFAULT,'RICKY',1,'author-2.jpg');
insert into acteur values(DEFAULT,'TIAVINA',1,'author-2.jpg');
insert into acteur values(DEFAULT,'MANITRA',1,'author-2.jpg');
insert into acteur values(DEFAULT,'MIKAIA',1,'author-2.jpg');
insert into acteur values(DEFAULT,'DASTA',1,'author-2.jpg');

insert into emotion values(DEFAULT,'JOIE');
insert into emotion values(DEFAULT,'TRISTESSE');
insert into emotion values(DEFAULT,'PEUR');
insert into emotion values(DEFAULT,'COLERE');
insert into emotion values(DEFAULT,'SURPRISE');
insert into emotion values(DEFAULT,'DEGOUT');
insert into emotion values(DEFAULT,'EMERVEILLEMENT');
insert into emotion values(DEFAULT,'TENSION');
insert into emotion values(DEFAULT,'ANXIETE');
insert into emotion values(DEFAULT,'DECEPTION');
insert into emotion values(DEFAULT,'FRUSTRATION');
insert into emotion values(DEFAULT,'NOSTALGIE');
insert into emotion values(DEFAULT,'COMPASSION');
insert into emotion values(DEFAULT,'EMPATHIE');
insert into emotion values(DEFAULT,'ENTHOUSIASME');
insert into emotion values(DEFAULT,'AMOUR');
insert into emotion values(DEFAULT,'HAINE');
insert into emotion values(DEFAULT,'DESESPOIR');
insert into emotion values(DEFAULT,'SOULAGEMENT');

insert into geste values (DEFAULT,'marcher');
insert into geste values (DEFAULT,'courir');
insert into geste values (DEFAULT,'se tenir droit');
insert into geste values (DEFAULT,'se pencher');
insert into geste values (DEFAULT,'se lever');
insert into geste values (DEFAULT,'se coucher');
insert into geste values (DEFAULT,'se mettre à genoux');
insert into geste values (DEFAULT,'se prosterner');
insert into geste values (DEFAULT,'sourire');
insert into geste values (DEFAULT,'froncer le sourcils');
insert into geste values (DEFAULT,'cligner des yeux');
insert into geste values (DEFAULT,'lever un sourcil');
insert into geste values (DEFAULT,'plisser les yeux');
insert into geste values (DEFAULT,'hausser les épaules');
insert into geste values (DEFAULT,'tirer la langue');
insert into geste values (DEFAULT,'faire un signe de la main');
insert into geste values (DEFAULT,'pointer du doigt');
insert into geste values (DEFAULT,'faire un geste de la tête');
insert into geste values (DEFAULT,'faire un signe de la croix');
insert into geste values (DEFAULT,'faire un geste de salut');
insert into geste values (DEFAULT,'tenir une arme');
insert into geste values (DEFAULT,'prendre une tasse');
insert into geste values (DEFAULT,'ouvrir une porte');
insert into geste values (DEFAULT,'utiliser un téléphone');
insert into geste values (DEFAULT,'écrire sur une feuille de papier');
insert into geste values (DEFAULT,'pleurer');
insert into geste values (DEFAULT,'rire');
insert into geste values (DEFAULT,'frissoner');
insert into geste values (DEFAULT,'trembler');
insert into geste values (DEFAULT,'crier');
insert into geste values (DEFAULT,'bâiller');
insert into geste values (DEFAULT,'faire un poing');
insert into geste values (DEFAULT,'fumer une cigarette');
insert into geste values (DEFAULT,'ajuster une cravate');
insert into geste values (DEFAULT,'frapper');
insert into geste values (DEFAULT,'donner un coup de pied');
insert into geste values (DEFAULT,'lancer un coup de poing');
insert into geste values (DEFAULT,'parer un coup');

insert into projet values (DEFAULT,'Hulk','hulk.jpeg','Le docteur Robert Bruce Banner, alias Hulk est un super-heros evoluant dans un univers Marvel de la maison edition Marvel Comics. Cree par le scenariste Stan Lee et le dessinateur Jack Kirby, le personnage de fiction apparait pour la premiere fois dans le comic book The Incredible Hulk #1 en mai 1962.');

insert into categorieplateau values (DEFAULT,'Ville');
insert into categorieplateau values (DEFAULT,'Nature');

insert into plateau values (DEFAULT,'Kananaskis, Alberta, Canada','Plateau montagneux situé dans les Rocheuses canadiennes','kananaskis.jpg',1,2);
insert into plateau values (DEFAULT,'Glen Canyon, Arizona, États-Unis','Le Plateau de Glen Canyon est représenté comme une zone désertique et aride de l Arizona','glen.jpg',1,2);
insert into plateau values (DEFAULT,'Monument Valley, Arizona, États-Unis','Le plateau est célèbre pour ses formations rocheuses rouges et brunes','monument.jpg',1,2);
insert into plateau values (DEFAULT,'San Francisco, Californie, États-Unis','Ville très urbaine et très peuplée','sanfransisco.jpg',1,1);
insert into plateau values (DEFAULT,'Gamma Base, Désert du Nevada, États-Unis','Présenté comme un complexe scientifique secret, entouré d un haut mur de sécurité','gamma.jpg',1,2);
insert into plateau values (DEFAULT,'Fort Bragg, Californie, États-Unis','Fort Bragg est montrée comme la ville où se trouve la base militaire où le père de Bruce Banner','fort.jpg',1,1);
insert into plateau values (DEFAULT,'Université de Californie à Berkeley','Montrée comme le lieu de travail de deux personnages importants','universite.jpg',1,1);
insert into plateau values (DEFAULT,'Palouse Falls, Washington, États-Unis','Le Palouse Falls est une cascade qui se trouve dans une gorge profonde creusée par la rivière Palouse','palouse.jpg',1,2);

insert into scene values (DEFAULT,'Scène 1',5,1);
insert into scene values (DEFAULT,'Scène 2',10,1);
insert into scene values (DEFAULT,'Scène 3',15,1);

insert into action values (DEFAULT,'Action 1','Nita demande à Sam de le suivre en lui tenant la main',1);
insert into action values (DEFAULT,'Action 2','Une personne frappe à la porte',1);
insert into action values (DEFAULT,'Action 3','Roger discute avec la personne derrière la porte',1);

insert into details_action values (DEFAULT,1,1,'Salut Sam, comment ça va?',1,3);

create or replace view V_details_action as 
select da.idDetails_action,da.idAction,a.nom as acteur,a.nomImage,da.phrase,e.nom as emotion,g.nom as geste from details_action as da join acteur as a on da.idActeur=a.idActeur 
join emotion as e on da.idEmotion=e.idEmotion 
join geste as g on da.idGeste=g.idGeste;

create or replace view v_planning as
select p.idplateau,p.idprojet,p.nom,sum(sc.duree) as totalduree 
from plateau as p join scene as sc 
on p.idplateau=sc.idplateau 
group by p.idplateau order by totalduree asc;