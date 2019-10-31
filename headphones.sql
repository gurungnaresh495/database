DROP TABLE emp_salary CASCADE CONSTRAINTS;
DROP TABLE return_prod CASCADE CONSTRAINTS;
DROP TABLE headphones_brand CASCADE CONSTRAINTS;
DROP TABLE orderlines CASCADE CONSTRAINTS;
DROP TABLE order_placed CASCADE CONSTRAINTS;
DROP TABLE customer_address CASCADE CONSTRAINTS;
DROP TABLE brand_address CASCADE CONSTRAINTS;
DROP TABLE branch_address CASCADE CONSTRAINTS;
DROP TABLE employee_address CASCADE CONSTRAINTS;
DROP TABLE headphones CASCADE CONSTRAINTS;
DROP TABLE brand_price CASCADE CONSTRAINTS;
DROP TABLE BRANDS  CASCADE CONSTRAINTS;
DROP TABLE customers CASCADE CONSTRAINTS;
DROP TABLE employees CASCADE CONSTRAINTS;
DROP TABLE employee_pos CASCADE CONSTRAINTS;
DROP TABLE branches CASCADE CONSTRAINTS;    
DROP TABLE address CASCADE CONSTRAINTS;

  CREATE TABLE ADDRESS
   ("ADDRESS_ID" NUMBER(30,0) NOT NULL, 
	"STREET" VARCHAR2(80 BYTE), 
	"CITY" VARCHAR2(50 BYTE), 
	"STATE" VARCHAR2(50 BYTE), 
	"ZIP" NUMBER(5,0),
    Constraint address_pk_a_id Primary Key (address_id)
   );

insert into address  values (1, '498 Saint Paul Place', 'Riverside', 'CA', '92519');
insert into address  values (2, '2 Nevada Pass', 'Columbia', 'SC', '29208');
insert into address  values (3, '0 Ruskin Alley'), 'Winston Salem', 'NC', '27157');
insert into address  values (4, '2186 Gateway Circle', 'Escondido', 'CA', '92030');
insert into address  values (5, '490 Mesta Parkway'), 'Alexandria', 'VA', '22333');
insert into address  values (6, '7380 Holy Cross Avenue', 'Lansing', 'MI', '48919');
insert into address  values (7, '42 Waywood Pass', 'Spring', 'TX', '77388');
insert into address  values (8, '5120 Doe Crossing Alley'), 'Fort Wayne', 'IN', '46862');
insert into address  values (9, '806 International Place', 'Marietta', 'GA', '30061');
insert into address  values (10, '66278 Johnson Center', 'Newport News', 'VA', '23612');
insert into address  values (11, '578 Debra Crossing', 'Charleston', 'WV', '25362');
insert into address  values (12, '966 Sachs Court', 'Provo', 'UT', '84605');
insert into address  values (13, '52634 Express Circle', 'Amarillo', 'TX', '79188');
insert into address  values (14, '522 Ronald Regan Place', 'Richmond', 'VA', '23289');
insert into address  values (15, '721 Nova Plaza', 'Louisville', 'Ky'), '40225');
insert into address  values (16, '39 Bunker Hill Alley'), 'Milwaukee', 'WI', '53285');
insert into address  values (17, '95 Ohio Avenue', 'Watertown', 'MA', '02472');
insert into address  values (18, '44 Ludington Drive', 'New Orleans', 'LA', '70116');
insert into address  values (19, '0488 Bartillon Hill', 'Duluth', 'GA', '30195');
insert into address  values (20, '24 Hovde Plaza', 'Harrisburg', 'PA', '17105');
insert into address  values (21, '22 Loomis Drive', 'Dallas', 'TX', '75241');
insert into address  values (22, '3728 Gateway Junction', 'Anderson', 'IN', '46015');
insert into address  values (23, '179 Anderson Drive', 'Salem', 'OR', '97312');
insert into address  values (24, '945 Summer Ridge Avenue', 'Marietta', 'GA', '30066');
insert into address  values (25, '747 Farragut Hill', 'Bonita Springs', 'FL', '34135');
insert into address  values (26, '42717 Novick Place', 'Naples', 'FL', '34102');
insert into address  values (27, '53 Commercial Way'), 'Columbia', 'SC', '29215');
insert into address  values (28, '84 Oxford Alley'), 'San Antonio', 'TX', '78220');
insert into address  values (29, '9214 Glacier Hill Hill', 'Daytona Beach', 'FL', '32118');
insert into address  values (30, '8 Alpine Pass', 'Fresno', 'CA', '93715');


--------------------------------------------------------
--  DDL for Table BRANCHES
--------------------------------------------------------

CREATE TABLE BRANCHES
   (BR_ID NUMBER(30,0) NOT NULL, 
   branch_name Varchar2(50),
   branch_phone VARCHAR2(15),
    CONSTRAINT branches_pk_br_id PRIMARY KEY (br_id)
   );
   
insert into branches   values (1, 'Dabfeed', '749-383-7946');
insert into branches   values (2, 'LiveZ', '219-929-6452');
insert into branches   values (3, 'Fivechat', '711-245-7490');
insert into branches   values (4, 'Tazzy'), '557-192-1674');
insert into branches   values (5, 'Twinder', '271-726-6513');
insert into branches   values (6, 'Mynte', '734-731-6806');
insert into branches   values (7, 'Browsezoom', '426-767-6472');
insert into branches   values (8, 'Browsebug', '243-215-3458');
insert into branches   values (9, 'Divanoodle', '687-671-4614');
insert into branches   values (10, 'Mybuzz', '699-406-5897');
insert into branches   values (11, 'Dabtype', '924-934-1693');
insert into branches   values (12, 'Wordify'), '633-149-7966');
insert into branches   values (13, 'Jabbercube', '346-534-3607');
insert into branches   values (14, 'Chatterpoint', '425-232-1375');
insert into branches   values (15, 'Kimia', '640-300-7434');
insert into branches   values (16, 'Myworks', '714-256-6193');
insert into branches   values (17, 'Muxo', '945-294-8456');
insert into branches   values (18, 'Browsebug', '667-210-3947');
insert into branches   values (19, 'Trilith', '389-912-8705');
insert into branches   values (20, 'InnoZ', '531-836-2396');
insert into branches   values (21, 'Rhynoodle', '343-150-3255');
insert into branches   values (22, 'Twitternation', '866-120-8624');
insert into branches   values (23, 'Viva', '889-301-7797');
insert into branches   values (24, 'Izio', '268-496-1464');
insert into branches   values (25, 'Geba', '844-336-0314');
insert into branches   values (26, 'Einti', '938-747-7266');
insert into branches   values (27, 'Yambee', '529-283-6861');
insert into branches   values (28, 'Devshare', '673-671-2305');
insert into branches values (29, 'Kamba', '766-454-0130');
insert into branches values (30, 'Zazio', '126-892-3321');

CREATE TABLE branch_address(br_ad_id NUMBER(30) NOT NULL,
            address_type VARCHAR2(30),
            start_date DATE,
            end_date DATE,
            br_id NUMBER(30),
            address_id NUMBER(30),
            CONSTRAINT branch_ad_pk_a_id PRIMARY KEY (br_ad_id),
            CONSTRAINT branch_ad_fk_a_id FOREIGN key (address_id) REFERENCES address(address_id),
            CONSTRAINT branch_ad_fk_br_id FOREIGN KEY (br_id) REFERENCES branches(br_id));
            
insert into branch_address   values (1, null, '25/04/2019', '13/10/2018', 10, 11);
insert into branch_address   values (2, null, '09/03/2019', '27/11/2018', 10, 12);
insert into branch_address   values (3, null, '30/04/2019', '27/11/2018', 8, 7);
insert into branch_address   values (4, null, '11/02/2019', '27/02/2019', 5, 10);
insert into branch_address   values (5, null, '30/03/2019', '16/12/2018', 10, 9);
insert into branch_address   values (6, null, '07/10/2018', '21/09/2019', 13, 11);
insert into branch_address   values (7, null, '14/09/2019', '14/11/2018', 9, 18);
insert into branch_address   values (8, null, '25/08/2019', '05/05/2019', 14, 6);
insert into branch_address   values (9, null, '28/03/2019', '09/05/2019', 10, 14);
insert into branch_address   values (10, null, '25/03/2019', '24/12/2018', 13, 5);
insert into branch_address   values (11, null, '09/11/2018', '18/01/2019', 13, 7);
insert into branch_address   values (12, null, '11/09/2019', '10/05/2019', 3, 12);
insert into branch_address   values (13, null, '07/01/2019', '01/11/2018', 12, 8);
insert into branch_address   values (14, null, '26/05/2019', '03/05/2019', 13, 7);
insert into branch_address   values (15, null, '24/07/2019', '07/12/2018', 8, 13);
insert into branch_address   values (16, null, '19/02/2019', '22/04/2019', 9, 10);
insert into branch_address   values (17, null, '12/02/2019', '23/05/2019', 12, 7);
insert into branch_address   values (18, null, '23/05/2019', '06/02/2019', 14, 10);
insert into branch_address   values (19, null, '13/01/2019', '27/01/2019', 8, 9);
insert into branch_address   values (20, null, '05/04/2019', '30/11/2018', 8, 4);
insert into branch_address   values (21, null, '25/05/2019', '26/11/2018', 7, 13);
insert into branch_address   values (22, null, '25/04/2019', '13/08/2019', 9, 14);
insert into branch_address   values (23, null, '03/10/2018', '26/01/2019', 9, 13);
insert into branch_address   values (24, null, '14/05/2019', '17/06/2019', 5, 9);
insert into branch_address   values (25, null, '01/07/2019', '25/05/2019', 11, 13);
insert into branch_address   values (26, null, '30/11/2018', '03/11/2018', 9, 10);
insert into branch_address   values (28, null, '06/05/2019', '17/02/2019', 8, 8);
insert into branch_address   values (30, null, '26/01/2019', '25/03/2019', 11, 14);




--------------------------------------------------------
--  DDL for Table HEADPHONES
--------------------------------------------------------

  CREATE TABLE HEADPHONES
   (HEADPHONEs_ID NUMBER(30) NOT NULL, 
	BRAND VARCHAR2(30 BYTE), 
	HP_STYLE VARCHAR2(30 BYTE), 
	"PROD_DESCRIPTION" VARCHAR2(150 BYTE), 
	"UNIT_CP" NUMBER, 
	"UNIT_SP" NUMBER, 
	"ORDER_QTY" NUMBER, 
	"DAMAGED" NUMBER,
    CONSTRAINT headpones_pk_h_id PRIMARY KEY (headphones_id)
   );

insert into headphones   values (1, 'Feeney and Sons', 'Mirage', 'Aegypius tracheliotus', 6, 6, 52, 25);
insert into headphones   values (2, 'Fritsch LLC', 'Grand Am', 'Larus sp.', 6, 6, 50, 25);
insert into headphones   values (3, 'Von-Parisian', 'G', 'Odocoileus hemionus', 4, 5, 50, 26);
insert into headphones   values (4, 'Blanda, Roberts and Bergstrom', 'Tacoma', 'Aonyx cinerea', 4, 5, 50, 23);
insert into headphones   values (5, 'Ward LLC', '300M', 'Hydrochoerus hydrochaeris', 6, 5, 49, 25);
insert into headphones   values (6, 'Reynolds-Graham', 'Mustang', 'Boa constrictor mexicana', 5, 7, 49, 27);
insert into headphones   values (7, 'Abshire-Dooley'), 'Envoy XL', 'Hydrochoerus hydrochaeris', 6, 5, 50, 25);
insert into headphones   values (8, 'Braun, McKenzie and Mueller', 'Savana 3500', 'Ciconia ciconia', 6, 6, 49, 26);
insert into headphones   values (9, 'Fay-Wuckert', 'Skyhawk', 'Naja haje', 5, 3, 51, 26);
insert into headphones   values (10, 'Cartwright Inc', '3500', 'Dasyprocta leporina', 6, 5, 51, 25);
insert into headphones   values (11, 'Rodriguez, Wisozk and Spinka', 'Continental Super', 'Chlamydosaurus kingii', 5, 7, 51, 25);
insert into headphones   values (12, 'Ritchie-Bosco', 'Express 3500', 'Felis rufus', 6, 5, 48, 23);
insert into headphones   values (13, 'Baumbach, Kilback and Collins', 'Town  Country'), 'Cervus duvauceli', 5, 5, 52, 25);
insert into headphones   values (14, 'Murphy-Simonis', 'Parisienne', 'Eolophus roseicapillus', 4, 5, 49, 25);
insert into headphones   values (15, 'Beatty-Flatley'), 'del Sol', 'Felis pardalis', 4, 6, 51, 26);
insert into headphones   values (16, 'Hodkiewicz-MacGyver', 'Continental GT', 'Amblyrhynchus cristatus', 3, 4, 50, 26);
insert into headphones   values (17, 'Balistreri Inc', 'Vantage', 'Plegadis falcinellus', 4, 6, 48, 24);
insert into headphones   values (18, 'Howe and Sons', 'Civic', 'Sciurus niger', 6, 7, 49, 26);
insert into headphones   values (19, 'Carroll Group', 'Rocky'), 'Cyrtodactylus louisiadensis', 3, 6, 50, 23);
insert into headphones   values (20, 'Stehr Inc', 'Parisienne', 'Alcelaphus buselaphus caama', 6, 6, 52, 26);
insert into headphones   values (21, 'Berge, Nienow and Cronin', '88', 'Pseudalopex gymnocercus', 5, 5, 49, 25);
insert into headphones   values (22, 'Graham, Bernhard and Doyle', 'Yukon', 'Pavo cristatus', 5, 3, 51, 25);
insert into headphones   values (23, 'Wyman, Nicolas and DuBuque', 'MX-5', 'Spilogale gracilis', 4, 4, 49, 26);
insert into headphones   values (24, 'Corkery, Glover and Gaylord', 'Odyssey'), 'Semnopithecus entellus', 4, 4, 50, 26);
insert into headphones   values (25, 'Kautzer, Nolan and Paucek', 'Tiburon', 'Pelecanus conspicillatus', 3, 6, 50, 25);
insert into headphones   values (26, 'Breitenberg-Gutkowski', 'Crown Victoria', 'Trichoglossus chlorolepidotus', 5, 6, 51, 26);
insert into headphones   values (27, 'Luettgen-Predovic', 'Integra', 'Spermophilus lateralis', 7, 5, 49, 25);
insert into headphones   values (28, 'Kohler-Botsford', 'LS', 'Melanerpes erythrocephalus', 7, 4, 49, 24);
insert into headphones   values (29, 'Pfannerstill Inc', 'Bronco II', 'Delphinus delphis', 4, 5, 49, 24);
insert into headphones   values (30, 'Kiehn Group', 'Durango', 'Colobus guerza', 5, 4, 50, 27);


--------------------------------------------------------
--  DDL for Table BRAND
--------------------------------------------------------

  CREATE TABLE BRANDs
   (BRANDS_ID NUMBER(30,0) NOT NULL, 
	BRANDS_NAME VARCHAR2(50 BYTE), 
    CONSTRAINT brandS_pk_b_id PRIMARY KEY (brands_id)
   );

insert into BRANDS values (1, 'Rooxo');
insert into BRANDS     values (2, 'Tanoodle');
insert into BRANDS     values (3, 'Centidel');
insert into BRANDS     values (4, 'Tanoodle');
insert into BRANDS     values (5, 'Teklist');
insert into BRANDS     values (6, 'Rhyloo');
insert into BRANDS     values (7, 'Dynazzy');
insert into BRANDS     values (8, 'Youspan');
insert into BRANDS     values (9, 'Ozu');
insert into BRANDS     values (10, 'Rooxo');
insert into BRANDS     values (11, 'Wikivu');
insert into BRANDS     values (12, 'Rooxo');
insert into BRANDS     values (13, 'Wordpedia');
insert into BRANDS     values (14, 'Katz');
insert into BRANDS     values (15, 'Voolia');
insert into BRANDS     values (16, 'Oodoo');
insert into BRANDS     values (17, 'Vinder');
insert into BRANDS     values (18, 'Devpulse');
insert into BRANDS     values (19, 'Skinix');
insert into BRANDS     values (20, 'Jazzy');
insert into BRANDS     values (21, 'Jatri');
insert into BRANDS     values (22, 'Fatz');
insert into BRANDS     values (23, 'Tambee');
insert into BRANDS     values (24, 'Oyoloo');
insert into BRANDS     values (25, 'Shuffletag');
insert into BRANDS     values (26, 'Skyba');
insert into BRANDS     values (27, 'Katz');
insert into BRANDS     values (28, 'Wikivu');
insert into BRANDS     values (29, 'Eamia');
insert into BRANDS     values (30, 'Ooba');


   
CREATE TABLE brand_address(b_ad_id NUMBER(30) NOT NULL,
            address_type VARCHAR2(30),
            start_date DATE,
            end_date DATE,
            BRANDS_id NUMBER(30),
            address_id NUMBER(30),
            CONSTRAINT brand_ad_pk_a_id PRIMARY KEY (b_ad_id),
            CONSTRAINT brand_ad_fk_a_id FOREIGN key (address_id) REFERENCES address(address_id),
            CONSTRAINT brand_ad_fk_b_id FOREIGN KEY (BRANDS_id) REFERENCES BRANDS (BRANDS_id));
            
insert into brand_address   values (1, null, '02/02/2019', '15/02/2019', 17, 15);
insert into brand_address   values (2, null, '29/05/2019', '15/06/2019', 15, 16);
insert into brand_address   values (3, null, '27/05/2019', '12/08/2019', 16, 16);
insert into brand_address   values (4, null, '02/06/2019', '08/06/2019', 14, 15);
insert into brand_address   values (5, null, '14/04/2019', '01/02/2019', 16, 16);
insert into brand_address   values (6, null, '03/01/2019', '26/01/2019', 16, 14);
insert into brand_address   values (7, null, '16/07/2019', '02/02/2019', 15, 16);
insert into brand_address   values (8, null, '05/11/2018', '23/10/2018', 15, 16);
insert into brand_address   values (9, null, '27/03/2019', '06/07/2019', 17, 15);
insert into brand_address   values (10, null, '14/09/2019', '05/01/2019', 14, 15);
insert into brand_address   values (11, null, '17/10/2018', '23/09/2019', 14, 14);
insert into brand_address   values (12, null, '07/08/2019', '03/09/2019', 15, 13);
insert into brand_address   values (13, null, '17/10/2018', '19/12/2018', 15, 14);
insert into brand_address   values (14, null, '23/06/2019', '20/09/2019', 13, 16);
insert into brand_address   values (15, null, '16/09/2019', '09/10/2018', 14, 16);
insert into brand_address   values (16, null, '28/04/2019', '24/08/2019', 16, 15);
insert into brand_address   values (17, null, '05/05/2019', '21/12/2018', 16, 14);
insert into brand_address   values (18, null, '10/06/2019', '16/05/2019', 15, 15);
insert into brand_address   values (19, null, '12/09/2019', '07/07/2019', 17, 16);
insert into brand_address   values (20, null, '16/07/2019', '14/01/2019', 14, 16);
insert into brand_address   values (21, null, '27/06/2019', '06/07/2019', 15, 15);
insert into brand_address   values (22, null, '20/05/2019', '26/10/2018', 16, 15);
insert into brand_address   values (23, null, '22/06/2019', '21/12/2018', 15, 15);
insert into brand_address   values (24, null, '05/07/2019', '19/01/2019', 16, 15);
insert into brand_address   values (25, null, '20/12/2018', '02/09/2019', 14, 15);
insert into brand_address   values (26, null, '06/04/2019', '09/06/2019', 15, 13);
insert into brand_address   values (27, null, '17/07/2019', '21/11/2018', 15, 14);
insert into brand_address   values (28, null, '07/03/2019', '14/05/2019', 17, 14);
insert into brand_address   values (29, null, '06/08/2019', '15/12/2018', 15, 14);
insert into brand_address   values (30, null, '19/07/2019', '09/01/2019', 17, 16);

--------------------------------------------------------
--  DDL for Table BRAND_PRICE
--------------------------------------------------------

  CREATE TABLE BRAND_PRICE
   (BRAND_P_ID NUMBER(30,0) NOT NULL, 
	BRANDS_ID NUMBER(30,0), 
	HEADPHONES_ID NUMBER(30,0), 
	DISCOUNT NUMBER(5,2), 
	START_DATE DATE, 
	END_DATE DATE,
    CONSTRAINT b_price_pk_b_p_pk PRIMARY KEY (brand_p_id),
    CONSTRAINT b_price_fk_b_id FOREIGN KEY (BRANDS_id) REFERENCES BRANDS (BRANDS_id),
    CONSTRAINT b_price_fk_h_id FOREIGN KEY (headphones_id) REFERENCES headphones(headphones_id)
   );
   
insert into brand_price   values (1, 14, 16, 29.8, '23/04/2019', '25/06/2019');
insert into brand_price   values (2, 14, 13, 31.78, '31/07/2019', '19/06/2019');
insert into brand_price   values (3, 14, 16, 31.08, '04/01/2019', '14/07/2019');
insert into brand_price   values (4, 16, 15, 29.76, '18/02/2019', '29/08/2019');
insert into brand_price   values (5, 14, 16, 29.27, '17/10/2018', '11/07/2019');
insert into brand_price   values (6, 15, 14, 31.47, '24/09/2019', '12/06/2019');
insert into brand_price   values (7, 14, 16, 29.09, '14/06/2019', '14/07/2019');
insert into brand_price   values (8, 14, 15, 29.6, '05/08/2019', '06/05/2019');
insert into brand_price   values (9, 15, 13, 28.89, '14/12/2018', '19/09/2019');
insert into brand_price   values (10, 15, 14, 28.07, '14/07/2019', '09/04/2019');
insert into brand_price   values (11, 16, 15, 28.67, '05/02/2019', '21/02/2019');
insert into brand_price   values (12, 15, 13, 30.03, '09/01/2019', '27/06/2019');
insert into brand_price   values (13, 14, 17, 28.76, '02/12/2018', '07/09/2019');
insert into brand_price   values (14, 15, 16, 27.47, '26/05/2019', '18/02/2019');
insert into brand_price   values (15, 16, 16, 29.45, '01/05/2019', '18/10/2018');
insert into brand_price   values (16, 13, 14, 29.75, '20/07/2019', '01/06/2019');
insert into brand_price   values (17, 12, 16, 29.53, '24/05/2019', '08/09/2019');
insert into brand_price   values (18, 14, 15, 31.03, '07/10/2018', '13/05/2019');
insert into brand_price   values (19, 14, 15, 28.4, '15/03/2019', '09/03/2019');
insert into brand_price   values (20, 15, 15, 29.75, '20/11/2018', '10/12/2018');
insert into brand_price   values (21, 15, 15, 30.7, '29/03/2019', '30/04/2019');
insert into brand_price   values (22, 13, 16, 29.33, '19/11/2018', '09/08/2019');
insert into brand_price   values (23, 15, 16, 30.31, '30/08/2019', '15/10/2018');
insert into brand_price   values (24, 16, 14, 29.07, '06/08/2019', '26/08/2019');
insert into brand_price   values (25, 15, 14, 32.01, '19/10/2018', '04/01/2019');
insert into brand_price   values (26, 15, 15, 29.22, '05/05/2019', '11/05/2019');
insert into brand_price   values (27, 15, 15, 28.97, '30/06/2019', '27/07/2019');
insert into brand_price   values (28, 16, 14, 28.76, '06/12/2018', '15/04/2019');
insert into brand_price   values (29, 14, 15, 31.13, '23/08/2019', '25/08/2019');
insert into brand_price   values (30, 15, 13, 28.69, '12/09/2019', '17/04/2019');


CREATE TABLE headphones_BRAND  (headphones_b_id NUMBER(30) NOT NULL,
            BRANDS_id NUMBER(30),
            headphones_id NUMBER(30),
            order_date DATE,
            expected_rcv_date DATE,
            actual_rcv_date DATE,
            quantity NUMBER,
            CONSTRAINT headphones_pk_h_n_id PRIMARY KEY (headphones_b_id),
            CONSTRAINT headphones_fk_b_id FOREIGN KEY (BRANDS_id) REFERENCES BRANDS (BRANDS_id),
            CONSTRAINT headphones_fk_h_id FOREIGN KEY (headphones_id) REFERENCES headphones(headphones_id));

insert into headphones_brand   values (1, 15, 15, '20/01/2019', '27/11/2018', '14/03/2019', 50);
insert into headphones_brand   values (2, 16, 14, '19/02/2019', '21/02/2019', '17/05/2019', 50);
insert into headphones_brand   values (3, 15, 15, '07/06/2019', '26/03/2019', '17/07/2019', 49);
insert into headphones_brand   values (4, 15, 15, '17/02/2019', '06/04/2019', '17/05/2019', 50);
insert into headphones_brand   values (5, 15, 16, '25/10/2018', '10/05/2019', '21/10/2018', 52);
insert into headphones_brand   values (6, 15, 16, '23/01/2019', '06/02/2019', '05/10/2018', 50);
insert into headphones_brand   values (7, 15, 15, '23/01/2019', '03/03/2019', '08/01/2019', 52);
insert into headphones_brand   values (8, 17, 16, '09/12/2018', '27/05/2019', '15/07/2019', 49);
insert into headphones_brand   values (9, 16, 15, '25/07/2019', '20/08/2019', '10/10/2018', 53);
insert into headphones_brand   values (10, 13, 17, '10/09/2019', '18/07/2019', '15/06/2019', 49);
insert into headphones_brand   values (11, 16, 15, '08/10/2018', '26/03/2019', '06/02/2019', 49);
insert into headphones_brand   values (12, 15, 16, '22/04/2019', '13/09/2019', '09/06/2019', 51);
insert into headphones_brand   values (13, 14, 14, '12/08/2019', '18/06/2019', '25/06/2019', 49);
insert into headphones_brand   values (14, 15, 16, '10/03/2019', '15/10/2018', '30/03/2019', 50);
insert into headphones_brand   values (15, 12, 15, '29/03/2019', '14/11/2018', '24/12/2018', 51);
insert into headphones_brand   values (16, 14, 15, '16/10/2018', '29/09/2019', '14/09/2019', 50);
insert into headphones_brand   values (17, 15, 17, '10/07/2019', '29/11/2018', '06/11/2018', 50);
insert into headphones_brand   values (18, 15, 16, '02/03/2019', '21/08/2019', '02/01/2019', 50);
insert into headphones_brand   values (19, 15, 15, '21/04/2019', '12/06/2019', '23/03/2019', 49);
insert into headphones_brand   values (20, 14, 16, '13/10/2018', '08/05/2019', '13/02/2019', 51);
insert into headphones_brand   values (21, 16, 17, '09/06/2019', '21/06/2019', '14/07/2019', 49);
insert into headphones_brand   values (22, 15, 14, '24/07/2019', '18/04/2019', '12/06/2019', 50);
insert into headphones_brand   values (23, 13, 15, '18/10/2018', '19/08/2019', '09/04/2019', 49);
insert into headphones_brand   values (24, 16, 15, '26/01/2019', '25/09/2019', '28/05/2019', 51);
insert into headphones_brand   values (25, 15, 16, '22/09/2019', '14/04/2019', '23/12/2018', 49);
insert into headphones_brand   values (26, 14, 16, '16/11/2018', '10/03/2019', '15/12/2018', 53);
insert into headphones_brand   values (27, 15, 15, '11/02/2019', '18/04/2019', '09/11/2018', 49);
insert into headphones_brand   values (28, 14, 13, '21/09/2019', '07/11/2018', '14/11/2018', 50);
insert into headphones_brand   values (29, 14, 15, '22/08/2019', '02/04/2019', '09/10/2018', 52);
insert into headphones_brand   values (30, 15, 14, '15/11/2018', '24/05/2019', '29/08/2019', 50);


CREATE TABLE customers (customer_id NUMBER(30) NOT NULL,
            customer_lname VARCHAR2(30),
            customer_fname VARCHAR2(30),
            phone_number VARCHAR2(13),
            branches_id NUMBER(30),
            CONSTRAINT customer_pk_c_id PRIMARY KEY (customer_id),
            CONSTRAINT customer_fk_b_id FOREIGN KEY (branches_id) REFERENCES branches(br_id));

insert into customers   values (1, 'Creasy'), 'Josefa', '635-806-9883', 13);
insert into customers   values (2, 'Langstone', 'Ashia', '863-993-5967', 15);
insert into customers   values (3, 'Gorton', 'Raye', '232-108-3218', 14);
insert into customers   values (4, 'Broadberry'), 'Reube', '249-601-0277', 15);
insert into customers   values (5, 'Eberdt', 'Rikki', '201-850-2793', 15);
insert into customers   values (6, 'Ducket', 'Rafaelita', '993-983-4158', 18);
insert into customers   values (7, 'Bomfield', 'Harlen', '193-533-1922', 17);
insert into customers   values (8, 'Hannabuss', 'Garvey'), '999-838-4511', 15);
insert into customers   values (9, 'Cadell', 'Shaine', '845-121-4949', 14);
insert into customers   values (10, 'Santore', 'Kerrill', '862-443-1194', 16);
insert into customers   values (11, 'Scallan', 'Thedrick', '868-729-1668', 14);
insert into customers   values (12, 'Lissandri', 'Nanny'), '840-872-3580', 15);
insert into customers   values (13, 'Cosslett', 'Ortensia', '189-250-8591', 13);
insert into customers   values (14, 'Gooly'), 'Mile', '487-427-8637', 15);
insert into customers   values (15, 'Portam', 'Izabel', '153-770-9092', 16);
insert into customers   values (16, 'Leadley'), 'Domeniga', '682-521-1738', 15);
insert into customers   values (17, 'Profit', 'Robers', '476-634-9855', 15);
insert into customers   values (18, 'Chadband', 'Ali', '615-912-7120', 15);
insert into customers   values (19, 'Kernermann', 'Tremayne', '675-507-2382', 15);
insert into customers   values (20, 'Murtell', 'Baxy'), '921-378-8099', 14);
insert into customers   values (21, 'Booth', 'Glory'), '303-593-5781', 16);
insert into customers   values (22, 'Stanwix', 'Oswald', '483-614-6791', 16);
insert into customers   values (23, 'McTerrelly'), 'Carolin', '674-802-9293', 15);
insert into customers   values (24, 'Greeveson', 'Lethia', '579-675-8630', 16);
insert into customers   values (25, 'Shipley'), 'Jordan', '216-506-3702', 13);
insert into customers   values (26, 'Farnham', 'Eden', '518-115-1214', 15);
insert into customers   values (27, 'Hourihan', 'Kameko', '536-111-2881', 15);
insert into customers   values (28, 'Skews', 'Andriette', '961-109-7054', 16);
insert into customers   values (29, 'Dolohunty'), 'Iolanthe', '609-863-3774', 15);
insert into customers   values (30, 'Vellacott', 'Pace', '284-256-0718', 15);
insert into customers   values (31, 'Narraway'), 'Lynea', '744-895-4298', 15);
insert into customers   values (32, 'Rickarsey'), 'Fleur', '218-831-6107', 14);
insert into customers   values (33, 'Menego', 'Blinny'), '438-563-6829', 16);
insert into customers   values (34, 'Dilworth', 'Melita', '314-446-0493', 15);
insert into customers   values (35, 'Harbisher', 'Redford', '384-871-6978', 14);
insert into customers   values (36, 'Keniwell', 'Katleen', '264-756-8306', 14);
insert into customers   values (37, 'Dickson', 'Putnam', '198-165-2379', 13);
insert into customers   values (38, 'Ffrench', 'Teador', '641-666-5762', 16);
insert into customers   values (39, 'Balaisot', 'Whitney'), '224-280-5508', 15);
insert into customers   values (40, 'Kingscote', 'Drugi', '737-302-1365', 16);
insert into customers   values (41, 'Feighney'), 'Marion', '864-323-4672', 15);
insert into customers   values (42, 'Rosenbarg', 'Goddard', '428-883-3123', 14);
insert into customers   values (43, 'Goodricke', 'Marianne', '811-862-4225', 16);
insert into customers   values (44, 'Matteris', 'Alvin', '401-944-9795', 16);
insert into customers   values (45, 'Dallow', 'Alleyn', '867-603-6866', 13);
insert into customers   values (46, 'Garbott', 'Byran', '959-496-9547', 16);
insert into customers   values (47, 'Gatland', 'Jeana', '713-812-1945', 16);
insert into customers   values (48, 'Sugden', 'Mikol', '753-405-4553', 15);
insert into customers   values (49, 'Lachaize', 'Bruno', '712-546-3420', 16);
insert into customers   values (50, 'Arnowicz', 'Celesta', '412-602-0535', 16);


CREATE TABLE customer_address(c_address_id NUMBER(30) NOT NULL,
            address_type VARCHAR2(30),
            start_date DATE,
            end_date DATE,
            customer_id NUMBER(30),
            address_id NUMBER(30),
            CONSTRAINT customer_ad_pk_c_id PRIMARY KEY (c_address_id),
            CONSTRAINT customer_ad_fk_a_id FOREIGN key (address_id) REFERENCES address(address_id),
            CONSTRAINT customer_ad_fk_c_id FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
            
insert into customer_address   values (1, null, '20/09/2019', '16/12/2018', 25, 16);
insert into customer_address   values (2, null, '09/08/2019', '02/12/2018', 27, 16);
insert into customer_address   values (3, null, '08/11/2018', '03/05/2019', 25, 14);
insert into customer_address   values (4, null, '28/04/2019', '19/07/2019', 26, 15);
insert into customer_address   values (5, null, '02/05/2019', '01/05/2019', 26, 13);
insert into customer_address   values (6, null, '06/10/2018', '08/07/2019', 24, 15);
insert into customer_address   values (7, null, '02/09/2019', '24/12/2018', 23, 15);
insert into customer_address   values (8, null, '04/08/2019', '20/02/2019', 26, 15);
insert into customer_address   values (9, null, '19/11/2018', '03/09/2019', 25, 15);
insert into customer_address   values (10, null, '05/10/2018', '23/04/2019', 24, 15);
insert into customer_address   values (11, null, '16/01/2019', '05/07/2019', 24, 16);
insert into customer_address   values (12, null, '27/05/2019', '17/03/2019', 27, 15);
insert into customer_address   values (13, null, '02/09/2019', '24/01/2019', 24, 15);
insert into customer_address   values (14, null, '14/05/2019', '15/03/2019', 25, 13);
insert into customer_address   values (15, null, '16/09/2019', '15/07/2019', 25, 14);
insert into customer_address   values (16, null, '15/10/2018', '19/05/2019', 26, 15);
insert into customer_address   values (17, null, '18/05/2019', '26/05/2019', 25, 14);
insert into customer_address   values (18, null, '10/11/2018', '07/01/2019', 26, 16);
insert into customer_address   values (19, null, '25/09/2019', '05/10/2018', 24, 15);
insert into customer_address   values (20, null, '17/11/2018', '28/01/2019', 24, 17);
insert into customer_address   values (21, null, '05/08/2019', '10/12/2018', 23, 14);
insert into customer_address   values (22, null, '21/01/2019', '18/05/2019', 24, 15);
insert into customer_address   values (23, null, '07/01/2019', '28/01/2019', 27, 14);
insert into customer_address   values (24, null, '24/05/2019', '05/02/2019', 26, 15);
insert into customer_address   values (25, null, '01/06/2019', '29/12/2018', 24, 16);
insert into customer_address   values (26, null, '12/02/2019', '29/06/2019', 25, 15);
insert into customer_address   values (27, null, '03/02/2019', '06/11/2018', 27, 14);
insert into customer_address   values (28, null, '13/11/2018', '27/10/2018', 25, 14);
insert into customer_address   values (29, null, '09/10/2018', '30/08/2019', 25, 15);
insert into customer_address   values (30, null, '02/02/2019', '21/03/2019', 26, 17);
           
CREATE TABLE employee_pos (employee_p_id NUMBER(30)NOT NULL,
            pos_name VARCHAR2(150),
            CONSTRAINT employee_pos_pk_e_p_p_id PRIMARY KEY (employee_p_id));
            
insert into employee_pos   values (1, 'benchmark');
insert into employee_pos   values (2, 'matrix');
insert into employee_pos   values (3, 'help-desk');
insert into employee_pos   values (4, 'definition');
insert into employee_pos   values (5, 'Multi-lateral');
insert into employee_pos   values (6, 'Decentralized');
insert into employee_pos   values (7, 'solution-oriented');
insert into employee_pos   values (8, 'non-volatile');
insert into employee_pos   values (9, 'success');
insert into employee_pos   values (10, 'archive');
insert into employee_pos   values (11, 'clear-thinking');
insert into employee_pos   values (12, 'Focused');
insert into employee_pos   values (13, 'process improvement');
insert into employee_pos   values (14, 'radical');
insert into employee_pos   values (15, 'responsive');
insert into employee_pos   values (16, 'open architecture');
insert into employee_pos   values (17, 'system-worthy');
insert into employee_pos   values (18, 'Synchronised');
insert into employee_pos   values (19, 'scalable');
insert into employee_pos   values (20, 'Ameliorated');


CREATE TABLE employees (employees_id NUMBER(30) NOT NULL,
            employees_lname VARCHAR2(30),
            employees_fname VARCHAR2(30),
            branches_id NUMBER(30),
            employee_p_id NUMBER(30),
            CONSTRAINT employees_pk_e_id PRIMARY KEY (employees_id),
            CONSTRAINT employess_fk_b_id FOREIGN KEY (branches_id) REFERENCES branches(br_id),
            CONSTRAINT employess_fk_e_p_id FOREIGN KEY (employee_p_id) REFERENCES employee_pos(employee_p_id));

insert into employees   values (1, 'Varnals', 'Rowan', 15, 15);
insert into employees   values (2, 'Van der Kruijs', 'Cherilyn', 16, 15);
insert into employees   values (3, 'Tombling', 'Betta', 16, 15);
insert into employees   values (4, 'Coopman', 'Kevan', 17, 14);
insert into employees   values (5, 'Gavaran', 'Christal', 15, 15);
insert into employees   values (6, 'Buy'), 'Janina', 16, 14);
insert into employees   values (7, 'Fulloway'), 'Karena', 16, 16);
insert into employees   values (8, 'Kupisz', 'Zuzana', 15, 16);
insert into employees   values (9, 'Guilayn', 'Alick', 17, 14);
insert into employees   values (10, 'Braffington', 'Sergio', 16, 17);
insert into employees   values (11, 'St. Paul', 'Karena', 15, 15);
insert into employees   values (12, 'Richards', 'Alie', 17, 16);
insert into employees   values (13, 'Stapells', 'Rosemaria', 14, 14);
insert into employees   values (14, 'Emburey'), 'Lyn', 14, 15);
insert into employees   values (15, 'Waszczyk', 'Nevil', 17, 14);
insert into employees   values (16, 'Scholtis', 'Allina', 16, 16);
insert into employees   values (17, 'Wigfield', 'Vitoria', 16, 15);
insert into employees   values (18, 'McKinnell', 'Carie', 15, 13);
insert into employees   values (19, 'Ponton', 'Gard', 15, 14);
insert into employees   values (20, 'Tungay'), 'Latrena', 15, 14);
insert into employees   values (21, 'Iddiens', 'Les', 16, 15);
insert into employees   values (22, 'Couvert', 'Nellie', 16, 14);
insert into employees   values (23, 'Ollet', 'D''arcy'), 15, 15);
insert into employees   values (24, 'Farnworth', 'Lebbie', 14, 15);
insert into employees   values (25, 'Been', 'Rebbecca', 16, 15);
insert into employees   values (26, 'Gull', 'Silvanus', 16, 15);
insert into employees   values (27, 'Segar', 'Dominique', 16, 15);
insert into employees   values (28, 'Lehon', 'Zackariah', 14, 14);
insert into employees   values (29, 'Spaice', 'Jonas', 15, 15);
insert into employees   values (30, 'Fawlks', 'Corby'), 17, 13);


CREATE TABLE employee_address(e_address_id NUMBER(30) NOT NULL,
            address_type VARCHAR2(30),
            start_date DATE,
            end_date DATE,
            employees_id NUMBER(30),
            address_id NUMBER(30),
            CONSTRAINT employee_ad_pk_e_id PRIMARY KEY (e_address_id),
            CONSTRAINT employee_ad_fk_a_id FOREIGN key (address_id) REFERENCES address(address_id),
            CONSTRAINT empployee_ad_fk_e_id FOREIGN KEY (employees_id) REFERENCES employees(employees_id));
            
insert into employee_address   values (1, null, '02/02/2019', '25/07/2019', 16, 16);
insert into employee_address   values (2, null, '08/02/2019', '19/11/2018', 15, 15);
insert into employee_address   values (3, null, '06/02/2019', '06/06/2019', 16, 13);
insert into employee_address   values (4, null, '28/07/2019', '29/06/2019', 16, 17);
insert into employee_address   values (5, null, '13/11/2018', '27/04/2019', 16, 16);
insert into employee_address   values (6, null, '21/07/2019', '17/09/2019', 14, 15);
insert into employee_address   values (7, null, '30/03/2019', '07/11/2018', 17, 14);
insert into employee_address   values (8, null, '25/03/2019', '27/11/2018', 15, 17);
insert into employee_address   values (9, null, '05/08/2019', '03/01/2019', 16, 15);
insert into employee_address   values (10, null, '02/10/2018', '20/11/2018', 15, 14);
insert into employee_address   values (11, null, '03/06/2019', '15/03/2019', 15, 15);
insert into employee_address   values (12, null, '01/05/2019', '06/07/2019', 15, 16);
insert into employee_address   values (13, null, '04/01/2019', '30/05/2019', 16, 15);
insert into employee_address   values (14, null, '10/05/2019', '04/11/2018', 14, 16);
insert into employee_address   values (15, null, '15/03/2019', '25/11/2018', 15, 16);
insert into employee_address   values (16, null, '02/03/2019', '28/07/2019', 16, 16);
insert into employee_address   values (17, null, '16/12/2018', '10/09/2019', 14, 16);
insert into employee_address   values (18, null, '09/07/2019', '17/04/2019', 16, 16);
insert into employee_address   values (19, null, '23/11/2018', '25/03/2019', 15, 16);
insert into employee_address   values (20, null, '24/01/2019', '13/01/2019', 17, 17);
insert into employee_address   values (21, null, '19/11/2018', '26/05/2019', 14, 17);
insert into employee_address   values (22, null, '09/10/2018', '28/01/2019', 17, 15);
insert into employee_address   values (23, null, '27/06/2019', '25/09/2019', 15, 15);
insert into employee_address   values (24, null, '10/02/2019', '18/01/2019', 15, 13);
insert into employee_address   values (25, null, '27/12/2018', '30/03/2019', 15, 13);
insert into employee_address   values (26, null, '31/12/2018', '24/09/2019', 16, 14);
insert into employee_address   values (27, null, '05/07/2019', '06/12/2018', 15, 16);
insert into employee_address   values (28, null, '11/03/2019', '10/01/2019', 15, 14);
insert into employee_address   values (29, null, '04/02/2019', '29/10/2018', 15, 15);
insert into employee_address   values (30, null, '29/03/2019', '02/09/2019', 16, 13);


CREATE TABLE order_placed (orders_id NUMBER(30) Not Null,
            order_date DATE,
            ship_date DATE,
            shipping_method VARCHAR2(30),
            tax_amt NUMBER(5,2),
            shipping_charge NUMBER(5,2),
            customer_id NUMBER(30),
            employees_id NUMBER(30),
            branches_id NUMBER(30),
            CONSTRAINT order_pk_o_id PRIMARY KEY (orders_id),
            CONSTRAINT order_fk_c_id FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
            CONSTRAINT order_fk_e_id FOREIGN KEY (EMPLOYEES_ID) REFERENCES EMPLOYEES(EMPLOYEES_ID),
            CONSTRAINT order_fk_b_id FOREIGN KEY (branches_id) REFERENCES branches(br_id));

insert into order_placed   values (1, '23/08/2019', '18/02/2019', 'Mazda', 14.08, 30.76, 25, 15, 14);
insert into order_placed   values (2, '09/05/2019', '12/05/2019', 'Chevrolet', 14.43, 28.98, 26, 15, 15);
insert into order_placed   values (3, '20/12/2018', '30/05/2019', 'Hyundai', 16.19, 27.83, 25, 16, 16);
insert into order_placed   values (4, '19/01/2019', '08/09/2019', 'Toyota', 15.35, 29.22, 25, 13, 15);
insert into order_placed   values (5, '12/06/2019', '03/12/2018', 'Chevrolet', 16.39, 30.32, 25, 14, 15);
insert into order_placed   values (6, '31/01/2019', '24/01/2019', 'Acura', 16.24, 28.82, 26, 17, 15);
insert into order_placed   values (7, '01/03/2019', '21/10/2018', 'Isuzu', 15.11, 29.88, 23, 18, 14);
insert into order_placed   values (8, '27/11/2018', '30/11/2018', 'Audi', 15.88, 30.32, 26, 16, 14);
insert into order_placed   values (9, '25/11/2018', '26/08/2019', 'Land Rover', 13.96, 29.31, 26, 17, 14);
insert into order_placed   values (10, '26/08/2019', '12/01/2019', 'Chevrolet', 13.5, 29.01, 26, 15, 15);
insert into order_placed   values (11, '17/05/2019', '06/12/2018', 'Suzuki', 14.53, 30.52, 24, 15, 14);
insert into order_placed   values (12, '10/05/2019', '09/07/2019', 'Lexus', 14.75, 29.31, 25, 15, 16);
insert into order_placed   values (13, '29/05/2019', '11/02/2019', 'Kia', 16.96, 29.8, 24, 15, 15);
insert into order_placed   values (14, '23/02/2019', '19/01/2019', 'Ford', 13.9, 28.68, 26, 15, 16);
insert into order_placed   values (15, '16/11/2018', '22/02/2019', 'Saturn', 15.11, 30.42, 25, 14, 13);
insert into order_placed   values (16, '16/04/2019', '01/10/2018', 'Mazda', 15.94, 30.71, 25, 14, 15);
insert into order_placed   values (17, '04/10/2018', '22/08/2019', 'Shelby'), 15.84, 28.91, 24, 15, 14);
insert into order_placed   values (18, '15/11/2018', '28/05/2019', 'Hyundai', 15.47, 30.21, 24, 15, 16);
insert into order_placed   values (19, '06/11/2018', '02/09/2019', 'Toyota', 15.07, 30.28, 24, 14, 16);
insert into order_placed   values (20, '07/08/2019', '16/11/2018', 'Pontiac', 15.05, 31.28, 25, 13, 17);
insert into order_placed   values (21, '15/12/2018', '09/02/2019', 'Volkswagen', 13.93, 30.72, 26, 16, 16);
insert into order_placed   values (22, '30/06/2019', '30/04/2019', 'GMC', 14.22, 29.63, 27, 15, 13);
insert into order_placed   values (23, '02/06/2019', '18/01/2019', 'Porsche', 15.05, 30.34, 23, 15, 15);
insert into order_placed   values (24, '11/02/2019', '27/12/2018', 'Toyota', 16.85, 30.2, 24, 14, 15);
insert into order_placed   values (25, '13/09/2019', '26/06/2019', 'Dodge', 12.85, 29.49, 27, 14, 16);
insert into order_placed   values (26, '29/09/2019', '02/07/2019', 'Cadillac', 15.59, 28.99, 24, 14, 16);
insert into order_placed   values (27, '10/03/2019', '29/08/2019', 'Buick', 15.13, 28.0, 26, 16, 13);
insert into order_placed   values (28, '22/06/2019', '13/08/2019', 'Mercedes-Benz', 15.9, 30.89, 27, 14, 14);
insert into order_placed   values (29, '05/01/2019', '18/08/2019', 'Mercury'), 14.62, 29.9, 26, 14, 16);
insert into order_placed   values (30, '07/04/2019', '16/08/2019', 'Ford', 17.42, 28.94, 23, 13, 16);
insert into order_placed   values (31, '23/04/2019', '09/12/2018', 'Ford', 15.05, 29.74, 24, 14, 16);
insert into order_placed   values (32, '17/06/2019', '10/09/2019', 'Toyota', 14.47, 28.64, 26, 14, 16);
insert into order_placed   values (33, '26/11/2018', '05/07/2019', 'GMC', 15.67, 28.68, 24, 15, 15);
insert into order_placed   values (34, '09/03/2019', '25/07/2019', 'GMC', 15.0, 32.18, 25, 14, 15);
insert into order_placed   values (35, '02/12/2018', '30/07/2019', 'Nissan', 15.42, 29.66, 23, 17, 15);
insert into order_placed   values (36, '11/01/2019', '22/04/2019', 'Lincoln', 15.27, 30.04, 25, 15, 15);
insert into order_placed   values (37, '13/05/2019', '19/06/2019', 'Chevrolet', 15.22, 30.1, 25, 16, 15);
insert into order_placed   values (38, '26/02/2019', '07/11/2018', 'Cadillac', 14.53, 29.68, 26, 15, 15);
insert into order_placed   values (39, '29/08/2019', '14/09/2019', 'MINI', 13.98, 30.6, 25, 15, 16);
insert into order_placed   values (40, '20/05/2019', '21/10/2018', 'Hyundai', 16.12, 28.93, 27, 15, 15);
insert into order_placed   values (41, '21/12/2018', '10/06/2019', 'Chrysler', 14.92, 30.03, 25, 16, 14);
insert into order_placed   values (42, '28/03/2019', '17/11/2018', 'Ford', 14.02, 28.01, 27, 14, 15);
insert into order_placed   values (43, '24/10/2018', '21/12/2018', 'Buick', 17.94, 30.27, 25, 13, 15);
insert into order_placed   values (44, '10/06/2019', '25/02/2019', 'Ford', 14.67, 30.84, 24, 15, 15);
insert into order_placed   values (45, '17/05/2019', '29/03/2019', 'Audi', 15.16, 29.89, 24, 17, 14);
insert into order_placed   values (46, '08/02/2019', '14/07/2019', 'Audi', 17.05, 29.41, 25, 15, 16);
insert into order_placed   values (47, '19/11/2018', '07/07/2019', 'Lamborghini', 16.72, 30.03, 26, 15, 13);
insert into order_placed   values (48, '22/02/2019', '22/07/2019', 'Pontiac', 14.98, 29.54, 23, 14, 16);
insert into order_placed   values (49, '26/11/2018', '25/12/2018', 'Volkswagen', 13.34, 30.48, 26, 15, 15);
insert into order_placed   values (50, '21/05/2019', '23/02/2019', 'Subaru', 15.57, 29.26, 25, 16, 15);
insert into order_placed   values (51, '22/07/2019', '23/11/2018', 'Infiniti', 13.4, 28.61, 26, 16, 16);
insert into order_placed   values (52, '23/06/2019', '15/02/2019', 'Mazda', 14.81, 30.21, 26, 15, 13);
insert into order_placed   values (53, '17/09/2019', '05/06/2019', 'Dodge', 13.73, 28.77, 25, 15, 15);
insert into order_placed   values (54, '27/08/2019', '20/12/2018', 'Dodge', 14.66, 29.84, 25, 14, 17);
insert into order_placed   values (55, '09/11/2018', '29/10/2018', 'Mitsubishi', 15.14, 28.86, 25, 15, 15);
insert into order_placed   values (56, '18/10/2018', '15/08/2019', 'Infiniti', 13.9, 29.14, 26, 16, 16);
insert into order_placed   values (57, '06/08/2019', '29/03/2019', 'Chevrolet', 16.12, 30.47, 22, 15, 16);
insert into order_placed   values (58, '03/09/2019', '12/09/2019', 'Chrysler', 16.02, 30.2, 25, 13, 13);
insert into order_placed   values (59, '02/11/2018', '04/01/2019', 'Infiniti', 16.28, 30.15, 26, 13, 16);
insert into order_placed   values (60, '07/04/2019', '30/08/2019', 'Chevrolet', 15.57, 30.7, 24, 14, 15);
insert into order_placed   values (61, '11/04/2019', '14/01/2019', 'GMC', 16.5, 30.41, 25, 15, 14);
insert into order_placed   values (62, '12/11/2018', '17/01/2019', 'Mitsubishi', 15.74, 31.05, 27, 14, 16);
insert into order_placed   values (63, '28/03/2019', '02/06/2019', 'Hummer', 13.34, 30.86, 24, 17, 16);
insert into order_placed   values (64, '09/07/2019', '03/02/2019', 'Ford', 14.07, 31.23, 26, 15, 14);
insert into order_placed   values (65, '20/10/2018', '13/08/2019', 'Buick', 15.4, 29.98, 25, 15, 15);
insert into order_placed   values (66, '04/04/2019', '06/12/2018', 'Pontiac', 13.2, 29.52, 24, 13, 15);
insert into order_placed   values (67, '06/01/2019', '23/08/2019', 'Hillman', 17.03, 29.62, 26, 15, 13);
insert into order_placed   values (68, '09/11/2018', '21/01/2019', 'Dodge', 14.67, 30.9, 26, 16, 15);
insert into order_placed   values (69, '29/11/2018', '23/10/2018', 'Toyota', 15.46, 29.46, 26, 17, 14);
insert into order_placed   values (70, '06/03/2019', '18/02/2019', 'Toyota', 13.45, 29.76, 24, 13, 17);
insert into order_placed   values (71, '18/05/2019', '30/04/2019', 'Ferrari', 14.84, 30.99, 24, 17, 15);
insert into order_placed   values (72, '14/10/2018', '04/07/2019', 'Saab', 16.24, 28.82, 25, 14, 14);
insert into order_placed   values (73, '11/11/2018', '31/12/2018', 'BMW', 14.04, 31.72, 23, 16, 15);
insert into order_placed   values (74, '14/08/2019', '20/08/2019', 'Nissan', 14.13, 31.07, 26, 16, 15);
insert into order_placed   values (75, '27/01/2019', '30/04/2019', 'Saab', 14.26, 30.57, 24, 16, 16);
insert into order_placed   values (76, '28/06/2019', '09/09/2019', 'Chevrolet', 15.53, 30.69, 26, 14, 14);
insert into order_placed   values (77, '24/05/2019', '14/05/2019', 'Mazda', 15.37, 29.69, 23, 16, 17);
insert into order_placed   values (78, '29/05/2019', '18/02/2019', 'Subaru', 15.87, 28.66, 25, 14, 17);
insert into order_placed   values (79, '25/09/2019', '13/12/2018', 'Pontiac', 14.22, 29.78, 26, 13, 15);
insert into order_placed   values (80, '05/04/2019', '09/01/2019', 'Mitsubishi', 16.41, 29.47, 25, 15, 14);
insert into order_placed   values (81, '09/01/2019', '14/10/2018', 'GMC', 15.81, 30.19, 24, 15, 15);
insert into order_placed   values (82, '09/08/2019', '15/09/2019', 'Mitsubishi', 15.85, 29.27, 25, 15, 14);
insert into order_placed   values (83, '03/12/2018', '29/01/2019', 'Mercedes-Benz', 15.32, 31.31, 26, 17, 16);
insert into order_placed   values (84, '17/03/2019', '05/11/2018', 'Dodge', 16.99, 28.41, 24, 14, 14);
insert into order_placed   values (85, '26/10/2018', '02/03/2019', 'Ford', 16.38, 29.72, 26, 14, 15);
insert into order_placed   values (86, '01/10/2018', '18/03/2019', 'Nissan', 15.83, 30.3, 25, 15, 14);
insert into order_placed   values (87, '04/04/2019', '07/07/2019', 'Lincoln', 14.87, 32.29, 26, 15, 16);
insert into order_placed   values (88, '25/02/2019', '26/06/2019', 'Toyota', 14.66, 30.38, 26, 16, 14);
insert into order_placed   values (89, '06/04/2019', '26/12/2018', 'Chevrolet', 15.56, 30.05, 24, 16, 15);
insert into order_placed   values (90, '18/07/2019', '20/05/2019', 'GMC', 15.85, 29.84, 24, 15, 17);
insert into order_placed   values (91, '15/03/2019', '16/02/2019', 'Lamborghini', 14.87, 31.04, 25, 16, 16);
insert into order_placed   values (92, '06/01/2019', '02/12/2018', 'Ford', 15.17, 28.79, 24, 15, 16);
insert into order_placed   values (93, '17/08/2019', '17/06/2019', 'Mazda', 15.98, 29.69, 23, 14, 15);
insert into order_placed   values (94, '08/09/2019', '09/03/2019', 'Infiniti', 15.79, 29.64, 26, 15, 16);
insert into order_placed   values (95, '04/01/2019', '30/11/2018', 'Land Rover', 14.39, 29.8, 25, 15, 13);
insert into order_placed   values (96, '30/04/2019', '14/01/2019', 'Pontiac', 15.61, 31.68, 26, 16, 17);
insert into order_placed   values (97, '05/08/2019', '03/04/2019', 'Dodge', 17.24, 31.35, 25, 16, 15);
insert into order_placed   values (98, '24/01/2019', '15/05/2019', 'Dodge', 16.41, 30.38, 26, 14, 15);
insert into order_placed   values (99, '07/10/2018', '07/09/2019', 'Ford', 14.48, 28.34, 25, 15, 15);
insert into order_placed   values (100, '04/09/2019', '20/05/2019', 'GMC', 14.56, 30.37, 25, 14, 16);
insert into order_placed   values (101, '06/03/2019', '06/12/2018', 'Honda', 16.02, 28.96, 24, 15, 15);
insert into order_placed   values (102, '27/04/2019', '03/12/2018', 'Mitsubishi', 15.09, 30.97, 25, 15, 15);
insert into order_placed   values (103, '12/06/2019', '16/05/2019', 'Chevrolet', 14.89, 28.71, 25, 15, 14);
insert into order_placed   values (104, '15/05/2019', '25/12/2018', 'Nissan', 17.17, 30.1, 27, 15, 15);
insert into order_placed   values (105, '25/03/2019', '11/11/2018', 'Hyundai', 16.56, 29.07, 24, 16, 15);
insert into order_placed   values (106, '26/04/2019', '01/02/2019', 'Infiniti', 14.19, 29.35, 26, 15, 14);
insert into order_placed   values (107, '23/09/2019', '09/10/2018', 'Ford', 14.59, 29.29, 25, 14, 15);
insert into order_placed   values (108, '01/10/2018', '13/04/2019', 'Audi', 15.16, 29.9, 25, 15, 16);
insert into order_placed   values (109, '23/04/2019', '14/12/2018', 'Mercury'), 13.61, 29.94, 24, 17, 15);
insert into order_placed   values (110, '12/04/2019', '07/04/2019', 'Volkswagen', 13.73, 29.52, 25, 13, 17);
insert into order_placed   values (111, '31/12/2018', '04/02/2019', 'Honda', 13.58, 31.31, 25, 15, 16);
insert into order_placed   values (112, '15/02/2019', '26/09/2019', 'Chrysler', 14.64, 30.79, 24, 16, 16);
insert into order_placed   values (113, '09/03/2019', '08/07/2019', 'GMC', 16.32, 29.99, 26, 15, 14);
insert into order_placed   values (114, '16/02/2019', '04/04/2019', 'GMC', 14.67, 31.25, 24, 15, 15);
insert into order_placed   values (115, '20/04/2019', '07/01/2019', 'Hyundai', 14.16, 29.55, 25, 14, 16);
insert into order_placed   values (116, '01/04/2019', '27/10/2018', 'Chevrolet', 15.87, 29.48, 26, 15, 17);
insert into order_placed   values (117, '07/07/2019', '24/01/2019', 'Bentley'), 16.49, 29.25, 25, 16, 16);
insert into order_placed   values (118, '29/07/2019', '23/06/2019', 'Pontiac', 15.06, 30.07, 26, 16, 14);
insert into order_placed   values (119, '28/07/2019', '05/08/2019', 'Maybach', 14.68, 31.1, 26, 17, 13);
insert into order_placed   values (120, '11/12/2018', '26/03/2019', 'Jeep', 13.98, 29.51, 24, 15, 15);
insert into order_placed   values (121, '21/06/2019', '04/10/2018', 'Dodge', 14.74, 30.97, 25, 18, 14);
insert into order_placed   values (122, '24/08/2019', '19/06/2019', 'Nissan', 15.51, 30.45, 24, 15, 14);
insert into order_placed   values (123, '22/08/2019', '11/04/2019', 'Honda', 13.44, 30.24, 24, 15, 15);
insert into order_placed   values (124, '30/06/2019', '15/07/2019', 'Acura', 16.58, 29.08, 24, 15, 17);
insert into order_placed   values (125, '23/10/2018', '12/01/2019', 'Mercedes-Benz', 15.17, 29.17, 24, 17, 16);
insert into order_placed   values (126, '12/08/2019', '04/09/2019', 'Ford', 15.26, 30.73, 26, 15, 15);
insert into order_placed   values (127, '13/12/2018', '26/03/2019', 'Mitsubishi', 16.05, 29.27, 27, 15, 14);
insert into order_placed   values (128, '20/04/2019', '02/06/2019', 'Toyota', 13.42, 31.03, 25, 15, 17);
insert into order_placed   values (129, '08/04/2019', '07/09/2019', 'Pontiac', 14.81, 30.24, 25, 15, 14);
insert into order_placed   values (130, '12/06/2019', '14/10/2018', 'Infiniti', 15.0, 30.47, 25, 13, 15);
insert into order_placed   values (131, '06/01/2019', '08/11/2018', 'Chevrolet', 16.92, 28.9, 24, 14, 15);
insert into order_placed   values (132, '06/10/2018', '04/04/2019', 'Chevrolet', 15.12, 29.44, 26, 13, 15);
insert into order_placed   values (133, '01/12/2018', '10/01/2019', 'Mercury'), 15.13, 30.61, 24, 15, 15);
insert into order_placed   values (134, '23/05/2019', '12/02/2019', 'Suzuki', 14.01, 29.01, 25, 16, 16);
insert into order_placed   values (135, '18/06/2019', '22/11/2018', 'Acura', 15.42, 29.65, 23, 14, 14);
insert into order_placed   values (136, '07/02/2019', '25/02/2019', 'Ford', 15.94, 29.67, 23, 15, 14);
insert into order_placed   values (137, '30/07/2019', '25/07/2019', 'Ferrari', 16.43, 28.24, 25, 15, 14);
insert into order_placed   values (138, '11/01/2019', '15/01/2019', 'BMW', 13.84, 31.17, 24, 14, 15);
insert into order_placed   values (139, '07/12/2018', '22/08/2019', 'Mitsubishi', 14.07, 29.47, 25, 16, 14);
insert into order_placed   values (140, '26/11/2018', '16/08/2019', 'Pontiac', 14.57, 29.07, 23, 15, 14);
insert into order_placed   values (141, '24/11/2018', '11/11/2018', 'Toyota', 15.54, 30.04, 24, 16, 13);
insert into order_placed   values (142, '11/02/2019', '04/07/2019', 'Acura', 15.25, 29.74, 27, 15, 16);
insert into order_placed   values (143, '02/12/2018', '06/11/2018', 'Oldsmobile', 14.63, 29.91, 24, 15, 14);
insert into order_placed   values (144, '11/10/2018', '15/06/2019', 'Hyundai', 15.14, 29.53, 26, 16, 14);
insert into order_placed   values (145, '24/12/2018', '12/10/2018', 'Ford', 15.93, 29.5, 26, 15, 15);
insert into order_placed   values (146, '04/08/2019', '30/07/2019', 'Chevrolet', 15.53, 29.39, 24, 15, 15);
insert into order_placed   values (147, '14/08/2019', '25/08/2019', 'Suzuki', 15.4, 28.57, 25, 15, 15);
insert into order_placed   values (148, '23/01/2019', '31/08/2019', 'BMW', 17.11, 32.92, 25, 15, 16);
insert into order_placed   values (149, '26/07/2019', '01/08/2019', 'Cadillac', 15.1, 29.67, 24, 15, 15);
insert into order_placed   values (150, '21/02/2019', '02/05/2019', 'Volkswagen', 15.65, 30.04, 26, 15, 14);
insert into order_placed   values (151, '23/08/2019', '24/08/2019', 'Pontiac', 15.26, 29.75, 24, 15, 15);
insert into order_placed   values (152, '10/05/2019', '26/04/2019', 'Toyota', 14.66, 29.68, 25, 15, 14);
insert into order_placed   values (153, '19/01/2019', '08/10/2018', 'GMC', 15.62, 29.83, 24, 14, 14);
insert into order_placed   values (154, '09/07/2019', '27/09/2019', 'Isuzu', 12.81, 29.19, 26, 15, 14);
insert into order_placed   values (155, '17/08/2019', '05/06/2019', 'Jaguar', 15.21, 30.38, 23, 17, 16);
insert into order_placed   values (156, '05/12/2018', '27/09/2019', 'Volvo', 15.2, 30.33, 26, 14, 15);
insert into order_placed   values (157, '28/12/2018', '30/12/2018', 'Volvo', 14.46, 29.72, 25, 15, 16);
insert into order_placed   values (158, '26/12/2018', '24/08/2019', 'Porsche', 14.52, 28.8, 26, 15, 14);
insert into order_placed   values (159, '10/07/2019', '02/04/2019', 'Jeep', 14.79, 29.6, 25, 15, 15);
insert into order_placed   values (160, '26/11/2018', '17/07/2019', 'Volvo', 15.42, 32.48, 22, 16, 15);
insert into order_placed   values (161, '29/07/2019', '13/09/2019', 'GMC', 15.45, 28.97, 27, 15, 15);
insert into order_placed   values (162, '30/12/2018', '02/11/2018', 'Cadillac', 15.81, 30.64, 24, 15, 16);
insert into order_placed   values (163, '18/07/2019', '06/06/2019', 'GMC', 15.77, 29.81, 25, 15, 16);
insert into order_placed   values (164, '11/08/2019', '25/09/2019', 'Dodge', 15.3, 28.29, 24, 17, 15);
insert into order_placed   values (165, '14/02/2019', '29/10/2018', 'Pontiac', 14.29, 32.16, 26, 16, 15);
insert into order_placed   values (166, '24/12/2018', '07/05/2019', 'Nissan', 15.13, 26.78, 25, 17, 13);
insert into order_placed   values (167, '09/04/2019', '17/03/2019', 'Infiniti', 14.79, 29.57, 25, 15, 14);
insert into order_placed   values (168, '30/04/2019', '01/03/2019', 'Ford', 14.97, 31.0, 25, 16, 15);
insert into order_placed   values (169, '08/09/2019', '06/10/2018', 'Infiniti', 15.88, 28.87, 25, 16, 15);
insert into order_placed   values (170, '18/12/2018', '19/02/2019', 'Chrysler', 15.01, 30.3, 24, 13, 16);
insert into order_placed   values (171, '20/11/2018', '28/10/2018', 'Ford', 14.43, 30.17, 25, 16, 17);
insert into order_placed   values (172, '23/03/2019', '09/01/2019', 'Buick', 14.61, 30.64, 25, 15, 14);
insert into order_placed   values (173, '22/08/2019', '26/04/2019', 'Chevrolet', 14.04, 30.77, 24, 15, 15);
insert into order_placed   values (174, '04/06/2019', '27/12/2018', 'Mazda', 16.0, 30.81, 26, 16, 14);
insert into order_placed   values (175, '10/10/2018', '21/03/2019', 'Ford', 15.78, 30.32, 26, 16, 15);
insert into order_placed   values (176, '26/01/2019', '30/03/2019', 'Hyundai', 15.13, 29.72, 28, 16, 15);
insert into order_placed   values (177, '06/08/2019', '13/02/2019', 'Chevrolet', 14.1, 29.91, 24, 13, 15);
insert into order_placed   values (178, '06/10/2018', '06/12/2018', 'Chevrolet', 16.57, 31.15, 24, 17, 14);
insert into order_placed   values (179, '28/12/2018', '13/09/2019', 'Chevrolet', 15.55, 31.37, 26, 16, 15);
insert into order_placed   values (180, '10/10/2018', '17/08/2019', 'Hummer', 13.74, 31.01, 24, 15, 15);
insert into order_placed   values (181, '07/09/2019', '28/07/2019', 'Toyota', 15.29, 28.99, 25, 16, 14);
insert into order_placed   values (182, '08/08/2019', '12/07/2019', 'Chevrolet', 13.67, 32.05, 26, 15, 15);
insert into order_placed   values (183, '07/05/2019', '18/05/2019', 'Mercury'), 14.85, 31.27, 26, 15, 15);
insert into order_placed   values (184, '16/04/2019', '04/04/2019', 'Mazda', 14.73, 28.89, 26, 16, 15);
insert into order_placed   values (185, '07/06/2019', '11/01/2019', 'Mazda', 14.75, 30.09, 25, 15, 17);
insert into order_placed   values (186, '27/07/2019', '21/04/2019', 'Mercury'), 15.47, 28.93, 26, 16, 15);
insert into order_placed   values (187, '01/10/2018', '25/05/2019', 'Dodge', 14.81, 28.02, 26, 14, 15);
insert into order_placed   values (188, '19/10/2018', '25/01/2019', 'BMW', 15.64, 28.17, 23, 15, 14);
insert into order_placed   values (189, '21/09/2019', '29/10/2018', 'Oldsmobile', 14.7, 29.04, 25, 17, 15);
insert into order_placed   values (190, '24/04/2019', '29/10/2018', 'Buick', 14.63, 29.67, 24, 16, 15);
insert into order_placed   values (191, '08/06/2019', '05/10/2018', 'Maybach', 13.75, 30.17, 23, 14, 14);
insert into order_placed   values (192, '05/10/2018', '07/04/2019', 'Mercedes-Benz', 15.67, 31.6, 26, 14, 14);
insert into order_placed   values (193, '24/06/2019', '16/03/2019', 'BMW', 15.81, 30.35, 24, 13, 14);
insert into order_placed   values (194, '25/06/2019', '23/06/2019', 'Ford', 17.5, 29.74, 24, 14, 14);
insert into order_placed   values (195, '28/12/2018', '14/05/2019', 'Volvo', 14.59, 29.11, 24, 15, 15);
insert into order_placed   values (196, '13/05/2019', '10/10/2018', 'Cadillac', 15.42, 30.3, 26, 17, 15);
insert into order_placed   values (197, '20/02/2019', '11/10/2018', 'Dodge', 16.03, 28.66, 25, 18, 14);
insert into order_placed   values (198, '16/12/2018', '15/08/2019', 'Lincoln', 13.87, 30.37, 26, 15, 17);
insert into order_placed   values (199, '15/02/2019', '30/03/2019', 'Volkswagen', 14.13, 29.9, 26, 16, 15);
insert into order_placed   values (200, '30/03/2019', '10/03/2019', 'Ford', 14.59, 29.6, 26, 16, 15);

            
CREATE TABLE orderlines (orderline_id NUMBER(30) NOT NULL,
            headphones_id NUMBER(30),
            orders_id NUMBER(30),
            quantity NUMBER,
            CONSTRAINT ol_pk_o_id PRIMARY KEY (orderline_id),
            CONSTRAINT ol_fk_h_id FOREIGN KEY (headphones_id) REFERENCES headphones(headphones_id),
            CONSTRAINT ol_fk_o_id FOREIGN KEY (orders_id) REFERENCES order_placed(orders_id));

insert into orderlines   values (1, 16, 100, 301);
insert into orderlines   values (2, 15, 100, 301);
insert into orderlines   values (3, 16, 101, 300);
insert into orderlines   values (4, 15, 100, 300);
insert into orderlines   values (5, 15, 100, 299);
insert into orderlines   values (6, 15, 101, 298);
insert into orderlines   values (7, 16, 101, 301);
insert into orderlines   values (8, 15, 99, 299);
insert into orderlines   values (9, 15, 101, 299);
insert into orderlines   values (10, 14, 99, 299);
insert into orderlines   values (11, 15, 100, 300);
insert into orderlines   values (12, 15, 100, 300);
insert into orderlines   values (13, 16, 99, 300);
insert into orderlines   values (14, 16, 99, 300);
insert into orderlines   values (15, 15, 102, 300);
insert into orderlines   values (16, 15, 100, 301);
insert into orderlines   values (17, 16, 98, 302);
insert into orderlines   values (18, 15, 99, 300);
insert into orderlines   values (19, 15, 101, 299);
insert into orderlines   values (20, 16, 100, 299);
insert into orderlines   values (21, 15, 100, 298);
insert into orderlines   values (22, 15, 99, 300);
insert into orderlines   values (23, 16, 99, 298);
insert into orderlines   values (24, 16, 101, 299);
insert into orderlines   values (25, 15, 98, 300);
insert into orderlines   values (26, 15, 99, 300);
insert into orderlines   values (27, 16, 103, 300);
insert into orderlines   values (28, 16, 100, 298);
insert into orderlines   values (29, 17, 100, 301);
insert into orderlines   values (30, 14, 100, 300);
insert into orderlines   values (31, 14, 101, 301);
insert into orderlines   values (32, 15, 99, 301);
insert into orderlines   values (33, 14, 100, 300);
insert into orderlines   values (34, 16, 100, 302);
insert into orderlines   values (35, 15, 98, 299);
insert into orderlines   values (36, 15, 100, 299);
insert into orderlines   values (37, 15, 98, 300);
insert into orderlines   values (38, 13, 99, 301);
insert into orderlines   values (39, 14, 101, 301);
insert into orderlines   values (40, 15, 101, 300);
insert into orderlines   values (41, 16, 99, 300);
insert into orderlines   values (42, 15, 100, 300);
insert into orderlines   values (43, 14, 99, 300);
insert into orderlines   values (44, 17, 101, 300);
insert into orderlines   values (45, 15, 102, 302);
insert into orderlines   values (46, 14, 100, 301);
insert into orderlines   values (47, 15, 99, 299);
insert into orderlines   values (48, 15, 100, 300);
insert into orderlines   values (49, 15, 97, 300);
insert into orderlines   values (50, 16, 100, 300);
insert into orderlines   values (51, 15, 102, 300);
insert into orderlines   values (52, 13, 99, 300);
insert into orderlines   values (53, 15, 100, 301);
insert into orderlines   values (54, 15, 99, 301);
insert into orderlines   values (55, 14, 98, 300);
insert into orderlines   values (56, 15, 100, 301);
insert into orderlines   values (57, 15, 101, 300);
insert into orderlines   values (58, 14, 99, 300);
insert into orderlines   values (59, 13, 98, 301);
insert into orderlines   values (60, 14, 100, 300);
insert into orderlines   values (61, 16, 100, 301);
insert into orderlines   values (62, 14, 101, 299);
insert into orderlines   values (63, 15, 99, 299);
insert into orderlines   values (64, 15, 100, 300);
insert into orderlines   values (65, 16, 99, 300);
insert into orderlines   values (66, 14, 99, 300);
insert into orderlines   values (67, 17, 101, 299);
insert into orderlines   values (68, 14, 99, 299);
insert into orderlines   values (69, 17, 100, 300);
insert into orderlines   values (70, 15, 100, 301);
insert into orderlines   values (71, 14, 101, 300);
insert into orderlines   values (72, 15, 99, 298);
insert into orderlines   values (73, 17, 100, 300);
insert into orderlines   values (74, 16, 102, 301);
insert into orderlines   values (75, 16, 99, 302);
insert into orderlines   values (76, 16, 100, 300);
insert into orderlines   values (77, 14, 101, 299);
insert into orderlines   values (78, 17, 99, 298);
insert into orderlines   values (79, 14, 101, 299);
insert into orderlines   values (80, 14, 101, 299);
insert into orderlines   values (81, 15, 99, 300);
insert into orderlines   values (82, 16, 100, 299);
insert into orderlines   values (83, 15, 100, 300);
insert into orderlines   values (84, 15, 102, 299);
insert into orderlines   values (85, 14, 100, 301);
insert into orderlines   values (86, 16, 102, 299);
insert into orderlines   values (87, 14, 100, 300);
insert into orderlines   values (88, 16, 98, 299);
insert into orderlines   values (89, 15, 100, 299);
insert into orderlines   values (90, 16, 102, 301);
insert into orderlines   values (91, 16, 98, 299);
insert into orderlines   values (92, 16, 102, 301);
insert into orderlines   values (93, 16, 101, 300);
insert into orderlines   values (94, 15, 100, 301);
insert into orderlines   values (95, 14, 101, 300);
insert into orderlines   values (96, 14, 100, 299);
insert into orderlines   values (97, 14, 100, 300);
insert into orderlines   values (98, 17, 101, 300);
insert into orderlines   values (99, 16, 100, 300);
insert into orderlines   values (100, 15, 101, 299);
insert into orderlines   values (101, 15, 98, 299);
insert into orderlines   values (102, 16, 99, 301);
insert into orderlines   values (103, 15, 99, 299);
insert into orderlines   values (104, 16, 101, 300);
insert into orderlines   values (105, 16, 99, 299);
insert into orderlines   values (106, 16, 100, 302);
insert into orderlines   values (107, 15, 101, 300);
insert into orderlines   values (108, 14, 100, 301);
insert into orderlines   values (109, 15, 100, 300);
insert into orderlines   values (110, 15, 100, 301);
insert into orderlines   values (111, 15, 100, 300);
insert into orderlines   values (112, 16, 100, 298);
insert into orderlines   values (113, 14, 100, 299);
insert into orderlines   values (114, 14, 100, 299);
insert into orderlines   values (115, 15, 100, 300);
insert into orderlines   values (116, 15, 99, 300);
insert into orderlines   values (117, 15, 98, 301);
insert into orderlines   values (118, 16, 101, 299);
insert into orderlines   values (119, 14, 100, 302);
insert into orderlines   values (120, 14, 101, 300);
insert into orderlines   values (121, 14, 102, 300);
insert into orderlines   values (122, 16, 100, 301);
insert into orderlines   values (123, 16, 100, 298);
insert into orderlines   values (124, 13, 99, 300);
insert into orderlines   values (125, 16, 101, 301);
insert into orderlines   values (126, 14, 101, 299);
insert into orderlines   values (127, 15, 100, 300);
insert into orderlines   values (128, 15, 99, 300);
insert into orderlines   values (129, 13, 100, 298);
insert into orderlines   values (130, 16, 99, 299);
insert into orderlines   values (131, 14, 100, 299);
insert into orderlines   values (132, 16, 101, 300);
insert into orderlines   values (133, 14, 99, 299);
insert into orderlines   values (134, 15, 100, 300);
insert into orderlines   values (135, 17, 99, 299);
insert into orderlines   values (136, 15, 101, 301);
insert into orderlines   values (137, 15, 100, 299);
insert into orderlines   values (138, 15, 100, 300);
insert into orderlines   values (139, 14, 98, 299);
insert into orderlines   values (140, 14, 102, 300);
insert into orderlines   values (141, 15, 101, 301);
insert into orderlines   values (142, 13, 100, 300);
insert into orderlines   values (143, 14, 98, 299);
insert into orderlines   values (144, 15, 100, 301);
insert into orderlines   values (145, 17, 100, 298);
insert into orderlines   values (146, 14, 101, 298);
insert into orderlines   values (147, 13, 100, 300);
insert into orderlines   values (148, 17, 99, 300);
insert into orderlines   values (149, 15, 101, 299);
insert into orderlines   values (150, 14, 99, 300);
insert into orderlines   values (151, 15, 100, 300);
insert into orderlines   values (152, 14, 101, 299);
insert into orderlines   values (153, 16, 100, 300);
insert into orderlines   values (154, 15, 101, 299);
insert into orderlines   values (155, 15, 101, 300);
insert into orderlines   values (156, 14, 101, 299);
insert into orderlines   values (157, 14, 100, 299);
insert into orderlines   values (158, 15, 99, 299);
insert into orderlines   values (159, 15, 99, 302);
insert into orderlines   values (160, 16, 100, 299);
insert into orderlines   values (161, 15, 100, 301);
insert into orderlines   values (162, 13, 101, 300);
insert into orderlines   values (163, 14, 102, 301);
insert into orderlines   values (164, 14, 99, 301);
insert into orderlines   values (165, 14, 102, 302);
insert into orderlines   values (166, 13, 99, 301);
insert into orderlines   values (167, 16, 101, 301);
insert into orderlines   values (168, 15, 100, 300);
insert into orderlines   values (169, 15, 101, 300);
insert into orderlines   values (170, 16, 98, 300);
insert into orderlines   values (171, 15, 98, 302);
insert into orderlines   values (172, 14, 99, 300);
insert into orderlines   values (173, 14, 101, 299);
insert into orderlines   values (174, 16, 100, 299);
insert into orderlines   values (175, 15, 99, 300);
insert into orderlines   values (176, 14, 101, 300);
insert into orderlines   values (177, 14, 100, 300);
insert into orderlines   values (178, 16, 99, 302);
insert into orderlines   values (179, 14, 99, 300);
insert into orderlines   values (180, 16, 101, 301);
insert into orderlines   values (181, 15, 103, 302);
insert into orderlines   values (182, 16, 98, 300);
insert into orderlines   values (183, 14, 102, 301);
insert into orderlines   values (184, 15, 100, 301);
insert into orderlines   values (185, 16, 101, 300);
insert into orderlines   values (186, 15, 99, 298);
insert into orderlines   values (187, 16, 100, 300);
insert into orderlines   values (188, 16, 100, 302);
insert into orderlines   values (189, 17, 100, 298);
insert into orderlines   values (190, 15, 101, 302);
insert into orderlines   values (191, 15, 99, 299);
insert into orderlines   values (192, 15, 101, 300);
insert into orderlines   values (193, 15, 99, 300);
insert into orderlines   values (194, 15, 99, 300);
insert into orderlines   values (195, 15, 102, 301);
insert into orderlines   values (196, 17, 99, 300);
insert into orderlines   values (197, 14, 100, 300);
insert into orderlines   values (198, 16, 100, 299);
insert into orderlines   values (199, 14, 99, 300);
insert into orderlines   values (200, 14, 101, 301);
insert into orderlines   values (201, 13, 101, 301);
insert into orderlines   values (202, 15, 101, 301);
insert into orderlines   values (203, 14, 101, 300);
insert into orderlines   values (204, 13, 99, 302);
insert into orderlines   values (205, 16, 101, 299);
insert into orderlines   values (206, 15, 100, 297);
insert into orderlines   values (207, 15, 100, 299);
insert into orderlines   values (208, 15, 99, 301);
insert into orderlines   values (209, 14, 98, 300);
insert into orderlines   values (210, 16, 99, 300);
insert into orderlines   values (211, 17, 99, 300);
insert into orderlines   values (212, 16, 98, 300);
insert into orderlines   values (213, 15, 100, 299);
insert into orderlines   values (214, 14, 101, 299);
insert into orderlines   values (215, 15, 99, 299);
insert into orderlines   values (216, 15, 99, 300);
insert into orderlines   values (217, 15, 101, 300);
insert into orderlines   values (218, 15, 100, 301);
insert into orderlines   values (219, 14, 98, 300);
insert into orderlines   values (220, 14, 101, 300);
insert into orderlines   values (221, 17, 100, 300);
insert into orderlines   values (222, 13, 100, 298);
insert into orderlines   values (223, 16, 100, 300);
insert into orderlines   values (224, 15, 102, 300);
insert into orderlines   values (225, 15, 99, 300);
insert into orderlines   values (226, 17, 99, 298);
insert into orderlines   values (227, 15, 100, 299);
insert into orderlines   values (228, 16, 101, 301);
insert into orderlines   values (229, 15, 101, 300);
insert into orderlines   values (230, 15, 100, 300);
insert into orderlines   values (231, 16, 101, 299);
insert into orderlines   values (232, 13, 103, 301);
insert into orderlines   values (233, 15, 101, 300);
insert into orderlines   values (234, 15, 99, 301);
insert into orderlines   values (235, 18, 99, 301);
insert into orderlines   values (236, 13, 100, 301);
insert into orderlines   values (237, 15, 100, 300);
insert into orderlines   values (238, 14, 100, 302);
insert into orderlines   values (239, 12, 99, 299);
insert into orderlines   values (240, 16, 99, 298);
insert into orderlines   values (241, 14, 100, 299);
insert into orderlines   values (242, 15, 99, 298);
insert into orderlines   values (243, 16, 100, 300);
insert into orderlines   values (244, 15, 99, 300);
insert into orderlines   values (245, 14, 98, 301);
insert into orderlines   values (246, 14, 100, 300);
insert into orderlines   values (247, 16, 102, 300);
insert into orderlines   values (248, 14, 99, 300);
insert into orderlines   values (249, 17, 100, 298);
insert into orderlines   values (250, 15, 99, 301);


CREATE TABLE return_prod (return_id NUMBER(30) NOT NULL,
            orderline_id NUMBER(30),
            return_qty NUMBER,
            return_date DATE,
            return_amt NUMBER,
            CONSTRAINT return_prod_pk PRIMARY KEY (return_id),
            CONSTRAINT return_prod_fk FOREIGN KEY (orderline_id) REFERENCES orderlines(orderline_id));


insert into return_prod   values (1, 99, 33, '31/05/2019', 300);
insert into return_prod   values (2, 99, 34, '22/12/2018', 301);
insert into return_prod   values (3, 100, 34, '25/06/2019', 300);
insert into return_prod   values (4, 101, 34, '05/01/2019', 300);
insert into return_prod   values (5, 100, 36, '14/09/2019', 302);
insert into return_prod   values (6, 101, 34, '11/09/2019', 302);
insert into return_prod   values (7, 100, 34, '12/11/2018', 298);
insert into return_prod   values (8, 100, 34, '09/02/2019', 301);
insert into return_prod   values (9, 100, 33, '23/04/2019', 301);
insert into return_prod   values (10, 99, 34, '04/06/2019', 300);
insert into return_prod   values (11, 100, 35, '01/03/2019', 301);
insert into return_prod   values (12, 99, 36, '24/12/2018', 300);
insert into return_prod   values (13, 99, 34, '18/08/2019', 299);
insert into return_prod   values (14, 100, 35, '18/09/2019', 299);
insert into return_prod   values (15, 102, 34, '06/07/2019', 300);
insert into return_prod   values (16, 99, 35, '23/04/2019', 302);
insert into return_prod   values (17, 101, 34, '29/10/2018', 300);
insert into return_prod   values (18, 101, 36, '29/04/2019', 299);
insert into return_prod   values (19, 100, 36, '13/07/2019', 300);
insert into return_prod   values (20, 98, 35, '01/08/2019', 300);
insert into return_prod   values (21, 100, 35, '08/12/2018', 300);
insert into return_prod   values (22, 99, 35, '21/10/2018', 301);
insert into return_prod   values (23, 99, 35, '26/07/2019', 299);
insert into return_prod   values (24, 99, 38, '13/07/2019', 300);
insert into return_prod   values (25, 101, 34, '05/08/2019', 301);

CREATE TABLE   emp_salary (position_id NUMBER(30),
            branch_size VARCHAR2(10),
            salary Number(10,2),
            CONSTRAINT emp_salary_pk PRIMARY KEY (position_id, branch_size, salary),
            CONSTRAINT emp_salary_fk FOREIGN KEY (POSITION_ID) REFERENCES employee_pos(employee_p_id));
            
insert into emp_salary values	('1','HQ','150000');
insert into emp_salary values	('2','HQ','100000');
insert into emp_salary values	('3','HQ','70000');
insert into emp_salary values	('4','HQ','30000');
insert into emp_salary values	('5','HQ','56000');
insert into emp_salary values	('6','HQ','30000');
insert into emp_salary values	('7','HQ','40000');
insert into emp_salary values	('8','HQ','48000');
insert into emp_salary values	('9','HQ','42000');
insert into emp_salary values	('2','BG','80000');
insert into emp_salary values	('3','BG','60000');
insert into emp_salary values	('4','BG','25000');
insert into emp_salary values	('5','BG','50000');
insert into emp_salary values	('6','BG','23000');
insert into emp_salary values	('7','BG','35000');
insert into emp_salary values	('8','BG','40000');
insert into emp_salary values	('9','BG','35000');
insert into emp_salary values	('2','MD','65000');
insert into emp_salary values	('3','MD','54000');
insert into emp_salary values	('4','MD','22000');
insert into emp_salary values	('5','MD','45000');
insert into emp_salary values	('6','MD','20000');
insert into emp_salary values	('7','MD','31000');
insert into emp_salary values	('8','MD','38000');
insert into emp_salary values	('9','MD','30000');
insert into emp_salary values	('2','SM','50000');
insert into emp_salary values	('3','SM','41000');
insert into emp_salary values	('4','SM','20000');
insert into emp_salary values	('5','SM','40000');
insert into emp_salary values	('6','SM','17500');
insert into emp_salary values	('7','SM','28000');
insert into emp_salary values	('8','SM','34000');
insert into emp_salary values	('9','SM','26000');

Create Table pos_duration (
	duration_id NUMBER(30),
	start_date Date Not Null,
	end_date Date,
	position_id Number(30),
	EMPLOYEES_ID NUmber(30),
	CONSTRAINT pos_duration_pk_d_id PRIMARY Key (duration_id),
	CONSTRAINT pos_d_fk_e_id FOREIGN KEY (EMPLOYEES_ID) REFERENCES employees(EMPLOYEES_ID),
	CONSTRAINT pos_d_fk_p_id FOREIGN KEY (position_id) REFERENCES EMPLOYEE_POS(EMPLOYEE_P_ID));

Alter table Customers add cust_sex CHAR(5);

update customers set cust_sex = 'F' where customer_id =	1;
update customers set cust_sex = 'M' where customer_id =	2;
update customers set cust_sex = 'M' where customer_id =	3;
update customers set cust_sex = 'M' where customer_id =	4;
update customers set cust_sex = 'F' where customer_id =	5;
update customers set cust_sex = 'M' where customer_id =	6;
update customers set cust_sex = 'M' where customer_id =	7;
update customers set cust_sex = 'M' where customer_id =	8;
update customers set cust_sex = 'M' where customer_id =	9;
update customers set cust_sex = 'M' where customer_id =	10;
update customers set cust_sex = 'M' where customer_id =	11;
update customers set cust_sex = 'M' where customer_id =	12;
update customers set cust_sex = 'M' where customer_id =	13;
update customers set cust_sex = 'F' where customer_id =	14;
update customers set cust_sex = 'F' where customer_id =	15;
update customers set cust_sex = 'F' where customer_id =	16;
update customers set cust_sex = 'F' where customer_id =	17;
update customers set cust_sex = 'M' where customer_id =	18;
update customers set cust_sex = 'M' where customer_id =	19;
update customers set cust_sex = 'M' where customer_id =	20;
update customers set cust_sex = 'F' where customer_id =	21;
update customers set cust_sex = 'M' where customer_id =	22;
update customers set cust_sex = 'M' where customer_id =	23;
update customers set cust_sex = 'M' where customer_id =	24;
update customers set cust_sex = 'M' where customer_id =	25;
update customers set cust_sex = 'M' where customer_id =	26;
update customers set cust_sex = 'F' where customer_id =	27;
update customers set cust_sex = 'F' where customer_id =	28;
update customers set cust_sex = 'M' where customer_id =	29;
update customers set cust_sex = 'F' where customer_id =	30;
update customers set cust_sex = 'F' where customer_id =	31;
update customers set cust_sex = 'M' where customer_id =	32;
update customers set cust_sex = 'M' where customer_id =	33;
update customers set cust_sex = 'F' where customer_id =	34;
update customers set cust_sex = 'F' where customer_id =	35;
update customers set cust_sex = 'F' where customer_id =	36;
update customers set cust_sex = 'M' where customer_id =	37;
update customers set cust_sex = 'M' where customer_id =	38;
update customers set cust_sex = 'F' where customer_id =	39;
update customers set cust_sex = 'M' where customer_id =	40;
update customers set cust_sex = 'M' where customer_id =	41;
update customers set cust_sex = 'F' where customer_id =	42;
update customers set cust_sex = 'M' where customer_id =	43;
update customers set cust_sex = 'F' where customer_id =	44;
update customers set cust_sex = 'F' where customer_id =	45;
update customers set cust_sex = 'M' where customer_id =	46;
update customers set cust_sex = 'M' where customer_id =	47;
update customers set cust_sex = 'F' where customer_id =	48;
update customers set cust_sex = 'F' where customer_id =	49;
update customers set cust_sex = 'M' where customer_id =	50;

alter table employees add sex CHAR(5);

update employees set sex = 'F' where employees_id =	1;
update employees set sex = 'M' where employees_id =	2;
update employees set sex = 'M' where employees_id =	3;
update employees set sex = 'M' where employees_id =	4;
update employees set sex = 'F' where employees_id =	5;
update employees set sex = 'M' where employees_id =	6;
update employees set sex = 'M' where employees_id =	7;
update employees set sex = 'M' where employees_id =	8;
update employees set sex = 'M' where employees_id =	9;
update employees set sex = 'M' where employees_id =	10;
update employees set sex = 'M' where employees_id =	11;
update employees set sex = 'M' where employees_id =	12;
update employees set sex = 'M' where employees_id =	13;
update employees set sex = 'F' where employees_id =	14;
update employees set sex = 'F' where employees_id =	15;
update employees set sex = 'F' where employees_id =	16;
update employees set sex = 'F' where employees_id =	17;
update employees set sex = 'M' where employees_id =	18;
update employees set sex = 'M' where employees_id =	19;
update employees set sex = 'M' where employees_id =	20;
update employees set sex = 'F' where employees_id =	21;
update employees set sex = 'M' where employees_id =	22;
update employees set sex = 'M' where employees_id =	23;
update employees set sex = 'M' where employees_id =	24;
update employees set sex = 'M' where employees_id =	25;
update employees set sex = 'M' where employees_id =	26;
update employees set sex = 'F' where employees_id =	27;
update employees set sex = 'F' where employees_id =	28;
update employees set sex = 'M' where employees_id =	29;
update employees set sex = 'F' where employees_id =	30;	


alter table headphones add QTY_reorder NUMBER(8);

update headphones set qty_reorder = 63	 where headphones_id =	1;
update headphones set qty_reorder = 83	 where headphones_id =	2;
update headphones set qty_reorder = 79	 where headphones_id =	3;
update headphones set qty_reorder = 60	 where headphones_id =	4;
update headphones set qty_reorder = 69	 where headphones_id =	5;
update headphones set qty_reorder = 97	 where headphones_id =	6;
update headphones set qty_reorder = 55	 where headphones_id =	7;
update headphones set qty_reorder = 76	 where headphones_id =	8;
update headphones set qty_reorder = 80	 where headphones_id =	9;
update headphones set qty_reorder = 50	 where headphones_id =	10;
update headphones set qty_reorder = 58	 where headphones_id =	11;
update headphones set qty_reorder = 81	 where headphones_id =	12;
update headphones set qty_reorder = 88	 where headphones_id =	13;
update headphones set qty_reorder = 90	 where headphones_id =	14;
update headphones set qty_reorder = 51	 where headphones_id =	15;
update headphones set qty_reorder = 79	 where headphones_id =	16;
update headphones set qty_reorder = 60	 where headphones_id =	17;
update headphones set qty_reorder = 87	 where headphones_id =	18;
update headphones set qty_reorder = 93	 where headphones_id =	19;
update headphones set qty_reorder = 79	 where headphones_id =	20;
update headphones set qty_reorder = 77	 where headphones_id =	21;
update headphones set qty_reorder = 79	 where headphones_id =	22;
update headphones set qty_reorder = 94	 where headphones_id =	23;
update headphones set qty_reorder = 66	 where headphones_id =	24;
update headphones set qty_reorder = 95	 where headphones_id =	25;
update headphones set qty_reorder = 61	 where headphones_id =	26;
update headphones set qty_reorder = 89	 where headphones_id =	27;
update headphones set qty_reorder = 78	 where headphones_id =	28;
update headphones set qty_reorder = 80	 where headphones_id =	29;
update headphones set qty_reorder = 69	 where headphones_id =	30;


alter table headphones add purch_qty NUMBER(8);

update headphones set purch_qty = 	94	 where headphones_id =	1	  ;
update headphones set purch_qty = 	65	 where headphones_id =	2	  ;
update headphones set purch_qty = 	87	 where headphones_id =	3	  ;
update headphones set purch_qty = 	71	 where headphones_id =	4	  ;
update headphones set purch_qty = 	61	 where headphones_id =	5	  ;
update headphones set purch_qty = 	66	 where headphones_id =	6	  ;
update headphones set purch_qty = 	62	 where headphones_id =	7	  ;
update headphones set purch_qty = 	62	 where headphones_id =	8	  ;
update headphones set purch_qty = 	69	 where headphones_id =	9	  ;
update headphones set purch_qty = 	86	 where headphones_id =	10	  ;
update headphones set purch_qty = 	76	 where headphones_id =	11	  ;
update headphones set purch_qty = 	68	 where headphones_id =	12	  ;
update headphones set purch_qty = 	96	 where headphones_id =	13	  ;
update headphones set purch_qty = 	69	 where headphones_id =	14	  ;
update headphones set purch_qty = 	98	 where headphones_id =	15	  ;
update headphones set purch_qty = 	81	 where headphones_id =	16	  ;
update headphones set purch_qty = 	57	 where headphones_id =	17	  ;
update headphones set purch_qty = 	61	 where headphones_id =	18	  ;
update headphones set purch_qty = 	88	 where headphones_id =	19	  ;
update headphones set purch_qty = 	75	 where headphones_id =	20	  ;
update headphones set purch_qty = 	53	 where headphones_id =	21	  ;
update headphones set purch_qty = 	50	 where headphones_id =	22	  ;
update headphones set purch_qty = 	64	 where headphones_id =	23	  ;
update headphones set purch_qty = 	77	 where headphones_id =	24	  ;
update headphones set purch_qty = 	95	 where headphones_id =	25	  ;
update headphones set purch_qty = 	79	 where headphones_id =	26	  ;
update headphones set purch_qty = 	100	 where headphones_id =	27	  ;
update headphones set purch_qty = 	82	 where headphones_id =	28	  ;
update headphones set purch_qty = 	54	 where headphones_id =	29	  ;
update headphones set purch_qty = 	53	 where headphones_id =	30	  ;


alter table customers add check (cust_sex IN  ('F', 'M'));
 
alter table employees add check (sex IN  ('F', 'M'));

drop table prices;
create table prices (
	price_id Number(30), 
	qty_range Varchar2(30),
	price Number,
	start_date Date,
	End_date Date,
	headphones_id NUMBER(30),
	CONSTRAINT prices_pk_p_id PRIMARY KEY (price_id, qty_range),
	CONSTRAINT prices_fk_h_id FOREIGN KEY (headphones_id) REFERENCES HEADPHONES(HEADPHONES_ID));

Insert into prices values(1, '1-25', 20, '01/01/2001', '29/12/2005', 1);
Insert into prices values(2, '26-50', 15, '01/02/2001', '29/12/2005', 1);
Insert into prices values(3, '50<', 10, '01/03/2001', '29/12/2005', 1);
Insert into prices values(4, '1-25', 18, '01/04/2001', '29/12/2005', 2);
Insert into prices values(5, '26-50', 15, '01/05/2001', '29/12/2005', 2);
Insert into prices values(6, '50<', 13, '01/06/2001', '29/12/2005', 2);
Insert into prices values(7, '1-25', 25, '01/07/2001', '29/12/2005', 3);
Insert into prices values(8, '26-50', 20, '01/08/2001', '29/12/2005', 3);
Insert into prices values(9, '50<', 15, '01/09/2001', '29/12/2005', 3);
Insert into prices values(10, '1-25', 23, '01/10/2001', '29/12/2005', 4);
Insert into prices values(11, '26-50', 17, '01/11/2001', '29/12/2005', 4);
Insert into prices values(12, '50<', 12, '01/12/2001', '29/12/2005', 4);
Insert into prices values(13, '1-25', 20, '01/01/2001', '29/12/2005', 5);
Insert into prices values(14, '26-50', 16, '01/02/2001', '29/12/2005', 5);
Insert into prices values(15, '50<', 11, '01/03/2001', '29/12/2005', 5);
Insert into prices values(16, '1-25', 20, '01/04/2001', '29/12/2005', 6);
Insert into prices values(17, '26-50', 16, '01/05/2001', '29/12/2005', 6);
Insert into prices values(18, '50<', 10, '01/06/2001', '29/12/2005', 7);
Insert into prices values(19, '1-25', 20, '01/07/2001', '29/12/2005', 8);
Insert into prices values(20, '26-50', 19, '01/08/2001', '29/12/2005', 8);


create table commission (
        commission_id Number(30),
        commission_amt Number(10,2),
        commission_month Date,
        employees_id Number(30),
        CONSTRAINT commission_pk_c_id PRIMARY KEY (commission_id),
        CONSTRAINT commision_fk_e_id FOREIGN KEY (employees_id) REFERENCES employees(employees_id));


Insert into commission values (1, 500.23, to_date('12/2004', 'mm/yyyy'), 1);
Insert into commission values (2, 250.23, to_date('12/2004', 'mm/yyyy'), 2);
Insert into commission values (3, 511.23, to_date('12/2004', 'mm/yyyy'), 3);
Insert into commission values (4, 10.23, to_date('12/2004', 'mm/yyyy'), 4);
Insert into commission values (5, 110.23, to_date('12/2004', 'mm/yyyy'), 5);
Insert into commission values (6, 1500.23, to_date('12/2004', 'mm/yyyy'), 6);
Insert into commission values (7, 2500.23, to_date('12/2004', 'mm/yyyy'), 7);
Insert into commission values (8, 101.23, to_date('12/2004', 'mm/yyyy'), 8);
Insert into commission values (9, 500.23, to_date('12/2004', 'mm/yyyy'), 9);
Insert into commission values (10, 50.23, to_date('12/2004', 'mm/yyyy'), 10);
Insert into commission values (11, 50.23, to_date('12/2004', 'mm/yyyy'), 11);
Insert into commission values (12, 502.23, to_date('12/2004', 'mm/yyyy'), 12);
Insert into commission values (13, 20.23, to_date('12/2004', 'mm/yyyy'), 13);
Insert into commission values (14, 90.23, to_date('12/2004', 'mm/yyyy'), 14);
Insert into commission values (15, 70.23, to_date('12/2004', 'mm/yyyy'), 15);
Insert into commission values (16, 800.23, to_date('12/2004', 'mm/yyyy'), 16);
Insert into commission values (17, 500.23, to_date('12/2004', 'mm/yyyy'), 17);
Insert into commission values (18, 1100.23, to_date('12/2004', 'mm/yyyy'), 18);
Insert into commission values (19, 789.23, to_date('12/2004', 'mm/yyyy'), 19);
Insert into commission values (20, 56.23, to_date('12/2004', 'mm/yyyy'), 20);
Insert into commission values (21, 46.23, to_date('12/2004', 'mm/yyyy'), 21);
Insert into commission values (22, 58.23, to_date('12/2004', 'mm/yyyy'), 22);
Insert into commission values (23, 80.23, to_date('12/2004', 'mm/yyyy'), 23);
Insert into commission values (24, 40.23, to_date('12/2004', 'mm/yyyy'), 24);
Insert into commission values (25, 280.23, to_date('12/2004', 'mm/yyyy'), 25);
        
		
create table emp_pos_duration (emp_pos_duration_id Number(30),
				employee_p_id Number(30),
				employees_id Number(30),
				start_date Date,
				end_date Date,
				Constraint employee_pos_pk_e_p_id PRIMARY KEY (emp_pos_duration_id),
				CONSTRAINT employee_fk_e_id FOREIGN KEY (employees_id) 
						REFERENCES employees(employees_id),
				CONSTRAINT employee_pos_d_fk_e_id FOREIGN KEY (employee_p_id) 
						REFERENCES employee_pos(employee_p_id));
						
alter table employees drop column employee_p_id;



alter table address add check (state IN  ('AK', 'AL', 'AR', 'AZ', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI',
                                            'IA', 'ID', 'IL', 'IN', 'KS', 'Ky'), 'LA', 'MA', 'MD', 'ME', 'MI',
                                            'MN', 'MO', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV',
                                            'Ny'), 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT',
                                            'VA', 'VT', 'WA', 'WI', 'WV', 'WY'));
											
create table regions (regions_id Number(30),
					region_name Varchar2(50),
					Constraint regions_pk_r_id PRIMARY KEY (regions_id));
					
alter table address add regions_id NUMBER(30);
alter table address add constraint address_fk_r_id FOREIGN KET (REGIONS_ID)
					REFERENCES regions(regions_id);
					
				