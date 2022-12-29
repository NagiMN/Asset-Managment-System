USE [CAROAssetManagement]
GO


--JOB CATEGORY
ALTER TABLE CARO_job_category ADD CONSTRAINT PK_CARO_job_category  PRIMARY KEY CLUSTERED (job_category_id);
ALTER TABLE CARO_job_category ADD CONSTRAINT CK_CARO_job_category_id  CHECK (job_category_id IN ( 'A', 'O'));
ALTER TABLE CARO_job_category ALTER COLUMN job_title VARCHAR(25) NOT NULL;


--CLEARANCE LEVEL
ALTER TABLE CARO_clearance_level ADD CONSTRAINT PK_CARO_clearance_lv PRIMARY KEY CLUSTERED (clearance_level);
ALTER TABLE CARO_clearance_level ALTER COLUMN level_desc VARCHAR(255) NOT NULL;


--SYSTEM USER
ALTER TABLE CARO_system_user ADD CONSTRAINT PK_CARO_sys_user PRIMARY KEY CLUSTERED (personel_id);
ALTER TABLE CARO_system_user ADD CONSTRAINT FK1_CARO_job_cat_CARO_sys_user FOREIGN KEY (job_category_id) REFERENCES CARO_job_category;
ALTER TABLE CARO_system_user ADD CONSTRAINT FK2_CARO_clear_lv_CARO_sys_user FOREIGN KEY (clearance_level) REFERENCES CARO_clearance_level;
ALTER TABLE CARO_system_user ADD CONSTRAINT CK_CARO_system_user_phone_number CHECK (user_phone_number LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' and len(user_phone_number)=10);	
ALTER TABLE CARO_system_user ALTER COLUMN user_name VARCHAR(20) NOT NULL;
ALTER TABLE CARO_system_user ALTER COLUMN user_password VARCHAR(20) NOT NULL;
ALTER TABLE CARO_system_user ALTER COLUMN user_first_name VARCHAR(50) NOT NULL;
ALTER TABLE CARO_system_user ALTER COLUMN user_last_name VARCHAR(50) NOT NULL;
ALTER TABLE CARO_system_user ALTER COLUMN date_of_hire DATE NOT NULL;
ALTER TABLE CARO_system_user ALTER COLUMN user_phone_number VARCHAR(10)NOT NULL; --XXX-XXX-XXXX
ALTER TABLE CARO_system_user ALTER COLUMN user_email VARCHAR(50) NOT NULL;


--LOCATION
ALTER TABLE CARO_location ADD CONSTRAINT PK_CARO_location PRIMARY KEY CLUSTERED (location_id);
ALTER TABLE CARO_location ADD CONSTRAINT CK_CARO_location_phone CHECK (location_phone  LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' and len(location_phone)=10);	
ALTER TABLE CARO_location ALTER COLUMN location_name VARCHAR(30) NOT NULL;
ALTER TABLE CARO_location ALTER COLUMN location_address VARCHAR(50) NOT NULL;
ALTER TABLE CARO_location ALTER COLUMN location_email VARCHAR(50) NOT NULL;
--ALTER TABLE CARO_location ALTER COLUMN number_of_staff VARCHAR NOT NULL; --new Mar 9,2022
ALTER TABLE CARO_location ALTER COLUMN location_phone VARCHAR(10)NOT NULL;  --new Mar 9,2022


--ASSET CATEGORY	
ALTER TABLE CARO_asset_category ADD CONSTRAINT PK_CARO_asset_category PRIMARY KEY (asset_category);
ALTER TABLE CARO_asset_category ALTER COLUMN asset_category_description VARCHAR(50) NOT NULL;


--BRAND	
ALTER TABLE CARO_brand ADD CONSTRAINT PK_CARO_brand PRIMARY KEY (brand_id);
ALTER TABLE CARO_brand ALTER COLUMN brand_name VARCHAR(20) NOT NULL;


--VENDOR
ALTER TABLE CARO_vendor ADD CONSTRAINT PK_CARO_vendor PRIMARY KEY (vendor_id);
ALTER TABLE CARO_vendor	ADD CONSTRAINT CK_CARO_vendor_phone_number CHECK  (vendor_phone_number  LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' and len(vendor_phone_number)=10);	
ALTER TABLE CARO_vendor	ALTER COLUMN vendor_name VARCHAR(50) NOT NULL;
ALTER TABLE CARO_vendor	ALTER COLUMN vendor_phone_number VARCHAR(10)NOT NULL;


--DEPRECIATION INFORMATION
ALTER TABLE CARO_depreciation_information ADD CONSTRAINT PK_CARO_depreciation_info PRIMARY KEY (deprec_info_id);
ALTER TABLE CARO_depreciation_information ADD CONSTRAINT FK1_time_interval_id_time_intervalId FOREIGN KEY (time_interval_id) REFERENCES CARO_depreciation_time_interval;


--ASSET
ALTER TABLE CARO_asset ADD CONSTRAINT PK_CARO_asset PRIMARY KEY (asset_id);
ALTER TABLE CARO_asset ADD CONSTRAINT FK1_CARO_vendor_CARO_asset FOREIGN KEY (vendor_id) REFERENCES CARO_vendor;
ALTER TABLE CARO_asset ADD CONSTRAINT FK2_CARO_brand_CARO_asset FOREIGN KEY (brand_id) REFERENCES CARO_brand;
ALTER TABLE CARO_asset ADD CONSTRAINT FK3_CARO_location_CARO_asset FOREIGN KEY (location_id) REFERENCES CARO_location; 
ALTER TABLE CARO_asset ADD CONSTRAINT FK4_CARO_deprec_info_id_CARO_asset FOREIGN KEY (deprec_info_id) REFERENCES CARO_depreciation_information;
ALTER TABLE CARO_asset ADD CONSTRAINT FK5_CARO_asset_cat_CARO_asset FOREIGN KEY (asset_category) REFERENCES CARO_asset_category;
ALTER TABLE CARO_asset ADD CONSTRAINT FK6_CARO_system_user_CARO_asset FOREIGN KEY (added_by) REFERENCES CARO_system_user (personel_id);
ALTER TABLE CARO_asset ALTER COLUMN asset_name VARCHAR(50) NOT NULL;


--ASSIGNED TO
ALTER TABLE CARO_assigned_to ADD CONSTRAINT PK_CARO_assigned_to PRIMARY KEY (personel_id, asset_id);
ALTER TABLE CARO_assigned_to ADD CONSTRAINT FK1_CARO_user_CARO_assigned_to FOREIGN KEY (personel_id) REFERENCES CARO_system_user;
ALTER TABLE CARO_assigned_to ADD CONSTRAINT FK2_CARO_asset_CARO_assigned_to FOREIGN KEY (asset_id) REFERENCES CARO_asset;