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

INSERT INTO tb_offer (course_id, edition, start_Moment, end_Moment) VALUES (1, '1.0', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2023-07-14T10:00:00Z');
INSERT INTO tb_offer (course_id, edition, start_Moment, end_Moment) VALUES (2, '1.0', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2023-07-14T10:00:00Z');

INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Trilha de Aulas', 'Certificado 160h', 1, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 1, 'tkh', 1)
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Material de apoio', '* Calendário e material didático', 2, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 1, 'wbg', 1)
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Trilha de Aulas', 'Certificado 260h', 1, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 4, 'wbg', 2)

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Introdução', 'Descrição do capitulo e o que será ensinado', 1, 'https://images.velog.io/images/lsb156/post/28ff204a-5ef1-4e25-915a-5afc3984c018/2574193B5944E17A26.png', 1, null)
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo - 1', 'Descriçaõ do capitulo e o que será ensinado', 2, 'https://images.velog.io/images/lsb156/post/28ff204a-5ef1-4e25-915a-5afc3984c018/2574193B5944E17A26.png', 1, 1)
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Introdução', 'Descrição do capitulo e o que será ensinado', 1, 'https://images.velog.io/images/lsb156/post/28ff204a-5ef1-4e25-915a-5afc3984c018/2574193B5944E17A26.png', 2, null)
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo - 1', 'Descriçaõ do capitulo e o que será ensinado', 2, 'https://images.velog.io/images/lsb156/post/28ff204a-5ef1-4e25-915a-5afc3984c018/2574193B5944E17A26.png', 2, 2)

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-07-14T10:00:00Z', null, true, false)
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-07-14T10:00:00Z', null, true, false)

INSERT INTO tb_lesson (section_id, title, position) VALUES (1, 'Boas-vindas e recados', 1)
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Boas-vindas e apresentação do capitulo', 'https://youtu.be/sVx1mJDeUjY?list=PLkToYzF_BuBCsnKU5_4Zha_KzJ1anNkRg')

INSERT INTO tb_lesson (section_id, title, position) VALUES (1, '04-02 Visão geral do sistema DSLearn', 2)
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '04-02 Visão geral do sistema DSLearn - atividades', 'https://youtu.be/sVx1mJDeUjY?list=PLkToYzF_BuBCsnKU5_4Zha_KzJ1anNkRg')

INSERT INTO tb_lesson (section_id, title, position) VALUES (1, 'Atividade para entregar', 3)
INSERT INTO tb_task (id, description, question_Count, approval_Count, weigth, due_Date) VALUES (3, 'Primeira tarefas do capitulo', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z')

INSERT INTO tb_deliver (user_id, offer_id, lesson_id, uri, moment, status, feedback, correct_Count) VALUES (1, 1, 1, 'https://github.com/', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', 1, 'Comentario da lição', 10)
INSERT INTO tb_deliver (user_id, offer_id, lesson_id, uri, moment, status, feedback, correct_Count) VALUES (1, 1, 2, 'https://github.com/', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', 2, 'Comentario da lição', 10)

INSERT INTO tb_notification (user_id, text, moment, read, route) VALUES (1, 'Tarefa Avaliada!', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', 1, '')
INSERT INTO tb_notification (user_id, text, moment, read, route) VALUES (2, 'Tarefa Rejeitada!', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', 1, '')
INSERT INTO tb_notification (user_id, text, moment, read, route) VALUES (2, 'Tarefa Avaliada!', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z', 1, '')

INSERT INTO tb_topic (author_id, offer_id, lesson_id, answer_id, title, body, moment) VALUES (1, 1, 1, null, 'Erro a rodar o projeto erro: xxxxxx', 'Mensagem de erro', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z')
INSERT INTO tb_topic (author_id, offer_id, lesson_id, answer_id, title, body, moment) VALUES (2, 1, 2, null, 'Erro a rodar o projeto erro: xxxxxx', 'Mensagem de erro', TIMESTAMP WITH TIME ZONE '2022-07-14T10:00:00Z')