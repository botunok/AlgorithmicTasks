//заполняем Documet(думаю все перечислять не надо)
INSERT INTO Documet (code, name) VALUES (03, 'Свидетельство о рождении');
INSERT INTO Documet (code, name) VALUES (07, 'Военный билет');
INSERT INTO Documet (code, name) VALUES (08, 'Временное удостоверение, выданное взамен военного билета');
INSERT INTO Documet (code, name) VALUES (10, 'Паспорт иностранного гражданина');
INSERT INTO Documet (code, name) VALUES (21, 'Паспорт гражданина Российской Федерации');
INSERT INTO Documet (code, name) VALUES (12, 'Вид на жительство в Российской Федерации ');
INSERT INTO Documet (code, name) VALUES (13, 'Удостоверение беженца');

//заполняем user_documet
INSERT INTO user_documet (id,doc_code,first_name,second_name,middle_name,doc_number,doc_date)
VALUES (1,21,'Pupkin',1,'Vasya','Vladimirovich','12345',to_date('01.01.2020','dd.mm.yyyy'));
INSERT INTO user_documet (id,doc_code,first_name,second_name,middle_name,doc_number,doc_date)
VALUES (2,21,'Pushkin',1,'Sergey','Sergeevich','321',to_date('01.01.2010','dd.mm.yyyy'));
INSERT INTO user_documet (id,doc_code,first_name,second_name,middle_name,doc_number,doc_date) 
VALUES (3,07,'Фёдор', 'Михайлович', 'Достоевский','123',to_date('01.01.2009','dd.mm.yyyy'));
INSERT INTO user_documet (id,doc_code,first_name,second_name,middle_name,doc_number,doc_date) 
VALUES (4,13,'Лев', 'Николаевич', 'Толстой','111',to_date('01.01.2008','dd.mm.yyyy'));
INSERT INTO user_documet (id,doc_code,first_name,second_name,middle_name,doc_number,doc_date)
VALUES (5,10,'Jack', 'London','','121345',to_date('01.01.2007','dd.mm.yyyy'));

//заполяем country
INSERT INTO country (code,name) VALUES (643,'Russia');
INSERT INTO country (code,name) VALUES (840,'USA');
INSERT INTO country (code,name) VALUES (804,'Ukrain');

//заполяем user
INSERT INTO user (id,office_id,position,phone,id_user_document,citizenship_code,is_identified) VALUES (1,'admin',8499,1,643,true);
INSERT INTO user (id,office_id,position,phone,id_user_document,citizenship_code,is_identified) VALUES (2,'poet',8491,2,643,true);
INSERT INTO user (id,office_id,position,phone,id_user_document,citizenship_code,is_identified) VALUES (3,'user',8492,3,643,true);
INSERT INTO user (id,office_id,position,phone,id_user_document,citizenship_code,is_identified) VALUES (4,'manadger',8493,4,643,true);
INSERT INTO user (id,office_id,position,phone,id_user_document,citizenship_code,is_identified) VALUES (5,'director',8494,5,840,true);

//заполяем office
INSERT INTO office (id,name,address,phone,is_active,id_organization) VALUES (1,'office1','address1',8499123,true,1);
INSERT INTO office (id,name,address,phone,is_active,id_organization) VALUES (2,'office2','address2',8499124,true,1);                                          
INSERT INTO office (id,name,address,phone,is_active,id_organization) VALUES (3,'office1','address1',8499125,true,2);  
INSERT INTO office (id,name,address,phone,is_active,id_organization) VALUES (4,'office2','address2',8499126,true,2);  
                                                  
//заполяем organization
INSERT INTO organization (id,name,full_name,inn,kpp,is_active,id_head_office) VALUES (1,'organization1','full organization1',123456789,123456789,true,1);
INSERT INTO organization (id,name,full_name,inn,kpp,is_active,id_head_office) VALUES (1,'organization2','full organization2',1234567890,1234567890,true,3);  
