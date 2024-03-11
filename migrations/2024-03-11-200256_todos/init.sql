PRAGMA foreign_keys = ON;

insert into context values(null, '2024-03-11', '2024-03-11', 'Perso', 'Personal todos', 'yellow', 'home', 0, 0);
insert into category values(null, '2024-03-11', '2024-03-11', 'RDV', 'Personal rdv', 'orange', 'arrow', 0, 0);
insert into user values(null, '2024-03-11', '2024-03-11', 'fred', 'Fred', 'fred!', 'lego');
insert into user values(null, '2024-03-11', '2024-03-11', 'sywie', 'Sywie', 'sylvie!', 'tornado');
insert into tag values(1, '2024-03-11', '2024-03-11', 'Important', 'todo first !!!', 'red', 'warning');
insert into tag values(2, '2024-03-11', '2024-03-11', 'Leisure', 'no streeesss !!!', 'green', 'cocktail');
insert into todo values(null, '2024-03-11', '2024-03-11', 'todo', 1, 1, 1, 'My first todo !!', 'This is the first todo ever created',
'2024-06-01', '2024-12-31');
insert into assignees values(null, 1, 1);
insert into assignees values(null, 1, 2);
insert into tags values(null, 1, 1);
insert into tags values(null, 1, 3);
