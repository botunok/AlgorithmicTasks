create table Document(
    code number (15),
    name varchar2(50) NOT NULL,
    CONSTRAINT pk_code PRIMARY KEY (code)
);

create table User_document(
    id number (15),
    doc_code number (15) NOT NULL,
    doc_number varchar2 (50) NOT NULL,
    doc_date date,
    CONSTRAINT pk_id PRIMARY KEY (id),
    CONSTRAINT fk_doc_code FOREIGN KEY (doc_code) REFERENCES Document(code)
);

create table Country(
    code number (15),
    name varchar2(50) NOT NULL,
    CONSTRAINT pk_code PRIMARY KEY (code)
);

create table User(
    id number (15),
    first_name varchar2 (50) NOT NULL,
    office_id number (15) NOT NULL,
    second_name varchar2 (50),
    middle_name varchar2 (50),
    position varchar2 (50) NOT NULL,
    phone number (15), 
    id_user_document number (15),
    citizenship_code number (15),
    is_identified boolean,
    CONSTRAINT pk_id PRIMARY KEY (id),
    CONSTRAINT fk_office_id FOREIGN KEY (office_id) REFERENCES office (id),
    CONSTRAINT fk_id_user_document FOREIGN KEY (id_user_document) REFERENCES User_document(id),
    CONSTRAINT fk_citizenship_code FOREIGN KEY (citizenship_code) REFERENCES Country(code)
);

create table Organization(
      id number (15),
      name varchar2(50) NOT NULL,
      full_name varchar2(50),
      inn number (15),
      kpp number (15),
      is_active BOOLEAN,
      id_head_office number (15),
      CONSTRAINT id_pk PRIMARY KEY (id),
      CONSTRAINT fk_id_head_office FOREIGN KEY (id_head_office) REFERENCES Office(id)
);

create table Office(
      id number (15),
      name varchar2 (50) NOT NULL,
      full_name varchar2 (50),
      address varchar2 (50) NOT NULL,
      phone number (15),
      is_active BOOLEAN,
      id_organization number (15),
      CONSTRAINT id_pk PRIMARY KEY (id),
      CONSTRAINT fk_id_organization FOREIGN KEY (id_organization) REFERENCES Organization(id)
);

CREATE INDEX indx_Document_code ON Document (code) TABLESPACE emp_index_01;
CREATE INDEX indx_User_document_id ON User_document (id) TABLESPACE emp_index_01;
CREATE INDEX indx_Country_code ON Country (code) TABLESPACE emp_index_01;
CREATE INDEX indx_User_id ON User (id) TABLESPACE emp_index_01;
CREATE INDEX indx_Organization_id ON Organization (id) TABLESPACE emp_index_01;
CREATE INDEX indx_Office_id ON Office (id) TABLESPACE emp_index_01;

CREATE INDEX indx_Organization_id_head_office ON Organization (id_head_office) TABLESPACE emp_index_01;
CREATE INDEX indx_Office_id_organization ON Office (id_organization) TABLESPACE emp_index_01;
CREATE INDEX indx_User_office_id ON User (office_id) TABLESPACE emp_index_01;
CREATE INDEX indx_User_id_user_document ON User (id_user_document) TABLESPACE emp_index_01;
CREATE INDEX indx_User_citizenship_code ON User (citizenship_code) TABLESPACE emp_index_01;
CREATE INDEX indx_User_document_doc_code ON User_document (doc_code) TABLESPACE emp_index_01;
