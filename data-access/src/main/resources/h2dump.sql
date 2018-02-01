SET LOCK_MODE 3;              
;             
CREATE USER IF NOT EXISTS SA SALT '468d820e4468224d' HASH '99a81d46014db13e3a0cdc40bc18919bc0534d855dbd54c3436d770511839bb9' ADMIN;           
CREATE CACHED TABLE PUBLIC.CUSTOMERS(
    CUSTOMER_ID INT NOT NULL,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    PHONE CHAR(10),
    EMAIL VARCHAR(50),
    ADDRESS VARCHAR(50),
    CITY VARCHAR(50)
);
ALTER TABLE PUBLIC.CUSTOMERS ADD CONSTRAINT PUBLIC.PK_CUSTOMERS PRIMARY KEY(CUSTOMER_ID);     
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.CUSTOMERS;               
CREATE CACHED TABLE PUBLIC.ORDERS(
    ORDER_ID INT NOT NULL,
    ORDER_DATE DATE NOT NULL,
    MOVE_DATE DATE,
    CUSTOMER_ID INT NOT NULL,
    CITY_OUT VARCHAR(50),
    ADDRESS_OUT VARCHAR(50),
    CITY_IN VARCHAR(50),
    ADDRESS_IN VARCHAR(50),
    CONTACT_NAME VARCHAR(50),
    HOURLY_RATE DECIMAL(18, 2),
    EXTRAS DECIMAL(18, 2),
    TOTAL_COST DECIMAL(18, 2)
);              
ALTER TABLE PUBLIC.ORDERS ADD CONSTRAINT PUBLIC.PK_ORDERS PRIMARY KEY(ORDER_ID);              
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.ORDERS;  
CREATE CACHED TABLE PUBLIC.SYSDIAGRAMS(
    NAME VARCHAR(128) NOT NULL,
    PRINCIPAL_ID INT NOT NULL,
    DIAGRAM_ID INT NOT NULL,
    VERSION INT,
    DEFINITION BLOB
);             
ALTER TABLE PUBLIC.SYSDIAGRAMS ADD CONSTRAINT PUBLIC.PK__SYSDIAGR__C2B05B612C9A9E25 PRIMARY KEY(DIAGRAM_ID);  
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.SYSDIAGRAMS;             
CREATE TABLE IF NOT EXISTS SYSTEM_LOB_STREAM(ID INT NOT NULL, PART INT NOT NULL, CDATA VARCHAR, BDATA BINARY);
CREATE PRIMARY KEY SYSTEM_LOB_STREAM_PRIMARY_KEY ON SYSTEM_LOB_STREAM(ID, PART);              
CREATE ALIAS IF NOT EXISTS SYSTEM_COMBINE_CLOB FOR "org.h2.command.dml.ScriptCommand.combineClob";            
CREATE ALIAS IF NOT EXISTS SYSTEM_COMBINE_BLOB FOR "org.h2.command.dml.ScriptCommand.combineBlob";            
INSERT INTO SYSTEM_LOB_STREAM VALUES(0, 0, NULL, 'd0cf11e0a1b11ae1000000000000000000000000000000003e000300feff0900060000000000000000000000010000000100000000000000001000000200000001000000feffffff0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdffffff0b000000feffffff0400000005000000060000000700000008000000090000000a0000000c000000feffffff0d0000000e0000000f0000001000000011000000feffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff52006f006f007400200045006e00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500ffffffffffffffff020000000000000000000000000000000000000000000000000000000000000000e597b6529ad30103000000c01a0000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000d6030000000000006f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000ffffffff00000000000000000000000000000000000000000000000000000000000000000000000010000000f509000000000000010043006f006d0070004f0062006a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000380000005f000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a0000000b0000000c0000000d0000000e0000000f000000feffffff1100000012000000130000001400000015000000160000001700000018000000190000001a0000001b0000001c0000001d0000001e0000001f000000200000002100000022000000230000002400000025000000260000002700000028000000290000002a0000002b0000002c0000002d0000002e0000002f0000003000000031000000320000003300000034000000350000003600000037000000feffffff39000000feffffff3b0000003c0000003d0000003e0000003f000000400000004100000042000000430000004400000045000000460000004700000048000000490000004a0000004b0000004c0000004d0000004e0000004f000000500000005100000052000000530000005400000055000000560000005700000058000000590000005a0000005b000000fefffffffeffffff5e0000005f00000060000000610000006200000063000000640000006500000066000000670000006800000069000000fefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000428000a0e100c05000080090000000f00ffff09000000007d000053880000d44a0000199a00001f690000de805b10f195d011b0a000aa00bdcb5c0000080030000000000200000300000038002b00000009000000d9e6b0e91c81d011ad5100a0c90f5739f43b7f847f61c74385352986e1d552f8a0327db2d86295428d98273c25a2da2d00002c0043200000000000000000000053444dd2011fd1118e63006097d2df4834c9d2777977d811907000065b840d9c00002c0043200000000000000000000051444dd2011fd1118e63006097d2df4834c9d2777977d811907000065b840d9c09000000e80200000089012600003000a509000007000080010000009c020000008000000500008053636847726964003c0f00002c01000042696c6c7369640000003400a50900000700008002000000a4020000008000000900008053636847726964000000000080250000437573746f6d65727300000000009400a5090000070000800300000062000000018000006c000000436f6e74726f6cc08b09000075140000210432044f0437044c042000220046004b005f00420069006c006c0073005f0043007500730074006f006d00650072007300220020003c0435043604340443042000220043007500730074006f006d0065007200730022002000380420002200420069006c006c007300220000002800b50100000700008004000000310000005700000002800000436f6e74726f6c0061010000181b000000003000a509000007000080050000009e0200000080000006000080536368477269640038310000d02000004f7264657273640000008800a50900000700008006000000620000000180000060000000436f6e74726f6c00fe10000004160000210432044f0437044c042000220046004b005f00420069006c006c0073005f004f0072006400650072007300220020003c043504360434044304200022004f007200640065007200730022002000380420002200420069006c006c007300220000002800b50100000700008007000000310000005100000002800000436f6e74726f6c00471d0000ce1d000000009800a50900000700008008000000520000000180000070000000436f6e74726f6c005c1500000b2f0000210432044f0437044c042000220046004b005f004f00720064006500720073005f0043007500730074006f006d00650072007300220020003c0435043604340443042000220043007500730074006f006d00650072007300220020003804200022004f0072006400650072007300220000002800b50100000700008009000000310000005900000002800000436f6e74726f6c007c1e00005131000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021433412080000008816000004160000785634120700000014010000420069006c006c007300000000000000020000002400000003000000020000005f0000002300000010000000640000002800000002000000690000002a00000002000000710000002e000000100000007600000033000000020000007b0000003500000010000000800000003a00000002000000860000003d00000002000000860000003d000000120000008c0000004200000002000000930000004a00000002000000960000004c00000010000000a40000005200000002000000d60000007100000010000000db0000007600000002000000df0000007a00000000000000e10000007b00000002000000e300000000000000000000000100000005000000540000002c0000002c0000002c00000034000000000000000000000022290000f1190000000000002d010000090000000c000000070000001c0100000609000062070000480300001a040000df020000ec04000027060000b103000027060000cb070000550500000000000001000000881600000416000000000000070000000700000002000000020000001c010000f50a0000000000000100000039130000c007000000000000020000000200000002000000020000001c010000060900000100000000000000391300003403000000000000000000000000000002000000020000001c010000060900000000000000000000d13100000923000000000000000000000d00000004000000040000001c01000006090000aa0a00009006000078563412040000005400000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f00000006000000420069006c006c00730000002143341208000000881600000416000078563412070000001401000043007500730074006f006d006500720073000000cc9b471d989b471d601b471d181b471dd89c471d989c471d6c90471d3090471de08f471d808f471dec90471db890471df8fde71c40fde71cdca1471d98a1471d60a3471d1ca3471ddc97471da097471d40a4471dfca3471d20a5471ddca4471de4a6471da0a6471d4ca9471d08a9471d9cfee71c44fee71c049e471dc89d471d949e471d509e471d1caa471de8a9471d88a7471d44a7471d00000000020000000000000000000000689d471d249d471d3496471dec95471d5497471d1497471d749f471d309f471d6418471d2418471d4c9c471d189c471dc896000000000000000000000100000005000000540000002c0000002c0000002c00000034000000000000000000000022290000f1190000000000002d010000090000000c000000070000001c010000060900006207000048030000');         
INSERT INTO SYSTEM_LOB_STREAM VALUES(0, 1, NULL, '1a040000df020000ec04000027060000b103000027060000cb070000550500000000000001000000881600000416000000000000070000000700000002000000020000001c010000f50a00000000000001000000391300007a05000000000000010000000100000002000000020000001c010000060900000100000000000000391300003403000000000000000000000000000002000000020000001c010000060900000000000000000000d13100000923000000000000000000000d00000004000000040000001c01000006090000aa0a00009006000078563412040000005c00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000a00000043007500730074006f006d00650072007300000004000b00220b000080250000220b00001f1d0000681000001f1d000068100000301700000000000002000000f0f0f0000000000000000000000000000000000001000000040000000000000061010000181b00005d0a000058010000310000000100000200005d0a000058010000020000000000050000800800008001000000150001cc0000900144420100065461686f6d61120046004b005f00420069006c006c0073005f0043007500730074006f006d006500720073002143341208000000881600006b2200007856341207000000140100004f007200640065007200730000003a002f00500072006f006700720061006d002000460069006c00650073002000280078003800360029002f004d006900630072006f0073006f00660074002000530051004c0020005300650072007600650072002f003100340030002f0054006f006f006c0073002f00420069006e006e002f004d0061006e006100670065006d0065006e007400530074007500640069006f002f004900440045002f005000750062006c006900630041007300730065006d0062006c006900650073002f004d006900630072006f0073006f00660074002e00530071006c00530065007200000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000002229000009230000000000002d0100000d0000000c000000070000001c0100000609000062070000480300001a040000df020000ec04000027060000b103000027060000cb070000550500000000000001000000881600006b220000000000000c0000000c00000002000000020000001c010000f50a0000000000000100000039130000c007000000000000020000000200000002000000020000001c010000060900000100000000000000391300003403000000000000000000000000000002000000020000001c010000060900000000000000000000d13100000923000000000000000000000d00000004000000040000001c01000006090000aa0a00009006000078563412040000005600000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f000000070000004f0072006400650072007300000004000b00c43b0000d0200000c43b00001f1d00002a1200001f1d00002a120000301700000200000002000000f0f0f00000000000000000000000000000000000010000000700000000000000471d0000ce1d00005608000058010000310000000100000200005608000058010000020000000000ffffff000800008001000000150001cc0000900144420100065461686f6d610f0046004b005f00420069006c006c0073005f004f007200640065007200730002000b0088160000a230000038310000a23000000000000002000000f0f0f000000000000000000000000000000000000100000009000000000000007c1e0000513100002b0c000058010000370000000100000200002b0c000058010000020000000000ffffff000800008001000000150001cc0000900144420100065461686f6d61130046004b005f004f00720064006500720073005f0043007500730074006f006d0065007200730000000000000000000000000100feff030a0000ffffffff00000000000000000000000000000000170000004d6963726f736f66742044445320466f726d20322e300010000000456d626564646564204f626a6563740000000000f439b2710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c00000000000000000000000100260000007300630068005f006c006100620065006c0073005f00760069007300690062006c0065000000010000000b0000001e000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003300310030002c0031002c0031003800390030002c0035002c0031003200360030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c00320038003000350000002000000054000300440064007300530074007200650061006d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000003a0000004b0800000000000053006300680065006d00610020005500440056002000440065006600610075006c0074000000000000000000000000000000000000000000000000000000000026000200ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000005c0000001600000000000000440053005200450046002d0053004300480045004d0041002d0043004f004e00540045004e0054005300000000000000000000000000000000000000000000002c0002010500000007000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000005d000000260300000000000053006300680065006d00610020005500440056002000440065006600610075006c007400200050006f007300740020005600360000000000000000000000000036000200ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000006a0000001200000000000000610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003300310030002c00310032002c0032003700330030002c00310031002c0031003600380030000000020000000200000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003300310030002c0031002c0031003800390030002c0035002c0031003200360030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003800300035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003300310030002c00310032002c0032003700330030002c00310031002c0031003600380030000000030000000300000000000000360000000101070201000000640062006f00000046004b005f00420069006c006c0073005f0043007500730074006f006d0065007200730000000000000000000000c4020000000004000000040000000300000008000000010d9b26e80d9b260000000000000000ad0f0000010000050000000500000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003300310030002c0031002c0031003800390030002c0035002c0031003200360030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003800300035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003300310030002c00310032002c0032003700330030002c00310031002c0031003600380030000000060000000600000000000000300000000100000001000000640062006f00000046004b005f00420069006c006c0073005f004f007200640065007200730000000000000000000000c402000000000700000007000000060000000800000001109b2628109b2600');         
INSERT INTO SYSTEM_LOB_STREAM VALUES(0, 2, NULL, '00000000000000ad0f00000100000800000008000000000000003800000001b0bf5501000000640062006f00000046004b005f004f00720064006500720073005f0043007500730074006f006d0065007200730000000000000000000000c402000000000900000009000000080000000800000001461b1260461b120000000000000000ad0f00000100000f0000000800000002000000050000006f0000007e000000030000000200000001000000240000000300000006000000050000000100000022000000090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000c0000000b0000004e61bc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbe6b0e91c81d011ad5100a0c90f57390000020050738cb6529ad301020200001048450000000000000000000000000000000000000200004400610074006100200053006f0075007200630065003d006c006f00630061006c0068006f00730074005c00530051004c0045005800500052004500530053003b0049006e0069007400690061006c00200043006100740061006c006f0067003d004d006500740072006f0070006f006c006900740061006e00440042003b005000650072007300690073007400200053006500630075007200690074007900200049006e0066006f003d0054007200750065003b0055007300650072002000490044003d00730061003b004d0075006c007400690070006c00650041006300740069007600650052006500730075006c00740053006500740073003d00460061006c00730065003b0043006f006e006e006500630074002000540069006d0065006f00750074003d00330030003b0054007200750073007400530065007200760065007200430065007200740069006600690063006100740065003d00460061006c00730065003b005000610063006b00650074002000530069007a0065003d0034003000390036003b004100700070006c00690063006100740069006f006e0020004e0061006d0065003d0022004d006900630072006f0073006f00660074002000530051004c00200053006500720076006500720020004d0061006e006100670065006d0065006e0074002000530074007500640069006f002200000000800500140000004400690061006700720061006d005f0030000000000226000c000000420069006c006c007300000008000000640062006f000000000226001400000043007500730074006f006d00650072007300000008000000640062006f000000000224000e0000004f0072006400650072007300000008000000640062006f00000001000000d68509b3bb6bf2459ab8371664f0327008004e0000007b00310036003300340043004400440037002d0030003800380038002d0034003200450033002d0039004600410032002d004200360044003300320035003600330042003900310044007d0000000000000000000000000000000000000000000000000000000000010003000000000000000c0000000b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214'); 
INSERT INTO PUBLIC.SYSDIAGRAMS(NAME, PRINCIPAL_ID, DIAGRAM_ID, VERSION, DEFINITION) VALUES
('Diagram_0', 1, 1, 1, SYSTEM_COMBINE_BLOB(0));   
CREATE UNIQUE INDEX PUBLIC.UK_PRINCIPAL_NAME ON PUBLIC.SYSDIAGRAMS(PRINCIPAL_ID, NAME);       
CREATE CACHED TABLE PUBLIC.BILLS(
    BILL_ID INT NOT NULL,
    ORDER_ID INT NOT NULL,
    CUSTOMER_ID INT NOT NULL,
    HOURLY_FEE DECIMAL(18, 2),
    TOTAL_HOURS DECIMAL(18, 2),
    HST DECIMAL(18, 2),
    TOTAL_AMOUNT DECIMAL(18, 2)
);        
ALTER TABLE PUBLIC.BILLS ADD CONSTRAINT PUBLIC.PK_BILLS PRIMARY KEY(BILL_ID); 
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.BILLS;   
DROP TABLE IF EXISTS SYSTEM_LOB_STREAM;       
CALL SYSTEM_COMBINE_BLOB(-1); 
DROP ALIAS IF EXISTS SYSTEM_COMBINE_CLOB;     
DROP ALIAS IF EXISTS SYSTEM_COMBINE_BLOB;     
ALTER TABLE PUBLIC.BILLS ADD CONSTRAINT PUBLIC.FK_BILLS_CUSTOMERS FOREIGN KEY(CUSTOMER_ID) REFERENCES PUBLIC.CUSTOMERS(CUSTOMER_ID) NOCHECK;  
ALTER TABLE PUBLIC.ORDERS ADD CONSTRAINT PUBLIC.FK_ORDERS_CUSTOMERS FOREIGN KEY(CUSTOMER_ID) REFERENCES PUBLIC.CUSTOMERS(CUSTOMER_ID) NOCHECK;
ALTER TABLE PUBLIC.BILLS ADD CONSTRAINT PUBLIC.FK_BILLS_ORDERS FOREIGN KEY(BILL_ID) REFERENCES PUBLIC.ORDERS(ORDER_ID) NOCHECK;               
