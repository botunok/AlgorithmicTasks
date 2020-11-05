create table Document(
    id number (15) PRIMARY KEY AUTO_INCREMENT,
    code number (15),
    name varchar(50) NOT NULL
);

create table User_document(
    id number (15) PRIMARY KEY AUTO_INCREMENT,
    doc_id number (15) NOT NULL,
    first_name varchar (50) NOT NULL,
    second_name varchar (50),
    middle_name varchar (50),
    doc_number varchar (50) NOT NULL,
    doc_date date,
    CONSTRAINT fk_doc_code FOREIGN KEY (doc_code) REFERENCES Document(code)
);

create table Country(
    id number (15) PRIMARY KEY AUTO_INCREMENT,
    code number (15),
    name varchar (50) NOT NULL,
    CONSTRAINT pk_id PRIMARY KEY (id)
);

create table User(
    id number (15) PRIMARY KEY AUTO_INCREMENT,
    office_id number (15) NOT NULL,
    position varchar (50) NOT NULL,
    phone number (15), 
    id_user_document number (15),
    country_id number (15),
    is_identified boolean,
    CONSTRAINT fk_office_id FOREIGN KEY (office_id) REFERENCES office (id),
    CONSTRAINT fk_id_user_document FOREIGN KEY (id_user_document) REFERENCES User_document(id),
    CONSTRAINT fk_citizenship_code FOREIGN KEY (citizenship_code) REFERENCES Country(code)
);

create table Organization(
      id number (15) PRIMARY KEY AUTO_INCREMENT,
      name varchar2(50) NOT NULL,
      full_name varchar2(50),
      inn number (15),
      kpp number (15),
      is_active BOOLEAN,
      id_head_office number (15),
      CONSTRAINT fk_id_head_office FOREIGN KEY (id_head_office) REFERENCES Office(id)
);

create table Office(
      id number (15) PRIMARY KEY AUTO_INCREMENT,
      name varchar2 (50) NOT NULL,
      address varchar2 (50) NOT NULL,
      phone number (15),
      is_active BOOLEAN,
      id_organization number (15),
      CONSTRAINT fk_id_organization FOREIGN KEY (id_organization) REFERENCES Organization(id)
);

//индексы по ВК
CREATE INDEX IX_Office_id_organization ON Office (id_organization) TABLESPACE emp_index_01;
CREATE INDEX IX_User_office_id ON User (office_id) TABLESPACE emp_index_01;
CREATE INDEX IX_User_id_user_document ON User (id_user_document) TABLESPACE emp_index_01;
CREATE INDEX IX_User_country_id ON User (country_id) TABLESPACE emp_index_01;
CREATE INDEX IX_User_document_doc_code ON User_document (doc_code) TABLESPACE emp_index_01;

//индексы по уникальным полям
CREATE UNIQUE INDEX UX_Organization_inn  ON Organization (inn);
CREATE UNIQUE INDEX UX_Organization_kpp  ON Organization (kpp);
CREATE UNIQUE INDEX UX_Country_code   ON Country (code );
CREATE UNIQUE INDEX UX_Country_name   ON Country (name);
CREATE UNIQUE INDEX UX_user_documet_doc_number    ON user_documet (doc_number );
CREATE UNIQUE INDEX UX_documet_code     ON documet (code  );
CREATE UNIQUE INDEX UX_documet_name      ON documet (name);
