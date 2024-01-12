USE Toyota
GO

IF NOT EXISTS (SELECT * FROM SYS.TABLES WHERE object_id=OBJECT_ID(N'dbo.car') AND type='U')

	CREATE TABLE dbo.car (
    id INT,
    model VARCHAR(80),
    price INT,
    age_08_04 INT,
    mfg_month INT,
    mfg_year INT,
    km INT,
    fuel_type VARCHAR(7),
    hp INT,
    met_color INT,
    color VARCHAR(7),
    automatic_ CHAR(2),
    c INT,
    doors INT,
    cylinders INT,
    gears INT,
    quarterly_tax INT,
    weight INT,
    mfr_guarantee CHAR(2),
    bovag_guarantee CHAR(2),
    guarantee_period INT,
    abs_ CHAR(2),
    airbag_1 CHAR(2),
    airbag_2 CHAR(2),
    airco CHAR(2),
    automatic_airco CHAR(2),
    boardcomputer CHAR(2),
    cd_player CHAR(2),
    central_lock CHAR(2),
    powered_windows CHAR(2),
    power_steering CHAR(2),
    radio CHAR(2),
    mistlamps CHAR(2),
    sport_model CHAR(2),
    backseat_divider CHAR(2),
    metallic_rim CHAR(2),
    radio_cassette CHAR(2),
    parking_assistant CHAR(2),
    tow_bar CHAR(2)
)
GO

TRUNCATE TABLE dbo.car;
GO

BULK INSERT dbo.car
FROM 'C:\Users\Usuario\Documents\alfa\dataset\ToyotaCorolla.csv'
WITH
(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a'
)
GO
