drop table return_prod cascade constraints;
drop table orderlines cascade constraints;
drop table order_placed cascade constraints;
drop table headphones_BRAND cascade constraints;
drop table brand_price cascade constraints;
drop table o_brands cascade constraints;
drop table o_employees cascade constraints;
drop table o_customers cascade constraints;
drop table O_BRANCHES cascade constraints;
drop table headphones cascade constraints;
drop type emp2 force;
drop type address2 force;
drop type cust2 force;
drop type person2 force;
drop type address_table force;


create or replace type person2 as object
	( lname varchar2(30),
	fname varchar2(30),
	SSN Varchar2(13),
	sex char(1),
	birth_day DATE,
	member function current_age return Number,
	Pragma Restrict_references(current_age, WNDS))
	NOT FINAL;
	/
	
Create or replace type EMP2 under person2
	( phone_number Varchar2(15),
	email Varchar2(30)
	);
	/
	
	
create or replace type cust2 under person2(
	email Varchar2(35),
	credit_limit Number
	);
	/
	
	

CREATE OR REPLACE TYPE address2 AS OBJECT 
	(address_type	varchar2(10),
	STREET VARCHAR2(50),
	CITY VARCHAR2 (15),
	STATE VARCHAR2 (2),
	ZIP NUMBER (5));
	/
    
create or replace type body person2 as
member function current_age return number 
is
   age number;
   begin
      age := trunc((sysdate - self.birth_day)/365.25);
      return age;
   end;
end;
/

CREATE TYPE address_table AS TABLE OF
Address2;
/
--creating Object Based Branches Table
 CREATE TABLE O_BRANCHES
   (BR_ID NUMBER(30,0) NOT NULL, 
   branch_name Varchar2(50),
   branch_phone VARCHAR2(15),
   Branch_address Address_Table,
    CONSTRAINT o_branches_pk_br_id PRIMARY KEY (br_id))
	NESTED TABLE branch_address STORE AS nested_branch_address_table;

Insert into O_branches (br_id, branch_name, branch_phone, Branch_address)
	Values (100, 'Mankato Headphones', '870-210-1431', address_table(address2('permanent', '225 briargate road', 'Mankato', 'MN', 56001)));
	
Insert into O_branches (br_id, branch_name, branch_phone, Branch_address)
	Values (101, 'Jonesboro Headphones', '870-210-2431', address_table(address2('permanent', '12 state st', 'Jonesboro', 'MN', 42541)));
	
Insert into O_branches (br_id, branch_name, branch_phone, Branch_address)
	Values (102, 'Memphis Headphones', '650-210-1431', address_table(address2('permanent', '1818 union st', 'Mankato', 'TN', 52501)));
	
--------------------------------------------------------
--  DDL for Table HEADPHONES Table
--------------------------------------------------------
CREATE TABLE HEADPHONES
   (HEADPHONEs_ID NUMBER(30) NOT NULL, 
	HP_STYLE VARCHAR2(30), 
	PROD_DESCRIPTION VARCHAR2(150), 
	UNIT_CP NUMBER, 
	UNIT_SP NUMBER, 
	ORDER_QTY NUMBER, 
	PURCH_QTY NUMBER,
	QTY_reorder Number,
	disc_qty Number,
	disc_price Number,
	DAMAGED NUMBER,
    CONSTRAINT headpones_pk_h_id PRIMARY KEY (headphones_id)
   );
   
Insert into headphones   values (1, 'headphones', 'wireless', 6, 19, 32, 13, 25, 10, 14, 8 );
Insert into headphones   values (2, 'headphones', 'wired', 6, 18, 29, 13, 25, 10, 12, 6 );
Insert into headphones   values (3, 'earphones', 'wireless', 6, 17, 60, 13, 25, 10, 13, 0 );
Insert into headphones   values (4, 'earphones', 'wired', 6, 16, 58, 13, 25, 10, 11, 3 );
Insert into headphones   values (5, 'earbuds', 'wireless', 6, 18, 49, 13, 25, 10, 11, 1 );


--Creating object Oriented employee table	
CREATE TABLE O_EMPLOYEES(
	EMPLOYEES_ID NUMBER(30) not null,
	EMPLOYEE emp2,
	start_date Date Not Null,
	End_date Date,
	emp_address ADDRESS_TABLE,
	BR_ID NUMBER(30) not null,
	CONSTRAINT EMPLOYEES_BRANCH_NO_FK FOREIGN KEY (BR_ID) REFERENCES O_BRANCHES(BR_ID),
	CONSTRAINT EMPLOYEES_NO_PK PRIMARY KEY (EMPLOYEES_ID))
	NESTED TABLE emp_address STORE AS nested_emp_address_table;
	
Insert into o_employees ( employees_id, employee, start_date, end_date, emp_address, br_id)
	Values ( 2000, 
		emp2( 'Gurung', 'Naresh', '123-456-7890', 'M', '16/12/1996' , '870-214-7846', 'gurungnaresh495@gmail.com'),
		'08/01/2016', Null, 
		ADDRESS_TABLE(address2('Home', '123 roger st', 'Mankato', 'MN', 34001)), 100);
		
Insert into o_employees ( employees_id, employee, start_date, end_date, emp_address, br_id)
	Values ( 2001, 
		emp2( 'Rai', 'Rubik', '456-456-7890', 'M', '18/08/1994', '612-214-7746', 'rubikrai@gmail.com'),
		'08/01/2014', Null,
		ADDRESS_TABLE(address2('Home', '1820 adam st', 'Austin', 'TX', 65210)), 101);
		
Insert into o_employees ( employees_id, employee, start_date, end_date, emp_address, br_id)
	Values ( 2002, 
		emp2( 'Khatri', 'Anita', '882-21-1422', 'F', '02/02/1999', '410-251-5555', 'anitakhatri@gmail.com'),
		'01/01/2018',  Null,
		ADDRESS_TABLE(address2('Home', '112 linx st', 'New York', 'NY', 82210)), 102);

--Creating Object Oriented Student TABLE
CREATE TABLE O_CUSTOMERs(
CUSTOMERS_ID NUMBER(30) not null,
Phone_NO VARCHAR2(15) null,
BALANCE NUMBER null,
BR_ID NUMBER(30) null,	
CUSTOMER CUST2, 
CUST_ADDRESS ADDRESS_TABLE,
CONSTRAINT CUSTOMERS_NUM_PK PRIMARY KEY (CUSTOMERS_ID),
CONSTRAINT CUSTOMERS_BRANCH_NO_FK FOREIGN KEY (BR_ID) REFERENCES O_BRANCHES(BR_ID))
NESTED TABLE cust_address STORE AS nested_cust_address_table;

Insert into O_customers (customers_id, Phone_no, balance, br_id, customer, cust_address)
	Values (3000, '234-111-1231', 2000, 102, 
	cust2('Sapkota', 'Saroj', '124-21-2314', 'M', '26/10/1994', 'sarojsapkota@gmail.com', 2500),
	Address_table(address2('Home', '1222 fernbrrok ln', 'Hennepin', 'MN', 57165)));

Insert into O_customers (customers_id, Phone_no, balance, br_id, customer, cust_address)
	Values (3001, '345-787-6666', 1500, 100, 
	cust2('Pradhan', 'Avisek', '215-21-8914', 'M', '25/11/1999', 'abhpradhan@gmail.com', 3000),
	Address_table(address2('Home', '215 leray ave', 'Kato', 'AZ', 57165)));
	
Insert into O_customers (customers_id, Phone_no, balance, br_id, customer, cust_address)
	Values (3002, '222-111-1231', 2300, 100, 
	cust2('Khatiwada', 'Utsav', '198-53-2314', 'M', '05/12/1991', 'khatutsav@gmail.com', 2500),
	Address_table(address2('Home', '12 union ln', 'Kansas', 'WI', 12122)));
	
Insert into O_customers (customers_id, Phone_no, balance, br_id, customer, cust_address)
	Values (3003, '982-121-1378', 1000, 101, 
	cust2('Hendry', 'Sara', '214-87-8747', 'F', '05/09/1998', 'sarahhendry@gmail.com', 2600),
	Address_table(address2('Home', '78 hedge drive', 'Yeter', 'MD', 51235)));
	
Insert into O_customers (customers_id, Phone_no, balance, br_id, customer, cust_address)
	Values (3004, '234-111-1231', 2000, 102, 
	cust2('Hart', 'Alina', '124-21-2334', 'F', '16/01/2000', 'alinahart@gmail.com', 2300),
	Address_table(address2('Home', '123 archer ln', 'Dempay', 'ND', 57239)));
	
Insert into O_customers (customers_id, Phone_no, balance, br_id, customer, cust_address)
	Values (3005, '521-111-8771', 1500, 102, 
	cust2('Alaba', 'Jordi', '785-134-6475', 'M', '02/04/1799', 'alabajordi@gmail.com', 2000),
	Address_table(address2('Home', '174 rockford ln', 'Hartford', 'OH', 57165)));
	


--Creating Object Oriented Brands Table
CREATE TABLE O_BRANDS
   (BRANDS_ID NUMBER(30) NOT NULL, 
	BRANDS_NAME VARCHAR2(50), 
	email Varchar2(50),
	Phone_NO Varchar2(15),
	brand_address ADDRESS_TABLE,
    CONSTRAINT oo_brandS_pk_b_id PRIMARY KEY (brands_id))
	NESTED TABLE brand_address STORE AS nested_brand_address_table;
   
   
Insert into o_brands 
	(brands_id, brands_name, email, phone_no, brand_address)
	Values(5001, 'Microsoft', 'microsoft@outlook.com', '787-877-1234', 
	ADDRESS_TABLE(address2('permanent', '123 strat lane', 'Redmond', 'WA', 24523)));
   
Insert into o_brands 
	(brands_id, brands_name, email, phone_no, brand_address)
	Values(5002, 'SONY', 'sony@sony.com', '123-877-5555', 
	ADDRESS_TABLE(address2('permanent', '78 cheska road', 'New York', 'NY', 22223)));
	
Insert into o_brands 
	(brands_id, brands_name, email, phone_no, brand_address)
	Values(5003, 'Apple', 'apple@icloud.com', '227-822-1894', 
	ADDRESS_TABLE(address2('permanent', '2300 first lane', 'Cupertino', 'CA', 24523)));
	
	
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
    CONSTRAINT b_price_fk_b_id FOREIGN KEY (BRANDS_id) REFERENCES O_BRANDS (BRANDS_id),
    CONSTRAINT b_price_fk_h_id FOREIGN KEY (headphones_id) REFERENCES headphones(headphones_id)
   );
   
insert into brand_price   values (1, 5001, 5, 9.8, '23/04/2018', '25/06/2019');
insert into brand_price   values (2, 5001, 1, 1.78, '31/07/2018', '19/06/2019');
insert into brand_price   values (3, 5003, 3, 1.08, '04/01/2018', '14/07/2019');
insert into brand_price   values (4, 5003, 2, 9.76, '18/02/2018', '29/08/2019');
insert into brand_price   values (5, 5002, 4, 9.27, '17/10/2018', '11/07/2019');
insert into brand_price   values (6, 5001, 2, 1.47, '24/09/2018', '12/06/2019');
insert into brand_price   values (7, 5003, 2, 9.09, '14/06/2018', '14/07/2019');
insert into brand_price   values (8, 5001, 3, 2.6, '05/08/2018', '06/05/2019');
insert into brand_price   values (9, 5003, 1, 2.89, '14/12/2018', '19/09/2019');
insert into brand_price   values (10, 5002, 1, 8.07, '14/07/2018', '09/04/2019');
insert into brand_price   values (11, 5001, 3, 2.67, '05/02/2018', '21/02/2019');
insert into brand_price   values (12, 5002, 1, 3.03, '09/01/2018', '27/06/2019');
insert into brand_price   values (13, 5003, 3, 8.76, '02/12/2018', '07/09/2019');

--------------------------------------------------------
--  DDL for Table headphones_BRAND
--------------------------------------------------------

CREATE TABLE headphones_BRAND  (headphones_b_id NUMBER(30) NOT NULL,
            BRANDS_id NUMBER(30),
            headphones_id NUMBER(30),
            order_date DATE,
            expected_rcv_date DATE,
            actual_rcv_date DATE,
            quantity NUMBER,
            CONSTRAINT headphones_pk_h_n_id PRIMARY KEY (headphones_b_id),
            CONSTRAINT headphones_fk_b_id FOREIGN KEY (BRANDS_id) REFERENCES o_BRANDS (BRANDS_id),
            CONSTRAINT headphones_fk_h_id FOREIGN KEY (headphones_id) REFERENCES headphones(headphones_id));
			
insert into headphones_brand   values (1, 5001, 1, '20/01/2019', '27/11/2018', '14/03/2019', 50);
insert into headphones_brand   values (2, 5003, 1, '19/02/2019', '21/02/2019', '17/05/2019', 50);
insert into headphones_brand   values (3, 5001, 1, '07/06/2019', '26/03/2019', '17/07/2019', 49);
insert into headphones_brand   values (4, 5002, 2, '17/02/2019', '06/04/2019', '17/05/2019', 50);
insert into headphones_brand   values (5, 5002, 2, '25/10/2018', '10/05/2019', '21/10/2018', 52);
insert into headphones_brand   values (6, 5003, 3, '23/01/2019', '06/02/2019', '05/10/2018', 50);
insert into headphones_brand   values (7, 5001, 3, '23/01/2019', '03/03/2019', '08/01/2019', 52);
insert into headphones_brand   values (8, 5002, 4, '09/12/2018', '27/05/2019', '15/07/2019', 49);
insert into headphones_brand   values (9, 5003, 4, '25/07/2019', '20/08/2019', '10/10/2018', 53);
insert into headphones_brand   values (10, 5001, 5, '10/09/2019', '18/07/2019', '15/06/2019', 49);
insert into headphones_brand   values (11, 5002, 5, '08/10/2018', '26/03/2019', '06/02/2019', 49);
--------------------------------------------------------
--  DDL for Table order_placed
--------------------------------------------------------

CREATE TABLE order_placed (orders_id NUMBER(30) Not Null,
            order_date DATE,
            ship_date DATE,
            shipping_method VARCHAR2(30),
            tax_amt NUMBER(5,2),
            shipping_charge NUMBER(5,2),
            customers_id NUMBER(30),
            employees_id NUMBER(30),
            branches_id NUMBER(30),
            CONSTRAINT order_pk_o_id PRIMARY KEY (orders_id),
            CONSTRAINT order_fk_c_id FOREIGN KEY (customers_id) REFERENCES O_customers(customers_id),
            CONSTRAINT order_fk_e_id FOREIGN KEY (EMPLOYEES_ID) REFERENCES O_EMPLOYEES(EMPLOYEES_ID),
            CONSTRAINT order_fk_b_id FOREIGN KEY (branches_id) REFERENCES O_branches(br_id));
			
			
insert into order_placed   values (1, '23/08/2019', '18/02/2019', 'Mazda', 14.08, 30.76, 3000, 2000, 100);
insert into order_placed   values (2, '09/05/2019', '12/05/2019', 'Chevrolet', 14.43, 28.98, 3001, 2001, 100);
insert into order_placed   values (3, '20/12/2018', '30/05/2019', 'Hyundai', 16.19, 27.83, 3000, 2000, 100);
insert into order_placed   values (4, '19/01/2019', '08/09/2019', 'Toyota', 15.35, 29.22, 3001, 2001, 100);
insert into order_placed   values (5, '12/06/2019', '03/12/2018', 'Chevrolet', 16.39, 30.32, 3002, 2001, 101);
insert into order_placed   values (6, '31/01/2019', '24/01/2019', 'Acura', 16.24, 28.82, 3000, 2002, 101);
insert into order_placed   values (7, '01/03/2019', '21/10/2018', 'Isuzu', 15.11, 29.88, 3005, 2001, 101);
insert into order_placed   values (8, '27/11/2018', '30/11/2018', 'Audi', 15.88, 30.32, 3004, 2002, 101);
insert into order_placed   values (9, '25/11/2018', '26/08/2019', 'Land Rover', 13.96, 29.31, 3003, 2000, 101);
insert into order_placed   values (10, '26/08/2019', '12/01/2019', 'Chevrolet', 13.5, 29.01, 3001, 2002, 101);
insert into order_placed   values (11, '17/05/2019', '06/12/2018', 'Suzuki', 14.53, 30.52, 3000, 2000, 102);
insert into order_placed   values (12, '10/05/2019', '09/07/2019', 'Lexus', 14.75, 29.31, 3004, 2002, 102);
insert into order_placed   values (13, '29/05/2019', '11/02/2019', 'Kia', 16.96, 29.8, 3002, 2001, 102);
insert into order_placed   values (14, '23/02/2019', '19/01/2019', 'Ford', 13.9, 28.68, 3005, 2002, 102);
insert into order_placed   values (15, '16/11/2018', '22/02/2019', 'Saturn', 15.11, 30.42, 3001, 2001, 102);
insert into order_placed   values (16, '16/04/2019', '01/10/2018', 'Mazda', 15.94, 30.71, 3001, 2000, 102);
			
--------------------------------------------------------
--  DDL for Table orderlines
--------------------------------------------------------
            
CREATE TABLE orderlines (orderline_id NUMBER(30) NOT NULL,
            headphones_id NUMBER(30),
            orders_id NUMBER(30),
            quantity NUMBER,
            CONSTRAINT ol_pk_o_id PRIMARY KEY (orderline_id),
            CONSTRAINT ol_fk_h_id FOREIGN KEY (headphones_id) REFERENCES headphones(headphones_id),
            CONSTRAINT ol_fk_o_id FOREIGN KEY (orders_id) REFERENCES order_placed(orders_id));

insert into orderlines   values (1, 1, 1, 21);
insert into orderlines   values (2, 1, 2, 301);
insert into orderlines   values (3, 1, 3, 300);
insert into orderlines   values (4, 1, 4, 300);
insert into orderlines   values (5, 1, 5, 299);
insert into orderlines   values (6, 1, 6, 298);
insert into orderlines   values (7, 1, 7, 301);
insert into orderlines   values (8, 2, 8, 299);
insert into orderlines   values (9, 2, 9, 299);
insert into orderlines   values (10, 2, 10, 299);
insert into orderlines   values (11, 2, 11, 300);
insert into orderlines   values (12, 2, 12, 300);
insert into orderlines   values (13, 3, 13, 300);
insert into orderlines   values (14, 3, 14, 300);
insert into orderlines   values (15, 4, 15, 300);
insert into orderlines   values (16, 4, 16, 301);
insert into orderlines   values (17, 4, 1, 302);
insert into orderlines   values (18, 4, 2, 300);
insert into orderlines   values (19, 4, 3, 299);
insert into orderlines   values (20, 5, 4, 299);
insert into orderlines   values (21, 5, 5, 298);
insert into orderlines   values (22, 5, 6, 300);
insert into orderlines   values (23, 5, 7, 298);
insert into orderlines   values (24, 5, 8, 299);

--------------------------------------------------------
--  DDL for Table return_prod
--------------------------------------------------------

CREATE TABLE return_prod (return_id NUMBER(30) NOT NULL,
            orderline_id NUMBER(30),
            return_qty NUMBER,
            return_date DATE,
            return_amt NUMBER,
            CONSTRAINT return_prod_pk PRIMARY KEY (return_id),
            CONSTRAINT return_prod_fk FOREIGN KEY (orderline_id) REFERENCES orderlines(orderline_id));
			
insert into return_prod   values (1, 1, 2, '31/05/2019', 30);
insert into return_prod   values (2, 5, 3, '22/12/2018', 45);
insert into return_prod   values (3, 10, 1, '25/06/2019', 15);
insert into return_prod   values (4, 11, 1, '05/01/2019', 15);
insert into return_prod   values (5, 12, 2, '14/09/2019', 30);
insert into return_prod   values (6, 20, 3, '11/09/2019', 45);
insert into return_prod   values (7, 24, 4, '12/11/2018', 60);

