USE [CAROAssetManagement]
GO


DROP TABLE CARO_activity_log;
DROP TABLE CARO_assigned_to;
--DROP TABLE CARO_added_by;
DROP TABLE CARO_asset;
--DROP TABLE CARO_depreciation_report;
DROP TABLE CARO_depreciation_information;
DROP TABLE CARO_vendor;
DROP TABLE CARO_brand;
DROP TABLE CARO_asset_category;
--DROP TABLE CARO_room;
DROP TABLE CARO_location;
DROP TABLE CARO_system_user;
DROP TABLE CARO_clearance_level;
DROP TABLE CARO_job_category;
DROP TABLE CARO_depreciation_time_interval;


CREATE TABLE CARO_job_category (
    job_category_id         VARCHAR(1) NOT NULL,   --A=admin, O=operational user
    job_title               VARCHAR(25),
);


CREATE TABLE CARO_clearance_level (
    clearance_level         numeric NOT NULL, 		
    level_desc               VARCHAR(255),
);


CREATE TABLE CARO_system_user (
    personel_id             numeric NOT NULL, 
    job_category_id         VARCHAR(1),
    user_name               VARCHAR(20),
    user_password           VARCHAR(20), 	
    user_first_name         VARCHAR(50),	
    user_last_name          VARCHAR(50),	
    date_of_hire            DATE,          	
    user_phone_number       VARCHAR(10),  	--1234567890
    user_email              VARCHAR(50),
    clearance_level         numeric,
	isActive					BIT		        
);

CREATE TABLE CARO_location(
    location_id             VARCHAR(10) NOT NULL,           
    location_name           VARCHAR(100),
    location_address        VARCHAR(100),
    location_phone          VARCHAR(10),  	--1234567890
    location_email          VARCHAR(50),	
    number_of_staff         numeric
);


CREATE TABLE CARO_asset_category (
    asset_category                     VARCHAR(20) NOT NULL, 
    asset_category_description         VARCHAR(50)
);

CREATE TABLE CARO_brand (
    brand_id                VARCHAR(5) NOT NULL,  
    brand_name              VARCHAR(20)
);

CREATE TABLE CARO_vendor (
    vendor_id               VARCHAR(5) NOT NULL,  
    vendor_name             VARCHAR(20),
    vendor_address                 VARCHAR(50),
    vendor_phone_number            VARCHAR(10),  	--1234567890
);


CREATE TABLE CARO_depreciation_time_interval (
    time_interval_id		VARCHAR(20) NOT NULL PRIMARY KEY,    
    time_interval_desc		VARCHAR(255),
	time_interval_value		numeric
);

CREATE TABLE CARO_depreciation_information (
    deprec_info_id          VARCHAR(20) NOT NULL,    
    deprec_desc				VARCHAR(255),
	deprec_custom_mode		BIT DEFAULT 0,
	deprec_updated			DATETIME DEFAULT CURRENT_TIMESTAMP,
	deprec_rate				DECIMAL(3, 2) DEFAULT 0.0,
	time_interval_id		VARCHAR(20),
	categories_applied		TEXT,
	deprec_formula			TEXT
);


CREATE TABLE CARO_asset (
    asset_id                VARCHAR(10) NOT NULL,   	
    vendor_id               VARCHAR(5), 	
    brand_id                VARCHAR(5),
    location_id             VARCHAR(10), 	
    deprec_info_id          VARCHAR(20), 	
    asset_category          VARCHAR(20),
    purchase_date           DATE,
    cost                    numeric(15,2),
    depreciated_value       numeric(15,2),
    dimension               VARCHAR(50),  
    IP                      VARCHAR(15),  		
    MAC                     VARCHAR(18),
    serial_number           VARCHAR(50),
    asset_name              VARCHAR(50),
    asset_desc              VARCHAR(255),
    hostname                VARCHAR(50), 
    service_tag             VARCHAR(50), 
    comment_on_asset        VARCHAR(255),
    added_by                numeric, --the personal_id who add the asset
    photo_link              VARCHAR(255), --link of the photo
	OS						VARCHAR(50)
);


CREATE TABLE CARO_assigned_to (
    personel_id             numeric NOT NULL, 
    asset_id                VARCHAR(10) NOT NULL
);


CREATE TABLE CARO_activity_log (
    personel_id             NUMERIC, 
    time_stamp              DATETIME NOT NULL,
    description             TEXT
);
