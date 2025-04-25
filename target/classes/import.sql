INSERT INTO `users` ( `name`, `lastname`, `email`, `password`, `username`) VALUES ('Andres', 'Frias', 'afrias@gmail.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'admin');
INSERT INTO `users` ( `name`, `lastname`, `email`, `password`, `username`) VALUES ('Jesus', 'Guzman', 'jesus@gmail.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'jguzman');
INSERT INTO `users` ( `name`, `lastname`, `email`, `password`, `username`) VALUES ('John', 'Doe', 'jdoe@gmail.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'jdoe');
INSERT INTO `users` ( `name`, `lastname`, `email`, `password`, `username`) VALUES ('Jane', 'Doe', 'jadoe@gmail.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'jadoe');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Carlos', 'Ramírez', 'carlos.ramirez@example.com', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'carlitos89');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Lucía', 'Fernández', 'lucia.fernandez@example.com', 'mypassword', 'lufer23');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('John', 'Smith', 'john.smith@example.com', 'qwerty', 'jsmith');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Ana', 'González', 'ana.g@example.com', 'abc12345', 'anagon');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Miguel', 'Torres', 'miguel.t@example.com', 'm1guel2024', 'mtorres');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Sofía', 'Martínez', 'sofia.martinez@example.com', 'sofipass', 'sofmart');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Pedro', 'Almonte', 'pedro.almonte@example.com', 'p3dr0pass', 'pedroalm');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('María', 'Lopez', 'maria.lopez@example.com', 'maria2025', 'mlopez25');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Andrés', 'Gómez', 'andres.gomez@example.com', 'gomezpass', 'andgomez');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Laura', 'Morales', 'laura.morales@example.com', 'laumoral3s', 'laumora');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('David', 'Reyes', 'david.reyes@example.com', 'd4vidr3y', 'dreyes');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Camila', 'Vargas', 'camila.vargas@example.com', 'camilapw', 'cvargas');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Sebastián', 'Mena', 'sebastian.mena@example.com', 'sebasmen123', 'smena');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Valentina', 'Cruz', 'valentina.cruz@example.com', 'val3cruz', 'vcruz');
INSERT INTO `users` (`name`, `lastname`, `email`, `password`, `username`) VALUES ('Jorge', 'Castillo', 'jorge.castillo@example.com', 'castilloj', 'jcasti');

INSERT INTO `roles` (`name`) VALUES ('ROLE_USER');
INSERT INTO `roles` (`name`) VALUES ('ROLE_ADMIN');

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (1, 2);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (2, 1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (3, 1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (4, 1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (5, 1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (5, 2);
