/* AUTHORE : AZHAR UD DIN
 * ROLL NO:  0115-BSCS-20
 * DATE    : 04/07/2022 6:33 AM
 * DATABASE: THIS  DATABASE IS ABOUT SUPERMARKET SYSTEM MANAGEMNET
            IN WHICH STORES MANAGED,PRODUCT,SALES,CUSTOMER,PAYEMENT,LOGIN 
			IS MANAGED.
 */

CREATE DATABASE SuperMarket
USE  SuperMarket
-- creating tables related to superMarket management System
		  CREATE	TABLE OWNER(
			owner_id  TINYINT NOT NULL CONSTRAINT won_pk  PRIMARY KEY , --TAKES 0-255 INTEGER
			firstName VARCHAR(15) NOT NULL, --VARCHAR WILL GAIN AS MUCH STORAGE AS NAME IS IN 15 CHAR
			lastName  VARCHAR(15) NULL ,
			phoneNumber VARCHAR(11) NOT NULL UNIQUE,
			address		varchar(20) NOT NULL,
			)
			----------INSERTION OF VALUES-----------
			INSERT INTO  OWNER(owner_id,  firstName,lastName,phoneNumber, address)
			VALUES (1,'AZHAR','UD DIN','03160822366','OLD ANARKALI FARID KOT')
			INSERT INTO  OWNER(owner_id,  firstName,lastName,phoneNumber, address)
			VALUES (2,'QASEEM','KHAN','03160822323',' LAHORE Z00')
			INSERT INTO  OWNER(owner_id,  firstName,lastName,phoneNumber, address)
			VALUES (3,'NASEEM','AHMED','12345632','OLD QUETTA')
			INSERT INTO  OWNER(owner_id,  firstName,phoneNumber, address)
			VALUES(4,'SHJHAN',023432322,'SEBI ROAD')

			
			-----------
			ALTER TABLE OWNER
			ALTER COLUMN address varchar(30)
			-----------
			
			CREATE TABLE STOCK( 
			stk_id varchar(8) NOT NULL CONSTRAINT stk_pk PRIMARY KEY,
			stk_location VARCHAR(8) NOT NULL,
			)

			--INSERTION VALUES-----------
			INSERT INTO STOCK(stk_id,stk_location)
			VALUES('11A','2B1')
			INSERT INTO STOCK(stk_id,stk_location)
			VALUES('12A','2B2')
			INSERT INTO STOCK(stk_id,stk_location)
			VALUES('13A','2B3')
			INSERT INTO STOCK(stk_id,stk_location)
			VALUES('14A','2B4')
			

			CREATE TABLE MANAGER(
			  ma_id TINYINT CONSTRAINT mang_pk PRIMARY KEY,
			  ma_firstName  varchar(20) NOT NULL,
			  ma_lastName VARCHAR(20) NULL,
			  ma_email  VARCHAR(20) NOT NULL ,
			  ma_address VARCHAR(20) NOT NULL,
			  ma_phoneNumber  VARCHAR(11),
			  ma_salary SMALLMONEY NOT NULL,
			  ma_dateJoin DATE NOT NULL,
			  ma_SSN  NUMERIC(9) NOT NULL
			  )
			 ---- --INSERTION VALUES----------
			 --record 1
			 INSERT INTO MANAGER(
			  ma_id ,
			  ma_firstName,  
			  ma_lastName ,
			  ma_email  ,
			  ma_address ,
			  ma_phoneNumber,  
			  ma_salary,
			  ma_dateJoin, 
			 ma_SSN  
			  )
			  VALUES(
			  '23',
			  'SHEZAD',
			  'AHMED',
			  '123@gmail.com',
			  'old anarkali',
			  '023534222',
			  25000.00,
			  '04/6/2021',
			  2334561
			  )
			  --record2
			   INSERT INTO MANAGER(
			  ma_id ,
			  ma_firstName,  
			  ma_lastName ,
			  ma_email  ,
			  ma_address ,
			  ma_phoneNumber,  
			  ma_salary,
			  ma_dateJoin, 
			 ma_SSN  
			  )
			  VALUES(
			  '24',
			  'NADEEM',
			  'AHMED',
			  '115@gmail.com',
			  '12 STREED NEW STREET',
			  '024445332',
			  28000.00,
			  '05/6/2020',
			  2400003
			  )
			  --record3
			   INSERT INTO MANAGER(
			  ma_id ,
			  ma_firstName,  
			  ma_lastName ,
			  ma_email  ,
			  ma_address ,
			  ma_phoneNumber,  
			  ma_salary,
			  ma_dateJoin, 
			 ma_SSN  
			  )
			  VALUES(
			  '25',
			  'DIN',
			  'MUHAMMAD',
			  'AZGHAR@gmail.com',
			  '115 STREET QUETTA',
			  '09344452234',
			  30000.00,
			  '04/6/2022',
			  2400098
			  )
			  --record4
			   INSERT INTO MANAGER(
			  ma_id ,
			  ma_firstName,  
			  ma_lastName ,
			  ma_email  ,
			  ma_address ,
			  ma_phoneNumber,  
			  ma_salary,
			  ma_dateJoin, 
			 ma_SSN  
			  )
			  VALUES(
			  '26',
			  'NAJEEB',
			  'MUHAMMAD',
			  'AZ112@gmail.com',
			  '12 STREET QUETTA',
			  '0934563454',
			  31000.00,
			  '05/3/2022',
			  2400100
			  )

		  CREATE TABLE STORE(
		    str_id TINYINT  NOT NULL PRIMARY KEY,
			str_name VARCHAR(15) NOT NULL,
			str_location VARCHAR(10)NOT NULL,
			fk_owner_Id TINYINT NOT NULL CONSTRAINT str_own_fk REFERENCES OWNER(owner_id),
			fk_manager_id TINYINT   NOT NULL UNIQUE  CONSTRAINT str_mang_fk REFERENCES MANAGER(ma_id),
			fk_stock_id  VARCHAR(8) NOT NULL UNIQUE CONSTRAINT strs_stk_fk REFERENCES STOCK(stk_id)
			)
			--CHAGES IN STORE
			--drop TABLE STORE
			

				/*ALTER TABLE STORE 
				ALTER COLUMN fk_owner_Id TINYINT NOT NULL
				ALTER TABLE STORE 
				DROP COLUMN fk_owner_Id */

				-------INSERTION IN STORE
				--RECORD1
				INSERT INTO STORE(
		    str_id ,
			str_name ,
			str_location ,
			fk_owner_Id ,
			fk_manager_id ,
			fk_stock_id  
			)
			VALUES (
			1,
			'GROCERY STORE',
			'113 SEC-B',
			1,
			23,
			'11A'
			)
			--RECORD2
			INSERT INTO STORE(
		    str_id ,
			str_name ,
			str_location ,
			fk_owner_Id ,
			fk_manager_id ,
			fk_stock_id  
			)
			VALUES (
			2,
			'CLOTHES STORE',
			'113 SEC-C',
			2,
			24,
			'12A'
			)
			--RECORD3
			INSERT INTO STORE(
		    str_id ,
			str_name ,
			str_location ,
			fk_owner_Id ,
			fk_manager_id ,
			fk_stock_id  
			)
			VALUES (
			3,
			'MEDICINE STORE',
			'114 SEC-A',
			2,
			25,
			'13A'
			)
			--RECORD4
			INSERT INTO STORE(
		    str_id ,
			str_name ,
			str_location ,
			fk_owner_Id ,
			fk_manager_id ,
			fk_stock_id  
			)
			VALUES (
			4,
			'FURNITURE STORE',
			'113 SEC-D',
			3,
			26,
			'14A'
			)
			

		CREATE TABLE DEPARTEMENT(
		d_id SMALLINT PRIMARY KEY,
		fk_store_id TINYINT NOT NULL CONSTRAINT dep_str_id_fk REFERENCES STORE(str_id),
		d_name VARCHAR(20) NOT NULL ,
		d_location VARCHAR(20) NOT NULL,
		department_type  VARCHAR(15) NOT NULL
		)
		INSERT INTO DEPARTEMENT(
		d_id, 
		fk_store_id ,
		d_name ,
		d_location, 
		department_type
		)
		VALUES(
		100,
		1,
		'GROCERY  DEP',
		'103A',
		'GROCERY'
		)
		INSERT INTO DEPARTEMENT(
		d_id, 
		fk_store_id ,
		d_name ,
		d_location, 
		department_type
		)
		VALUES(
		101,
		4,
		'CHAIRS DEP',
		'104A',
		'FURNITURE '
		)

		INSERT INTO DEPARTEMENT(
		d_id, 
		fk_store_id ,
		d_name ,
		d_location, 
		department_type
		)
		VALUES(
		102,
		4,
		'TABLE DEP',
		'105A',
		'FURNITURE '
		)
		INSERT INTO DEPARTEMENT(
		d_id, 
		fk_store_id ,
		d_name ,
		d_location, 
		department_type
		)
		VALUES(
		103,
		4,
		'BOARD DEP',
		'106A',
		'FURNITURE '
		)

	

		CREATE TABLE JOB_TITLE(
		j_id VARCHAR(8) PRIMARY KEY,
		j_name VARCHAR(20) NOT NULL UNIQUE
		)
		
		INSERT INTO JOB_TITLE(
		j_id ,
		j_name
		)
		VALUES(
		'hd_1',
		'head of departement '
		)
		INSERT INTO JOB_TITLE(
		j_id ,
		j_name
		)
		VALUES(
		'cash_2',
		'cashier '
		)
		INSERT INTO JOB_TITLE(
		j_id ,
		j_name
		)
		VALUES(
		'stk_3',
		'stock management '
		)
		INSERT INTO JOB_TITLE(
		j_id ,
		j_name
		)
		VALUES(
		'sel-4',
		' sel management '
		)
		

		

	--	DROP TABLE JOB_TITLE
		CREATE TABLE EMPLOYEE(
		emp_id INT PRIMARY KEY ,
		emp_firstName VARCHAR(20) NOT NULL,
		emp_lastName VARCHAR(20) NULL ,
		emp_SSN NUMERIC(9) NOT NULL UNIQUE,
		emp_address VARCHAR(20) NOT NULL,
		emp_email VARCHAR(20) NOT NULL,
		emp_phoneNumber VARCHAR(11) NOT NULL,
		emp_salary SMALLMONEY NOT NULL,
		emp_dateJoin DATE NOT NULL,
		fk_job_id VARCHAR(8) NULL CONSTRAINT emp_job_title_fk REFERENCES JOB_TITLE(j_id) ,
		fk_manager_id TINYINT NULL CONSTRAINT emp_mang_fk REFERENCES MANAGER(ma_id) ,
		fk_emp_id INT NULL CONSTRAINT emp_emp_fk REFERENCES EMPLOYEE(emp_id) ,
		fk_stock_id VARCHAR(8)  NULL CONSTRAINT emp_stock_id REFERENCES STOCK(STK_ID)   ,
		fk_dep_id SMALLINT NOT NULL CONSTRAINT emp_dep_fk REFERENCES DEPARTEMENT(d_id)
		)
	  INSERT INTO EMPLOYEE(
		emp_id ,
		emp_firstName,
		emp_lastName,
		emp_SSN ,
		emp_address,
		emp_email ,
		emp_phoneNumber,
		emp_salary ,
		emp_dateJoin ,
		fk_job_id,
		fk_manager_id ,
		fk_stock_id,
		fk_dep_id 
		)
		VALUES(
		1,
		'ALI',
		'AHMED',
		'544',
		'NEW 1 STREET',
		'1234@GMAIL.COM',
		'(+92)112334',
		24000.00,
		'4/08/2013',
		'hd_1',
		26,
		
		'14A',
		102
		)
		INSERT INTO EMPLOYEE(
		emp_id ,
		emp_firstName,
		emp_lastName,
		emp_SSN ,
		emp_address,
		emp_email ,
		emp_phoneNumber,
		emp_salary ,
		emp_dateJoin ,
		fk_job_id,
		fk_stock_id,
		fk_dep_id 
		)
		VALUES(
		2,
		'AZHAR',
		'AHMED',
		'545',
		'NEW 2 STREET',
		'1235@GMAIL.COM',
		'(+92)123334',
		24000.00,
		'4/08/2015',
		'cash_2',
		'14A',
		102
		)
		INSERT INTO EMPLOYEE(
		emp_id ,
		emp_firstName,
		emp_lastName,
		emp_SSN ,
		emp_address,
		emp_email ,
		emp_phoneNumber,
		emp_salary ,
		emp_dateJoin ,
		fk_job_id,
		fk_stock_id,
		fk_dep_id 
		)
		VALUES(
		3,
		'alifthekar',
		'AHMED',
		'546',
		'NEW 3 STREET',
		'1236@GMAIL.COM',
		'(+92)124334',
		2100.00,
		'4/06/2014',
		'stk_3',
		'14A',
		102
		)
		INSERT INTO EMPLOYEE(
		emp_id ,
		emp_firstName,
		emp_lastName,
		emp_SSN ,
		emp_address,
		emp_email ,
		emp_phoneNumber,
		emp_salary ,
		emp_dateJoin ,
		fk_job_id,
		
		fk_stock_id,
		fk_dep_id 
		)
		VALUES(
		4,
		'alifthekar',
		'AHMED',
		'547',
		'NEW 5 STREET',
		'1237@GMAIL.COM',
		'(+92)124334',
		2100.00,
		'4/06/2014',
		'sel-4',
		
		'14A',
		102
		)
		UPDATE  EMPLOYEE
		SET fk_manager_id = 26
		where emp_id = 1
		UPDATE EMPLOYEE
		SET fk_emp_id=1,emp_firstName='hasnen',emp_lastName='khan'
		WHERE emp_id=4
		

		CREATE TABLE ADMIN(
		admin_id VARCHAR(20) NOT NULL PRIMARY KEY,
		emp_id INT NULL UNIQUE CONSTRAINT admin_emp_id_fk REFERENCES EMPLOYEE(emp_id)
		)
		INSERT INTO ADMIN(
		admin_id
		)
		VALUES(
		'10A'
		)
		
		INSERT INTO ADMIN(
		admin_id
		)
		VALUES(
		'9A'
		)
		update ADMIN
		set emp_id =3
		where admin_id ='10A'

		CREATE TABLE LOGIN(
		log_id VARCHAR(20) NOT NULL PRIMARY KEY,
		fk_emp_id INT NULL UNIQUE CONSTRAINT log_emp_fk REFERENCES EMPLOYEE(emp_id),
		fk_admin_id VARCHAR(20) NOT NULL  CONSTRAINT log_admin_fk REFERENCES ADMIN(admin_id) ,
		log_userName VARCHAR(20) NOT NULL UNIQUE,
		log_password VARCHAR(20) NOT NULL UNIQUE
		)
		
		INSERT INTO  LOGIN(
		log_id ,
		fk_admin_id  ,
		log_userName ,
		log_password 
		)
		VALUES(
		'ABC1',
		'9A',
		'aZHAR',
		'123'
		)
		INSERT INTO  LOGIN(
		log_id ,
		fk_admin_id ,
		log_userName ,
		log_password 
		)
		VALUES(
		'ABC2',
		'10A',
		'KHANI',
		'12345567.'
		)
		INSERT INTO  LOGIN(
		log_id ,
		fk_emp_id,
		fk_admin_id ,
		log_userName ,
		log_password 
		)
		VALUES(
		'ABC3',
		2,
		'10A',
		'AHMED',
		'12346.'
		)
		CREATE TABLE CATEGORY(
		ca_id VARCHAR(20) PRIMARY KEY,
		ca_name VARCHAR(30) NOT NULL UNIQUE
		 )
		 INSERT INTO CATEGORY(
		ca_id ,
		ca_name 
		 )
		 VALUES(
		 'P100',
		 'ST_TABLE'
		 )
		  INSERT INTO CATEGORY(
		ca_id ,
		ca_name 
		 )
		 VALUES(
		 'P101',
		 'LG_TABLE'
		 )
		   INSERT INTO CATEGORY(
		ca_id ,
		ca_name 
		 )
		 VALUES(
		 'P102',
		 'L1_BOARD'
		 )
		  INSERT INTO CATEGORY(
		ca_id ,
		ca_name 
		 )
		 VALUES(
		 'P103',
		 'NEL_CHAIR'
		 )
		 
		CREATE TABLE PRODUCT(
		pr_id VARCHAR(30) PRIMARY KEY,
		pr_name VARCHAR(30) NOT NULL ,
		pr_price SMALLMONEY NOT NULL,
		pr_quantity INT NOT NULL,
		fk_stock_id  VARCHAR(8) NOT NULL UNIQUE CONSTRAINT pr_stock_id REFERENCES STOCK(stk_id) ,
		fk_category_id  VARCHAR(20) NULL  CONSTRAINT pr_category_fk REFERENCES CATEGORY(ca_id)
		)
		ALTER TABLE PRODUCT 
		ALTER COLUMN fk_stock_id  VARCHAR(8) NOT NULL-- NOT UNIQUE
	    
		INSERT INTO PRODUCT(
		pr_id ,
		pr_name  ,
		pr_price ,
		pr_quantity,
		fk_stock_id   ,
		fk_category_id  
		)
		VALUES(
		'1a',
		'WHEEL CHAIR',
	     100.23,
		 5,
		 '14A',
		 'P103'
		)
		INSERT INTO PRODUCT(
		pr_id ,
		pr_name  ,
		pr_price ,
		pr_quantity,
		fk_stock_id   ,
		fk_category_id  
		)
		VALUES(
		'2b',
		'WHITE BOARD',
	     50.40,
		 3,
		 '13A',
		 'P102'
		)
		UPDATE PRODUCT

		
		--DROP TABLE PRODUCT
		CREATE TABLE CUSTOMER(
		cus_id VARCHAR(10) NOT NULL PRIMARY KEY,
		cu_firstName VARCHAR(20) NOT NULL,
		cus_lastName VARCHAR(20) NULL,
		cus_phoneNumber VARCHAR(13) NOT NULL,
		cus_delivery_address VARCHAR(25) NULL,
		cus_email VARCHAR(20) NOT NULL,
		cus_accountNo VARCHAR(20) NULL
		)
		INSERT INTO CUSTOMER(
		cus_id ,
		cu_firstName ,
		cus_lastName ,
		cus_phoneNumber ,
		cus_delivery_address ,
		cus_email ,
		cus_accountNo
		)
		VALUES(
		'CUS1',
		'NAYEEM',
		'KHAN',
		'+923344552',
		'ASDDF STRREET ANARKALI',
		'12@gmail.com',
		'4556221'
		)
		INSERT INTO CUSTOMER(
		cus_id ,
		cu_firstName ,
		cus_lastName ,
		cus_phoneNumber ,
		cus_delivery_address ,
		cus_email ,
		cus_accountNo
		)
		VALUES(
		'CUS2',
		'NAdeem',
		'KHAN',
		'+92345644552',
		'old  ANARKALI',
		'12341@gmail.com',
		'4556231221'
		)
		CREATE TABLE SUPPLIER(
		sup_id VARCHAR(10) NOT NULL PRIMARY KEY,
		sup_firstName VARCHAR(20) NOT NULL ,
		sup_lastName VARCHAR(20) NULL,
		sup_phoneNumber VARCHAR(15) NOT NULL,
		sup_email VARCHAR(20) NOT NULL ,
		sup_address VARCHAR(20) NOT NULL,
		sup_cnic VARCHAR(14) NOT NULL
		)
		INSERT INTO SUPPLIER(
		sup_id ,
		sup_firstName  ,
		sup_lastName ,
		sup_phoneNumber ,
		sup_email  ,
		sup_address ,
		sup_cnic
		)
		VALUES(
		'SU1',
		'SHAHHEEN',
		'CVA',
		'+9233344555',
		'123FS@gmail.com',
		'were street',
		'543323333'
		)
		INSERT INTO SUPPLIER(
		sup_id ,
		sup_firstName  ,
		sup_lastName ,
		sup_phoneNumber ,
		sup_email  ,
		sup_address ,
		sup_cnic
		)
		VALUES(
		'SU2',
		'Sharjeel',
		'anwar',
		'+923345274555',
		'115S@gmail.com',
		'arooj street',
		'5445622223333'
		)
		
		CREATE TABLE SALES_PRODUCT(
		sales_product_id VARCHAR(20) NOT NULL PRIMARY KEY,
		sal_date DATE NOT NULL,
		sal_quantity SMALLINT NOT NULL,
		fk_customer_id VARCHAR(10) NOT NULL CONSTRAINT sal_cust_if_fk REFERENCES CUSTOMER(cus_id) ,
		fk_product_id VARCHAR(30) NOT NULL CONSTRAINT sal_pr_fk REFERENCES PRODUCT(pr_id),
		fk_emp_selled_id INT NOT NULL CONSTRAINT sal_emp_fk  REFERENCES EMPLOYEE(emp_id) ,
		fk_supplier_id VARCHAR(10) NULL CONSTRAINT sal_sup_id_fk REFERENCES SUPPLIER(sup_id) ,
		sal_dilivery_charge SMALLMONEY NULL,
		sal_amount SMALLMONEY NOT NULL
		)
		INSERT INTO SALES_PRODUCT(
		sales_product_id ,
		sal_date ,
		sal_quantity ,
		fk_customer_id  ,
		fk_product_id,
		fk_emp_selled_id  ,
		fk_supplier_id  ,
		sal_dilivery_charge ,
		sal_amount 
		)
		VALUES (
		'SAL1',
		'12-aug-2022',
		1,
		'CUS2',
		'2b',
		4,
		'SU2',
	     40.00,
		 50.40
		)
		INSERT INTO SALES_PRODUCT(
		sales_product_id ,
		sal_date ,
		sal_quantity ,
		fk_customer_id  ,
		fk_product_id,
		fk_emp_selled_id  ,
		sal_amount 
		)
		VALUES (
		'SAL2',
		'13-aug-2022',
		1,
		'CUS1',
		'2b',
		4, 
		 50.40
		)
		
		CREATE TABLE BILL_PAYMENT(
		bil_id VARCHAR(15) NOT NULL PRIMARY KEY,
		bil_date DATETIME DEFAULT(GETDATE()) --CURRENT TIME 
		)
		INSERT INTO  BILL_PAYMENT(
		bil_id 
		)
		VALUES(
		'1B'
		)
		INSERT INTO  BILL_PAYMENT(
		bil_id 
		)
		VALUES(
		'2B'
		)
		INSERT INTO  BILL_PAYMENT(
		bil_id 
		)
		VALUES(
		'3B'
		)
		CREATE TABLE MAKING_BILL(
		fk_bil_id VARCHAR(15) NOT NULL CONSTRAINT bil_payed_time_id_fk REFERENCES BILL_PAYMENT(bil_id),
		fk_cashier_id INT NOT NULL CONSTRAINT bil_chashier_id_fk REFERENCES EMPLOYEE(emp_id),
	    fk_sal_product_id VARCHAR(20) NOT NULL CONSTRAINT bil_sal_pr_id_fk REFERENCES  SALES_PRODUCT(sales_product_id)
		)
		INSERT INTO MAKING_BILL(
		fk_bil_id ,
		fk_cashier_id ,
	    fk_sal_product_id 
		)
		VALUES(
		'1B',
		2,
		'SAL2'
		)
		INSERT INTO MAKING_BILL(
		fk_bil_id ,
		fk_cashier_id ,
	    fk_sal_product_id 
		)
		VALUES(
		'2B',
		2,
		'SAL1'
		)

		CREATE TABLE VENDOR_PRODUCT(
		ven_product_id VARCHAR(30) NOT NULL PRIMARY KEY,
		ven_product_name VARCHAR(20) NOT NULL,
		ven_productcategory VARCHAR(20) NOT NULL
		)
		INSERT INTO VENDOR_PRODUCT(
		ven_product_id,
		ven_product_name ,
		ven_productcategory 
		)
		VALUES(
		'WH1',
		'WHEEL CHAIR',
		'FURNITURE'
		)


		CREATE TABLE VENDOR(
		ven_id VARCHAR(15) NOT NULL PRIMARY KEY,
		ven_name VARCHAR(20) NOT NULL,
		ven_product_ID VARCHAR(30) NOT NULL CONSTRAINT ven_pr_identity_fk REFERENCES VENDOR_PRODUCT(ven_product_id),
		Ven_pro_manufacturer VARCHAR(30) NOT NULL,
		ven_address VARCHAR(30) NOT NULL,
		ven_phoneNumber VARCHAR(13) NOT NULL,
		ven_email VARCHAR(20) NOT NULL
	    )
		INSERT INTO VENDOR(
		ven_id ,
		ven_name ,
		ven_product_ID ,
		Ven_pro_manufacturer ,
		ven_address ,
		ven_phoneNumber ,
		ven_email 
	    )
		values(
		'ven1',
		'ali',
		'WH1',
		'wheel chair company',
		'anarkali',
		'+92302822',
		'ass12@gmail.com'
		)

		CREATE TABLE ORDERS(
		order_id VARCHAR(15) NOT NULL PRIMARY KEY,
		fk_vendor_id VARCHAR(15) NOT NULL CONSTRAINT order_deler_id REFERENCES VENDOR(ven_id),
		fk_product_id VARCHAR(30) NOT NULL CONSTRAINT ven_prod_identity_fk REFERENCES VENDOR_PRODUCT(ven_product_id),
		order_quantity INT NOT NULL, 
		order_date DATE NOT NULL,
		order_totalPrice SMALLMONEY NOT NULL,
		fk_emp_id INT NOT NULL CONSTRAINT order_done_emp_fk REFERENCES EMPLOYEE(emp_id) ,
		order_vendor_payedInAdvance BIT NOT NULL
		)
		INSERT INTO ORDERS(
		order_id ,
		fk_vendor_id ,
		fk_product_id ,
		order_quantity , 
		order_date ,
		order_totalPrice ,
		fk_emp_id  ,
		order_vendor_payedInAdvance 
		)
		VALUES(
		'ORD1',
		'ven1',
		'WH1',
		3,
		'12-SEP-2022',
	     3000.00,
		 3,
		 1
		 )




