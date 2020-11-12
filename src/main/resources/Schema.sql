create table Document(
    id number (15) PRIMARY KEY AUTO_INCREMENT,
    code number (15),
    name varchar(200) NOT NULL
);

create table User_document(
    id number (15) PRIMARY KEY AUTO_INCREMENT,
    doc_id number (15) NOT NULL,
    first_name varchar (50) NOT NULL,
    second_name varchar (50),
    middle_name varchar (50),
    doc_number varchar (50) NOT NULL,
    doc_date date
);

create table Country(
    id number (15) PRIMARY KEY AUTO_INCREMENT,
    code number (15),
    name varchar (50) NOT NULL
);

create table User(
    id number (15) PRIMARY KEY AUTO_INCREMENT,
    office_id number (15) NOT NULL,
    position varchar (50) NOT NULL,
    phone number (15), 
    country_id number (15),
    is_identified boolean
);

create table Organization(
      id number (15) PRIMARY KEY AUTO_INCREMENT,
      name varchar(50) NOT NULL,
      full_name varchar(50),
      inn varchar (15),
      kpp varchar (15),
      is_active BOOLEAN,
      address varchar (50) NOT NULL,
      phone number (15)
);

create table Office(
      id number (15) PRIMARY KEY AUTO_INCREMENT,
      name varchar (50) NOT NULL,
      address varchar (50) NOT NULL,
      phone number (15),
      is_active BOOLEAN,
      id_organization number (15)
);

ALTER TABLE User_document ADD CONSTRAINT fk_User_document_doc_code FOREIGN KEY (doc_id) REFERENCES Document(id); 
ALTER TABLE User ADD CONSTRAINT fk_User_country_id FOREIGN KEY (country_id) REFERENCES Country(id);
ALTER TABLE User ADD CONSTRAINT fk_User_id FOREIGN KEY (id) REFERENCES User_document(id);
ALTER TABLE User ADD CONSTRAINT fk_User_office_Id FOREIGN KEY (office_Id) REFERENCES Office(id);
ALTER TABLE Office ADD CONSTRAINT fk_Office_id_organization FOREIGN KEY (id_organization) REFERENCES Organization(id);

CREATE INDEX IX_Office_id_organization ON Office (id_organization);
CREATE INDEX IX_User_office_id ON User (office_id);
CREATE INDEX IX_User_country_id ON User (country_id);
CREATE INDEX IX_User_document_doc_id ON User_document (doc_id);

CREATE UNIQUE INDEX UX_Organization_inn  ON Organization (inn);
CREATE UNIQUE INDEX UX_Organization_kpp  ON Organization (kpp);
CREATE UNIQUE INDEX UX_Country_code   ON Country (code );
CREATE UNIQUE INDEX UX_Country_name   ON Country (name);
CREATE UNIQUE INDEX UX_document_code     ON document (code  );
CREATE UNIQUE INDEX UX_document_name      ON document (name);
