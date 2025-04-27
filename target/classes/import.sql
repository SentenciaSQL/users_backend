INSERT INTO `users` ( `name`, `lastname`, `email`, `password`, `username`) VALUES ('Andres', 'Frias', 'afrias@gmail.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'admin');
INSERT INTO `users` ( `name`, `lastname`, `email`, `password`, `username`) VALUES ('Jesus', 'Guzman', 'jesus@gmail.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'jguzman');
INSERT INTO `users` ( `name`, `lastname`, `email`, `password`, `username`) VALUES ('John', 'Doe', 'jdoe@gmail.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'jdoe');
INSERT INTO `users` ( `name`, `lastname`, `email`, `password`, `username`) VALUES ('Jane', 'Doe', 'jadoe@gmail.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'jadoe');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Carlos', 'Ramírez', 'carlos.ramirez@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'carlitos89');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Lucía', 'Fernández', 'lucia.fernandez@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'lufer23');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('John', 'Smith', 'john.smith@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'jsmith');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Ana', 'González', 'ana.g@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'anagon');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Miguel', 'Torres', 'miguel.t@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'mtorres');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Sofía', 'Martínez', 'sofia.martinez@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'sofmart');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Pedro', 'Almonte', 'pedro.almonte@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'pedroalm');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('María', 'Lopez', 'maria.lopez@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'mlopez25');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Andrés', 'Gómez', 'andres.gomez@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'andgomez');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Laura', 'Morales', 'laura.morales@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'laumora');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('David', 'Reyes', 'david.reyes@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'dreyes');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Camila', 'Vargas', 'camila.vargas@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'cvargas');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Sebastián', 'Mena', 'sebastian.mena@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'smena');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Valentina', 'Cruz', 'valentina.cruz@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'vcruz');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Jorge', 'Castillo', 'jorge.castillo@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'jcasti');

INSERT INTO `roles` (`name`) VALUES ('ROLE_USER');
INSERT INTO `roles` (`name`) VALUES ('ROLE_ADMIN');

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (1, 2);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (2, 1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (3, 1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (4, 1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (5, 1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (5, 2);
