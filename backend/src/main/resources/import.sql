INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');

INSERT INTO tb_user (name, email, password) VALUES ('Erick Oliveira', 'erick@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Silva', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Pedro Mário', 'pedro@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('SpringBoot', 'https://devkico.itexto.com.br/wp-content/uploads/2014/08/spring-boot-project-logo.png', 'https://images.velog.io/images/lsb156/post/28ff204a-5ef1-4e25-915a-5afc3984c018/2574193B5944E17A26.png');
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('HTML', 'https://images.velog.io/images/lsb156/post/28ff204a-5ef1-4e25-915a-5afc3984c018/2574193B5944E17A26.png', 'https://images.velog.io/images/lsb156/post/28ff204a-5ef1-4e25-915a-5afc3984c018/2574193B5944E17A26.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2020-07-14T10:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2020-07-14T10:00:00Z', 2);

INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Trilha de Aulas', 'Certificado 160h', 1, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 1, 'tkh', 1)