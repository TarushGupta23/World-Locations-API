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

-- Tajikistan
INSERT INTO countries VALUES 
("TJ", "AS", "Tajikistan", "Dushanbe");

INSERT INTO states VALUES
("TJ-GB", "TJ", "Gorno-Badakhshan Autonomous Region"),
("TJ-KT", "TJ", "Khatlon Region"),
("TJ-RR", "TJ", "Republican Subordination")
("TJ-SU", "TJ", "Sughd Region");

-- Taiwan
INSERT INTO countries VALUES 
("TW", "AS", "Taiwan", "Taipei");

-- err -- not match to svg map
INSERT INTO states VALUES
("TW-CHA", "TW", "Changhua County"),
("TW-CYQ", "TW", "Chiayi City"),
("TW-CYX", "TW", "Chiayi County"),
("TW-HSQ", "TW", "Hsinchu City"),
("TW-HSZ", "TW", "Hsinchu County"),
("TW-HUA", "TW", "Hualien County"),
("TW-ILA", "TW", "Ilan County"),
("TW-KHQ", "TW", "Kaohsiung City"),
("TW-KHH", "TW", "Kaohsiung County"),
("TW-KEE", "TW", "Keelung City"),
("TW-MIA", "TW", "Miaoli County"),
("TW-NAN", "TW", "Nantou County"),
("TW-PEN", "TW", "Penghu County"),
("TW-PIF", "TW", "Pingtung County"),
("TW-TXG", "TW", "Taichung City"),
("TW-TXQ", "TW", "Taichung County"),
("TW-TNN", "TW", "Tainan City"),
("TW-TNQ", "TW", "Tainan County"),
("TW-TPQ", "TW", "Taipei City"),
("TW-TPE", "TW", "Taipei County"),
("TW-TTT", "TW", "Taitung County"),
("TW-TAO", "TW", "Taoyuan City"),
("TW-YUN", "TW", "Yunlin County");

-- Syria -- err
INSERT INTO countries VALUES 
("SY", "AS", "Syria", "Damascus");

-- Note: In Syria, administrative divisions such as governorates are considered as states for simplicity.
INSERT INTO states VALUES
("SY-DI", "SY", "Damascus"),
("SY-DY", "SY", "Daraa"),
("SY-RA", "SY", "Rif Dimashq"),
("SY-QU", "SY", "Quneitra"),
("SY-HM", "SY", "Hamah"),
("SY-HI", "SY", "Hims"),
("SY-LA", "SY", "Latakia"),
("SY-TA", "SY", "Tartus"),
("SY-ID", "SY", "Idlib"),
("SY-AR", "SY", "Aleppo"),
("SY-DH", "SY", "Deir ez-Zor"),
("SY-RAQ", "SY", "Ar-Raqqah"),
("SY-HAS", "SY", "Hasakah"),
("SY-DIM", "SY", "Daraa"),
("SY-SU", "SY", "As-Suwayda");

-- Switzerland
INSERT INTO countries VALUES 
("CH", "EU", "Switzerland", "Bern");

-- Note: In Switzerland, administrative divisions such as cantons are considered as states for simplicity.
INSERT INTO states VALUES
("CH-AG", "CH", "Aargau"),
("CH-AR", "CH", "Appenzell Ausserrhoden"),
("CH-AI", "CH", "Appenzell Innerrhoden"),
("CH-BL", "CH", "Basel-Landschaft"),
("CH-BS", "CH", "Basel-Stadt"),
("CH-BE", "CH", "Bern"),
("CH-FR", "CH", "Fribourg"),
("CH-GE", "CH", "Geneva"),
("CH-GL", "CH", "Glarus"),
("CH-GR", "CH", "Graubünden"),
("CH-JU", "CH", "Jura"),
("CH-LU", "CH", "Lucerne"),
("CH-NE", "CH", "Neuchâtel"),
("CH-NW", "CH", "Nidwalden"),
("CH-OW", "CH", "Obwalden"),
("CH-SG", "CH", "St. Gallen"),
("CH-SH", "CH", "Schaffhausen"),
("CH-SO", "CH", "Solothurn"),
("CH-SZ", "CH", "Schwyz"),
("CH-TG", "CH", "Thurgau"),
("CH-TI", "CH", "Ticino"),
("CH-UR", "CH", "Uri"),
("CH-VS", "CH", "Valais"),
("CH-VD", "CH", "Vaud"),
("CH-ZG", "CH", "Zug"),
("CH-ZH", "CH", "Zurich");

-- Sweden
INSERT INTO countries VALUES 
("SE", "EU", "Sweden", "Stockholm");

-- Note: In Sweden, administrative divisions such as counties are considered as states for simplicity.
INSERT INTO states VALUES
("SE-K", "SE", "Blekinge County"),
("SE-W", "SE", "Dalarna County"),
("SE-I", "SE", "Gotland County"),
("SE-X", "SE", "Gävleborg County"),
("SE-N", "SE", "Halland County"),
("SE-Z", "SE", "Jämtland County"),
("SE-F", "SE", "Jönköping County"),
("SE-H", "SE", "Kalmar County"),
("SE-G", "SE", "Kronoberg County"),
("SE-BD", "SE", "Norrbotten County"),
("SE-M", "SE", "Örebro County"),
("SE-AC", "SE", "Östergötland County"),
("SE-O", "SE", "Skåne County"),
("SE-D", "SE", "Södermanland County"),
("SE-AB", "SE", "Stockholm County"),
("SE-C", "SE", "Uppsala County"),
("SE-S", "SE", "Värmland County"),
("SE-AC", "SE", "Västerbotten County"),
("SE-Y", "SE", "Västernorrland County"),
("SE-U", "SE", "Västmanland County"),
("SE-O", "SE", "Västra Götaland County");

-- Sudan
INSERT INTO countries VALUES 
("SD", "AF", "Sudan", "Khartoum");

-- Note: In Sudan, administrative divisions such as states are considered as states for simplicity.
INSERT INTO states VALUES
("SD-NB", "SD", "Northern"),
("SD-NO", "SD", "North Darfur"),
("SD-KN", "SD", "Kassala"),
("SD-GD", "SD", "Gezira"),
("SD-KH", "SD", "Khartoum"),
("SD-GK", "SD", "Gedaref"),
("SD-WR", "SD", "White Nile"),
("SD-KS", "SD", "South Kordofan"),
("SD-BN", "SD", "Blue Nile"),
("SD-RS", "SD", "Red Sea"),
("SD-RK", "SD", "River Nile"),
("SD-JG", "SD", "West Darfur"),
("SD-SI", "SD", "Sennar"),
("SD-NR", "SD", "North Kordofan"),
("SD-DC", "SD", "Central Darfur"),
("SD-WD", "SD", "West Kordofan"),
("SD-KD", "SD", "South Darfur"),
("SD-GZ", "SD", "Gazira");

-- Sri Lanka
INSERT INTO countries VALUES 
("LK", "AS", "Sri Lanka", "Colombo");

-- Note: In Sri Lanka, administrative divisions such as provinces are considered as states for simplicity.
INSERT INTO states VALUES
("LK-WP", "LK", "Western Province"),
("LK-NC", "LK", "North Central Province"),
("LK-CP", "LK", "Central Province"),
("LK-NP", "LK", "Northern Province"),
("LK-EP", "LK", "Eastern Province"),
("LK-SP", "LK", "Southern Province"),
("LK-UW", "LK", "Uva Province"),
("LK-SB", "LK", "Sabaragamuwa Province"),
("LK-NW", "LK", "North Western Province");

-- Spain
INSERT INTO countries VALUES 
("ES", "EU", "Spain", "Madrid");

-- Note: In Spain, administrative divisions such as autonomous communities are considered as states for simplicity.
INSERT INTO states VALUES
("ES-AN", "ES", "Andalusia"),
("ES-AR", "ES", "Aragon"),
("ES-AS", "ES", "Asturias"),
("ES-CN", "ES", "Canary Islands"),
("ES-CB", "ES", "Cantabria"),
("ES-CL", "ES", "Castile and León"),
("ES-CM", "ES", "Castilla-La Mancha"),
("ES-CT", "ES", "Catalonia"),
("ES-CE", "ES", "Ceuta"),
("ES-EX", "ES", "Extremadura"),
("ES-GA", "ES", "Galicia"),
("ES-IB", "ES", "Balearic Islands"),
("ES-MD", "ES", "Madrid"),
("ES-MC", "ES", "Murcia"),
("ES-NC", "ES", "Navarre"),
("ES-PV", "ES", "Basque Country"),
("ES-RI", "ES", "La Rioja"),
("ES-AN", "ES", "Andalusia"),
("ES-VC", "ES", "Valencian Community");

-- South Korea
INSERT INTO countries VALUES 
("KR", "AS", "South Korea", "Seoul");

-- Note: In South Korea, administrative divisions such as provinces and metropolitan cities are considered as states for simplicity.
INSERT INTO states VALUES
("KR-11", "KR", "Seoul"),
("KR-21", "KR", "Busan"),
("KR-22", "KR", "Daegu"),
("KR-23", "KR", "Incheon"),
("KR-24", "KR", "Gwangju"),
("KR-25", "KR", "Daejeon"),
("KR-26", "KR", "Ulsan"),
("KR-27", "KR", "Sejong Special Autonomous City"),
("KR-41", "KR", "Gyeonggi Province"),
("KR-42", "KR", "Gangwon Province"),
("KR-43", "KR", "North Chungcheong Province"),
("KR-44", "KR", "South Chungcheong Province"),
("KR-45", "KR", "North Jeolla Province"),
("KR-46", "KR", "South Jeolla Province"),
("KR-47", "KR", "North Gyeongsang Province"),
("KR-48", "KR", "South Gyeongsang Province"),
("KR-49", "KR", "Jeju Special Autonomous Province");

-- South Africa
INSERT INTO countries VALUES 
("ZA", "AF", "South Africa", "Pretoria");

-- Note: In South Africa, administrative divisions such as provinces are considered as states for simplicity.
INSERT INTO states VALUES
("ZA-EC", "ZA", "Eastern Cape"),
("ZA-FS", "ZA", "Free State"),
("ZA-GT", "ZA", "Gauteng"),
("ZA-NL", "ZA", "KwaZulu-Natal"),
("ZA-LP", "ZA", "Limpopo"),
("ZA-MP", "ZA", "Mpumalanga"),
("ZA-NW", "ZA", "North West"),
("ZA-NC", "ZA", "Northern Cape"),
("ZA-WC", "ZA", "Western Cape");

-- Slovenia
INSERT INTO countries VALUES 
("SI", "EU", "Slovenia", "Ljubljana");

-- Note: In Slovenia, administrative divisions such as statistical regions are considered as states for simplicity.
INSERT INTO states VALUES
("SI-01", "SI", "Pomurska"),
("SI-02", "SI", "Podravska"),
("SI-03", "SI", "Koroška"),
("SI-04", "SI", "Savinjska"),
("SI-05", "SI", "Zasavska"),
("SI-06", "SI", "Posavska"),
("SI-07", "SI", "Jugovzhodna Slovenija"),
("SI-08", "SI", "Osrednjeslovenska"),
("SI-09", "SI", "Gorenjska"),
("SI-10", "SI", "Primorsko-notranjska"),
("SI-11", "SI", "Goriška");

-- Slovakia
INSERT INTO countries VALUES 
("SK", "EU", "Slovakia", "Bratislava");

-- Note: In Slovakia, administrative divisions such as regions are considered as states for simplicity.
INSERT INTO states VALUES
("SK-BC", "SK", "Banská Bystrica Region"),
("SK-BL", "SK", "Bratislava Region"),
("SK-KI", "SK", "Košice Region"),
("SK-NI", "SK", "Nitra Region"),
("SK-PV", "SK", "Prešov Region"),
("SK-TC", "SK", "Trenčín Region"),
("SK-TA", "SK", "Trnava Region"),
("SK-ZI", "SK", "Žilina Region");

-- Singapore
INSERT INTO countries VALUES 
("SG", "AS", "Singapore", "Singapore");

-- Sierra Leone
INSERT INTO countries VALUES 
("SL", "AF", "Sierra Leone", "Freetown");

-- Note: In Sierra Leone, administrative divisions such as provinces are considered as states for simplicity.
INSERT INTO states VALUES
("SL-WP", "SL", "Western Area"),
("SL-N", "SL", "Northern Province"),
("SL-NW", "SL", "North Western Province"),
("SL-E", "SL", "Eastern Province"),
("SL-S", "SL", "Southern Province");

-- Serbia
INSERT INTO countries VALUES 
("RS", "EU", "Serbia", "Belgrade");

-- Note: In Serbia, administrative divisions such as districts are considered as states for simplicity.
INSERT INTO states VALUES
("RS-00", "RS", "Belgrade"),
("RS-14", "RS", "Borski okrug"),
("RS-11", "RS", "Braničevski okrug"),
("RS-02", "RS", "Jablanicki okrug"),
("RS-23", "RS", "Juzno-Banatski okrug"),
("RS-09", "RS", "Južno-Bački okrug"),
("RS-08", "RS", "Kolubarski okrug"),
("RS-04", "RS", "Mačvanski okrug"),
("RS-01", "RS", "Moravicki okrug"),
("RS-17", "RS", "Nišavski okrug"),
("RS-20", "RS", "Pcinjski okrug"),
("RS-22", "RS", "Pećki okrug"),
("RS-10", "RS", "Pomoravski okrug"),
("RS-13", "RS", "Prizrenski okrug"),
("RS-24", "RS", "Severno-Banatski okrug"),
("RS-19", "RS", "Severno-Bački okrug"),
("RS-18", "RS", "Srednji Banat"),
("RS-07", "RS", "Sremski okrug"),
("RS-21", "RS", "Toplički okrug"),
("RS-15", "RS", "Zaječarski okrug"),
("RS-05", "RS", "Zapadno-Bački okrug"),
("RS-16", "RS", "Zlatiborski okrug");

-- Saudi Arabia
INSERT INTO countries VALUES 
("SA", "AS", "Saudi Arabia", "Riyadh");

-- Note: In Saudi Arabia, administrative divisions such as regions are considered as states for simplicity.
INSERT INTO states VALUES
("SA-01", "SA", "Riyadh Region"),
("SA-02", "SA", "Makkah Region"),
("SA-03", "SA", "Madinah Region"),
("SA-04", "SA", "Eastern Province"),
("SA-05", "SA", "Asir Region"),
("SA-06", "SA", "Tabuk Region"),
("SA-07", "SA", "Ha'il Region"),
("SA-08", "SA", "Northern Borders Region"),
("SA-09", "SA", "Jizan Region"),
("SA-10", "SA", "Najran Region"),
("SA-11", "SA", "Al Bahah Region"),
("SA-12", "SA", "Al Jawf Region");

-- San Mario
INSERT INTO countries VALUES 
("SM", "EU", "San Marino", "San Marino");