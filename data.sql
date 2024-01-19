-- creating table of continents
CREATE TABLE continents (
    continent_code varchar(20) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- creating table of countries
CREATE TABLE countries (
    country_code varchar(20) PRIMARY KEY,
    continent_code varchar(20),
    name VARCHAR(255) NOT NULL,
    capital VARCHAR(255),
    FOREIGN KEY (continent_code) REFERENCES continents(continent_code)
);

-- creating table of states
CREATE TABLE states (
    state_id varchar(20) PRIMARY KEY,
    country_code varchar(20),
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (country_code) REFERENCES countries(country_code)
);

-- creating table of cities
CREATE TABLE cities (
    city_id varchar(20) PRIMARY KEY,
    state_id varchar(20),
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(state_id)
);

-- Zimbawe
INSERT INTO countries VALUES 
("ZW", "AF", "Zimbabwe", "Harare");

INSERT INTO states VALUES
("ZW-MW", "ZW", "Mashonaland West"),
("ZW-MC", "ZW", "Mashonaland Central"),
("ZW-MV", "ZW", "Masvingo"),
("ZW-MS", "ZW", "Matabeleland South"),
("ZW-MN", "ZW", "Matabeleland North"),
("ZW-MI", "ZW", "Midlands"),
("ZW-ME", "ZW", "Mashonaland East"),
("ZW-MA", "ZW", "Manicaland"),
("ZW-HA", "ZW", "Harare");

-- India
INSERT INTO countries VALUES 
("IN", "AS", "India", "New Delhi");

INSERT INTO states VALUES
("IN-AP", "IN", "Andhra Pradesh"),
("IN-AR", "IN", "Arunachal Pradesh"),
("IN-AS", "IN", "Assam"),
("IN-BR", "IN", "Bihar"),
("IN-CT", "IN", "Chhattisgarh"),
("IN-GA", "IN", "Goa"),
("IN-GJ", "IN", "Gujarat"),
("IN-HR", "IN", "Haryana"),
("IN-HP", "IN", "Himachal Pradesh"),
("IN-JH", "IN", "Jharkhand"),
("IN-KA", "IN", "Karnataka"),
("IN-KL", "IN", "Kerala"),
("IN-MP", "IN", "Madhya Pradesh"),
("IN-MH", "IN", "Maharashtra"),
("IN-MN", "IN", "Manipur"),
("IN-ML", "IN", "Meghalaya"),
("IN-MZ", "IN", "Mizoram"),
("IN-NL", "IN", "Nagaland"),
("IN-OR", "IN", "Odisha"),
("IN-PB", "IN", "Punjab"),
("IN-RJ", "IN", "Rajasthan"),
("IN-SK", "IN", "Sikkim"),
("IN-TN", "IN", "Tamil Nadu"),
("IN-TG", "IN", "Telangana"),
("IN-TR", "IN", "Tripura"),
("IN-UT", "IN", "Uttarakhand"),
("IN-UP", "IN", "Uttar Pradesh"),
("IN-WB", "IN", "West Bengal"),
("IN-JK", "IN", "Jammu and Kashmir"),
("IN-AN", "IN", "Andaman and Nicobar Islands"),
("IN-CH", "IN", "Chandigarh"),
("IN-DN", "IN", "Dadra and Nagar Haveli and Daman and Diu"),
("IN-DL", "IN", "Delhi"),
("IN-LD", "IN", "Lakshadweep"),
("IN-PY", "IN", "Puducherry");

-- Zambia
INSERT INTO countries VALUES 
("ZM", "AF", "Zambia", "Lusaka");

INSERT INTO states VALUES
("ZM-01", "ZM", "Western Province");
("ZM-02", "ZM", "Central Province"),
("ZM-03", "ZM", "Eastern Province"),
("ZM-04", "ZM", "Luapula Province"),
("ZM-05", "ZM", "Northern Province"),
("ZM-06", "ZM", "North-Western Province"),
("ZM-07", "ZM", "Southern Province"),
("ZM-08", "ZM", "Copperbelt Province"),
("ZM-09", "ZM", "Lusaka Province"),
("ZM-10", "ZM", "Muchinga Province"),

-- Yemen
INSERT INTO countries VALUES 
("YE", "AS", "Yemen", "Sana'a");

INSERT INTO states VALUES
("YE-AB", "YE", "Abyan"),
("YE-AD", "YE", "'Adan"),
("YE-DA", "YE", "Ad Dali'"),
("YE-BA", "YE", "Al Bayda'"),
("YE-HU", "YE", "Al Hudaydah"),
("YE-JA", "YE", "Al Jawf"),
("YE-MR", "YE", "Al Mahrah"),
("YE-MW", "YE", "Al Mahwit"),
("YE-AM", "YE", "Amran"),
("YE-DH", "YE", "Dhamar"),
("YE-HD", "YE", "Hadramawt"),
("YE-HJ", "YE", "Hajjah"),
("YE-IB", "YE", "Ibb"),
("YE-LA", "YE", "Lahij"),
("YE-MA", "YE", "Ma'rib"),
("YE-RA", "YE", "Raymah"),
("YE-SA", "YE", "Sa'dah"),
("YE-SN", "YE", "San'a'"),
("YE-SH", "YE", "Shabwah"),
("YE-TA", "YE", "Ta'izz");

-- Vietnam -- err
INSERT INTO countries VALUES 
("VN", "AS", "Vietnam", "Hanoi");

INSERT INTO states VALUES
("VN-01", "VN", "Lào Cai"),
("VN-02", "VN", "Yên Bái"),
("VN-03", "VN", "Thái Nguyên"),
("VN-04", "VN", "Lạng Sơn"),
("VN-05", "VN", "Quảng Ninh"),
("VN-06", "VN", "Hà Giang"),
("VN-07", "VN", "Cao Bằng"),
("VN-09", "VN", "Bắc Kạn"),
("VN-13", "VN", "Thái Bình"),
("VN-14", "VN", "Lạng Sơn"),
("VN-18", "VN", "Nam Định"),
("VN-20", "VN", "Quảng Ninh"),
("VN-21", "VN", "Hải Dương"),
("VN-22", "VN", "Hải Phòng"),
("VN-23", "VN", "Hưng Yên"),
("VN-24", "VN", "Hà Nam"),
("VN-25", "VN", "Nam Định"),
("VN-26", "VN", "Thái Bình"),
("VN-27", "VN", "Ninh Bình"),
("VN-28", "VN", "Thanh Hóa"),
("VN-29", "VN", "Nghệ An"),
("VN-30", "VN", "Hà Tĩnh"),
("VN-31", "VN", "Quảng Bình"),
("VN-32", "VN", "Quảng Trị"),
("VN-33", "VN", "Thừa Thiên–Huế"),
("VN-34", "VN", "Quảng Nam"),
("VN-35", "VN", "Quảng Ngãi"),
("VN-36", "VN", "Bình Định"),
("VN-37", "VN", "Phú Yên"),
("VN-40", "VN", "Khánh Hòa"),
("VN-41", "VN", "Ninh Thuận"),
("VN-42", "VN", "Bình Thuận"),
("VN-43", "VN", "Kon Tum"),
("VN-44", "VN", "Gia Lai"),
("VN-45", "VN", "Đắk Lắk"),
("VN-46", "VN", "Đắk Nông"),
("VN-47", "VN", "Lâm Đồng"),
("VN-49", "VN", "Bình Phước"),
("VN-50", "VN", "Tây Ninh"),
("VN-51", "VN", "Bình Dương"),
("VN-52", "VN", "Đồng Nai"),
("VN-53", "VN", "Bà Rịa-Vũng Tàu"),
("VN-54", "VN", "Ho Chi Minh City"),
("VN-55", "VN", "Long An"),
("VN-56", "VN", "Tiền Giang"),
("VN-57", "VN", "Bến Tre"),
("VN-58", "VN", "Trà Vinh"),
("VN-59", "VN", "Vĩnh Long"),
("VN-61", "VN", "Đồng Tháp"),
("VN-63", "VN", "An Giang"),
("VN-64", "VN", "Kiên Giang"),
("VN-66", "VN", "Cần Thơ"),
("VN-67", "VN", "Hậu Giang"),
("VN-68", "VN", "Sóc Trăng"),
("VN-69", "VN", "Bạc Liêu"),
("VN-70", "VN", "Cà Mau");

-- Venezuela -- err
INSERT INTO countries VALUES 
("VE", "SA", "Venezuela", "Caracas");

INSERT INTO states VALUES
("VE-AM", "VE", "Amazonas"),
("VE-AN", "VE", "Anzoátegui"),
("VE-AP", "VE", "Apure"),
("VE-AR", "VE", "Aragua"),
("VE-B", "VE", "Barinas"),
("VE-BL", "VE", "Bolívar"),
("VE-C", "VE", "Carabobo"),
("VE-CO", "VE", "Cojedes"),
("VE-D", "VE", "Delta Amacuro"),
("VE-DT", "VE", "Dependencias Federales"),
("VE-F", "VE", "Falcón"),
("VE-G", "VE", "Guárico"),
("VE-H", "VE", "Lara"),
("VE-M", "VE", "Miranda"),
("VE-N", "VE", "Monagas"),
("VE-L", "VE", "Mérida"),
("VE-O", "VE", "Nueva Esparta"),
("VE-P", "VE", "Portuguesa"),
("VE-R", "VE", "Sucre"),
("VE-S", "VE", "Táchira"),
("VE-T", "VE", "Trujillo"),
("VE-U", "VE", "Lara"),
("VE-V", "VE", "Yaracuy"),
("VE-W", "VE", "Zulia"),
("VE-X", "VE", "Capital District");

-- Uzbekistan -- err
INSERT INTO countries VALUES 
("UZ", "AS", "Uzbekistan", "Tashkent");

INSERT INTO states VALUES 
("UZ-AN", "UZ", "Andijan Region"),
("UZ-BU", "UZ", "Bukhara Region"),
("UZ-FA", "UZ", "Fergana Region"),
("UZ-JI", "UZ", "Jizzakh Region"),
("UZ-NW", "UZ", "Namangan Region"),
("UZ-NX", "UZ", "Navoiy Region"),
("UZ-QA", "UZ", "Qashqadaryo Region"),
("UZ-SA", "UZ", "Samarqand Region"),
("UZ-SI", "UZ", "Sirdaryo Region"),
("UZ-SU", "UZ", "Surxondaryo Region"),
("UZ-TK", "UZ", "Tashkent Region"),
("UZ-TO", "UZ", "Tashkent City"),
("UZ-XO", "UZ", "Xorazm Region");

-- Uruguay
INSERT INTO countries VALUES 
("UY", "SA", "Uruguay", "Montevideo");

INSERT INTO states VALUES
("UY-AR", "UY", "Artigas"),
("UY-CA", "UY", "Canelones"),
("UY-CL", "UY", "Cerro Largo"),
("UY-CO", "UY", "Colonia"),
("UY-DU", "UY", "Durazno"),
("UY-FS", "UY", "Flores"),
("UY-FD", "UY", "Florida"),
("UY-LA", "UY", "Lavalleja"),
("UY-MA", "UY", "Maldonado"),
("UY-MO", "UY", "Montevideo"),
("UY-PA", "UY", "Paysandú"),
("UY-RN", "UY", "Río Negro"),
("UY-RV", "UY", "Rivera"),
("UY-RO", "UY", "Rocha"),
("UY-SA", "UY", "Salto"),
("UY-SJ", "UY", "San José"),
("UY-SO", "UY", "Soriano"),
("UY-TA", "UY", "Tacuarembó"),
("UY-TT", "UY", "Treinta y Tres");

-- UK -- err
INSERT INTO countries VALUES 
("GB", "EU", "United Kingdom", "London");

INSERT INTO states VALUES
("GB-ENG", "GB", "England"),
("GB-SCT", "GB", "Scotland"),
("GB-WLS", "GB", "Wales"),
("GB-NIR", "GB", "Northern Ireland");

-- Arab 
INSERT INTO countries VALUES 
("AE", "AS", "United Arab Emirates", "Abu Dhabi");

INSERT INTO states VALUES
("AE-AZ", "AE", "Abu Dhabi"),
("AE-AJ", "AE", "Ajman"),
("AE-FU", "AE", "Fujairah"),
("AE-SH", "AE", "Sharjah"),
("AE-DU", "AE", "Dubai"),
("AE-RK", "AE", "Ras Al Khaimah"),
("AE-UQ", "AE", "Umm Al Quwain");

-- Ukrane -- err
INSERT INTO countries VALUES 
("UA", "EU", "Ukraine", "Kyiv");

-- Note: In Ukraine, administrative divisions are called oblasts. For simplicity, we are treating them as states here.
INSERT INTO states VALUES
("UA-05", "UA", "Vinnytsia Oblast"),
("UA-07", "UA", "Volyn Oblast"),
("UA-21", "UA", "Zhytomyr Oblast"),
("UA-23", "UA", "Transcarpathian Oblast"),
("UA-18", "UA", "Ternopil Oblast"),
("UA-26", "UA", "Sumy Oblast"),
("UA-11", "UA", "Rivne Oblast"),
("UA-09", "UA", "Kyiv Oblast"),
("UA-03", "UA", "Kyiv City"),
("UA-22", "UA", "Khmelnytskyi Oblast"),
("UA-19", "UA", "Kherson Oblast"),
("UA-27", "UA", "Kharkiv Oblast"),
("UA-20", "UA", "Kirovohrad Oblast"),
("UA-17", "UA", "Ivano-Frankivsk Oblast"),
("UA-13", "UA", "Dnipropetrovsk Oblast");

-- Uganda -- err
INSERT INTO countries VALUES 
("UG", "AF", "Uganda", "Kampala");

-- Turkey
INSERT INTO countries VALUES 
("TR", "AS", "Turkey", "Ankara");

-- Turkey is divided into provinces.
INSERT INTO states VALUES
("TR-01", "TR", "Adana"),
("TR-02", "TR", "Adiyaman"),
("TR-03", "TR", "Afyonkarahisar"),
("TR-04", "TR", "Ağri"),
("TR-05", "TR", "Amasya"),
("TR-06", "TR", "Ankara"),
("TR-07", "TR", "Antalya"),
("TR-08", "TR", "Artvin"),
("TR-09", "TR", "Aydin"),
("TR-10", "TR", "Balikesir"),
("TR-11", "TR", "Bilecik"),
("TR-12", "TR", "Bingöl"),
("TR-13", "TR", "Bitlis"),
("TR-14", "TR", "Bolu"),
("TR-15", "TR", "Burdur"),
("TR-16", "TR", "Bursa"),
("TR-17", "TR", "Çanakkale"),
("TR-18", "TR", "Çankiri"),
("TR-19", "TR", "Çorum"),
("TR-20", "TR", "Denizli"),
("TR-21", "TR", "Diyarbakir"),
("TR-22", "TR", "Edirne"),
("TR-23", "TR", "Elaziğ"),
("TR-24", "TR", "Erzincan"),
("TR-25", "TR", "Erzurum"),
("TR-26", "TR", "Eskişehir"),
("TR-27", "TR", "Gaziantep"),
("TR-28", "TR", "Giresun"),
("TR-29", "TR", "Gümüşhane"),
("TR-30", "TR", "Hakkari"),
("TR-31", "TR", "Hatay"),
("TR-32", "TR", "Isparta"),
("TR-33", "TR", "İçel (Mersin)"),
("TR-34", "TR", "İstanbul"),
("TR-35", "TR", "İzmir"),
("TR-36", "TR", "Kars"),
("TR-37", "TR", "Kastamonu"),
("TR-38", "TR", "Kayseri"),
("TR-39", "TR", "Kirklareli"),
("TR-40", "TR", "Kirşehir"),
("TR-41", "TR", "Kocaeli"),
("TR-42", "TR", "Konya"),
("TR-43", "TR", "Kütahya"),
("TR-44", "TR", "Malatya"),
("TR-45", "TR", "Manisa"),
("TR-46", "TR", "Kahramanmaraş"),
("TR-47", "TR", "Mardin"),
("TR-48", "TR", "Muğla"),
("TR-49", "TR", "Muş"),
("TR-50", "TR", "Nevşehir"),
("TR-51", "TR", "Niğde"),
("TR-52", "TR", "Ordu"),
("TR-53", "TR", "Rize"),
("TR-54", "TR", "Sakarya"),
("TR-55", "TR", "Samsun"),
("TR-56", "TR", "Siirt"),
("TR-57", "TR", "Sinop"),
("TR-58", "TR", "Sivas"),
("TR-59", "TR", "Tekirdağ"),
("TR-60", "TR", "Tokat"),
("TR-61", "TR", "Trabzon"),
("TR-62", "TR", "Tunceli"),
("TR-63", "TR", "Şanliurfa"),
("TR-64", "TR", "Uşak"),
("TR-65", "TR", "Van"),
("TR-66", "TR", "Yozgat"),
("TR-67", "TR", "Zonguldak"),
("TR-68", "TR", "Aksaray"),
("TR-69", "TR", "Bayburt"),
("TR-70", "TR", "Karaman"),
("TR-71", "TR", "Kirikkale"),
("TR-72", "TR", "Batman"),
("TR-73", "TR", "Şirnak"),
("TR-74", "TR", "Bartin"),
("TR-75", "TR", "Ardahan"),
("TR-76", "TR", "Iğdir"),
("TR-77", "TR", "Yalova"),
("TR-78", "TR", "Karabük"),
("TR-79", "TR", "Kilis"),
("TR-80", "TR", "Osmaniye"),
("TR-81", "TR", "Düzce");

-- Thailand
INSERT INTO countries VALUES 
("TH", "AS", "Thailand", "Bangkok");

-- Thailand is divided into administrative regions, not traditional states.
INSERT INTO states VALUES
("TH-37", "TH", "Central Region"),
("TH-39", "TH", "Eastern Region"),
("TH-40", "TH", "Isan (Northeastern Region)"),
("TH-42", "TH", "Northern Region"),
("TH-43", "TH", "Southern Region");