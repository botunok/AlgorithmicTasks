//заполняем Documet(думаю все перечислять не надо)
INSERT INTO Documet (code, name) VALUES (03, 'Свидетельство о рождении');
INSERT INTO Documet (code, name) VALUES (07, 'Военный билет');
INSERT INTO Documet (code, name) VALUES (08, 'Временное удостоверение, выданное взамен военного билета');
INSERT INTO Documet (code, name) VALUES (10, 'Паспорт иностранного гражданина');
INSERT INTO Documet (code, name) VALUES (21, 'Паспорт гражданина Российской Федерации');
INSERT INTO Documet (code, name) VALUES (12, 'Вид на жительство в Российской Федерации ');
INSERT INTO Documet (code, name) VALUES (13, 'Удостоверение беженца');

//заполняем user_documet
INSERT INTO user_documet (id,doc_code,doc_number,doc_date) VALUES (1,21,'12345',to_date('01.01.2020','dd.mm.yyyy'));
INSERT INTO user_documet (id,doc_code,doc_number,doc_date) VALUES (2,21,'321',to_date('01.01.2010','dd.mm.yyyy'));
INSERT INTO user_documet (id,doc_code,doc_number,doc_date) VALUES (3,07,'123',to_date('01.01.2009','dd.mm.yyyy'));
INSERT INTO user_documet (id,doc_code,doc_number,doc_date) VALUES (4,13,'111',to_date('01.01.2008','dd.mm.yyyy'));
INSERT INTO user_documet (id,doc_code,doc_number,doc_date) VALUES (5,10,'121345',to_date('01.01.2007','dd.mm.yyyy'));

//заполяем country
INSERT INTO country (code,name) VALUES (1,'Russia');
INSERT INTO country (code,name) VALUES (2,'USA');
INSERT INTO country (code,name) VALUES (3,'Ukrain');

//заполяем user
INSERT INTO user (id,first_name,office_id,second_name,middle_name,position,phone,id_user_document,citizenship_code,is_identified)
VALUES (1,'Pupkin',1,'Vasya','Vladimirovich','admin',8499,1,1,true);
INSERT INTO user (id,first_name,office_id,second_name,middle_name,position,phone,id_user_document,citizenship_code,is_identified)
VALUES (2,'Pushkin',1,'Sergey','Sergeevich','poet',8491,2,1,true);
