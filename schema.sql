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
