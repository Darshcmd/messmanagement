-- VIT MESS Management System - MySQL Initialization Script
-- Database: vitmess
-- Complete initialization with all meal data and laundry schedules

-- Drop existing tables to start fresh
DROP TABLE IF EXISTS laundry_schedule;
DROP TABLE IF EXISTS mess_menu;

-- Create laundry_schedule table with correct schema
CREATE TABLE laundry_schedule (
    block VARCHAR(10),
    day_of_month INT,
    rooms VARCHAR(100)
);

-- Create mess_menu table with correct schema
CREATE TABLE mess_menu (
    gender VARCHAR(10),
    category VARCHAR(20),
    week INT,
    day VARCHAR(15),
    breakfast VARCHAR(4000),
    lunch VARCHAR(4000),
    snacks VARCHAR(4000),
    dinner VARCHAR(4000)
);

-- ============================================================================
-- LAUNDRY SCHEDULE INSERTS - All Blocks
-- ============================================================================

INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 2, '112 - 353');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 3, '356 - 541');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 4, '542 - 807');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 5, '808 - 1027');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 6, '1028 - 1236');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 7, '1237 - 1523');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 9, '112 - 353');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 10, '356 - 541');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 11, '542 - 807');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 12, '808 - 1027');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 13, '1028 - 1236');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 14, '1237 - 1523');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 16, '112 - 353');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 17, '356 - 541');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 18, '542 - 807');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 19, '808 - 1027');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 20, '1028 - 1236');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 21, '1237 - 1523');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 23, '112 - 353');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 24, '356 - 541');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 25, '542 - 807');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 26, '808 - 1027');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 27, '1028 - 1236');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('A', 28, '1237 - 1523');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 2, '427 - 644');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 3, '645 - 911');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 4, '912 - 1128');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 5, '1129 - 1338');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 6, '1339 - 1551');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 7, '101 - 426');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 9, '427 - 644');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 10, '645 - 911');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 11, '912 - 1128');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 12, '1129 - 1338');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 13, '1339 - 1551');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 14, '101 - 426');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 16, '427 - 644');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 17, '645 - 911');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 18, '912 - 1128');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 19, '1129 - 1338');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 20, '1339 - 1551');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 21, '101 - 426');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 23, '427 - 644');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 24, '645 - 911');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 25, '912 - 1128');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 26, '1129 - 1338');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('B', 27, '1339 - 1551');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 2, '505 - 802');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 3, '803 - 1040');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 4, '1041 - 1318');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 5, '1319 - 1544');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 6, '1545 - 1647');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 7, '101 - 504');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 9, '505 - 802');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 10, '803 - 1040');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 11, '1041 - 1318');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 12, '1319 - 1544');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 13, '1545 - 1647');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 14, '101 - 504');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 16, '505 - 802');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 17, '803 - 1040');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 18, '1041 - 1318');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 19, '1319 - 1544');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 20, '1545 - 1647');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 21, '101 - 504');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 23, '505 - 802');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 24, '803 - 1040');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 25, '1041 - 1318');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 26, '1319 - 1544');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CB', 27, '1545 - 1647');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 2, '407 - 539');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 3, '607 - 739');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 4, '807 - 1010');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 5, '1011 - 1137');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 6, '1138 - 800C');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 7, '113 - 339');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 9, '407 - 539');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 10, '607 - 739');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 11, '807 - 1010');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 12, '1011 - 1137');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 13, '1138 - 800C');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 14, '113 - 339');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 16, '407 - 539');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 17, '607 - 739');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 18, '807 - 1010');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 19, '1011 - 1137');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 20, '1138 - 800C');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 21, '113 - 339');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 23, '407 - 539');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 24, '607 - 739');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 25, '807 - 1010');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 26, '1011 - 1137');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('CG', 27, '1138 - 800C');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 2, '405 - 625');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 3, '626 - 909');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 4, '910 - 1130');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 5, '1131 - 1410');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 6, '1411 - 1632');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 7, '116 - 404');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 9, '405 - 625');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 10, '626 - 909');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 11, '910 - 1130');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 12, '1131 - 1410');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 13, '1411 - 1632');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 14, '116 - 404');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 16, '405 - 625');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 17, '626 - 909');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 18, '910 - 1130');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 19, '1131 - 1410');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 20, '1411 - 1632');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 21, '116 - 404');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 23, '405 - 625');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 24, '626 - 909');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 25, '910 - 1130');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 26, '1131 - 1410');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D1', 27, '1411 - 1632');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 2, '318 - 601');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 3, '602 - 821');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 4, '822 - 1131');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 5, '1132 - 1413');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 6, '1414 - 1635');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 7, '101 - 317');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 9, '318 - 601');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 10, '602 - 821');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 11, '822 - 1131');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 12, '1132 - 1413');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 13, '1414 - 1635');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 14, '101 - 317');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 16, '318 - 601');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 17, '602 - 821');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 18, '822 - 1131');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 19, '1132 - 1413');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 20, '1414 - 1635');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 21, '101 - 317');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 23, '318 - 601');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 24, '602 - 821');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 25, '822 - 1131');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 26, '1132 - 1413');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('D2', 27, '1414 - 1635');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 2, '208 - 215');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 3, '216 - 224');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 4, '226 - 232');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 5, '233 - 246');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 6, '247 - 357');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 7, '201 - 207');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 9, '208 - 215');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 10, '216 - 224');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 11, '226 - 232');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 12, '233 - 246');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 13, '247 - 357');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 14, '201 - 207');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 16, '208 - 215');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 17, '216 - 224');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 18, '226 - 232');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 19, '233 - 246');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 20, '247 - 357');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 21, '201 - 207');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 23, '208 - 215');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 24, '216 - 224');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 25, '226 - 232');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 26, '233 - 246');
INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES ('E', 27, '247 - 357');

-- ============================================================================
-- MESS MENU INSERTS
-- ============================================================================

INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 1, 'Monday', 'Onion aloo Veg Partha+ Tomato Gravey + Curd
Dosa (podi karam) + Sambar + peanut onion chutney
Toasted Bread + Butter + Jam
Tea/Coffee', '1. Phulka + Rajma curry
2. Veg Pulao+Boondi Raitha+ Dal fry
3. White Rice + Mochai Kara Kolambu + Carrot and beans poriyal + Paruppu Rasam
4. Parupu Podi + Gingerly Oil + Thovaiyal+ Pickle+ pappad
5. Bannana green + Butter milk', 'Sandwich+Sauce
Tea/Coffee/Milk', '1. Phulka+ Navaratna korma +Jeera Dal
2. White rice+ Dry Cabbage Porial
3.Rasam+Curd+Pickle
chocolate Ice cream+Salad+Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 1, 'Tuesday', 'Pancer Paratha +Tomoto Onion Gravy + Curd
Rava Idly +Vada + Sambar +Coconut chutny
Wheat Bread + Butter + Jam
Tea/Coffee', '1. Phulka + mix veg kadai semi gravy (more veggies)+ methi Dal
2. Tomoto Rice
3. White Rice+ Chettinad sambar + Alloo Poriyal+ Uduppi Tomato Rasam + Curd
4. Parupu Podi + Ghee + Thorvaiyal + Pickle+ Fryums
Fruit + Lemon mint juice', 'Veg Samosa+green chutny
Tea/Coffee/Milk', '1. Chapathi+ Soya chunk gravy+Harar Dal
2. Lemon Rice+White rice+beans poriyal+Rasam+ curd+Pickle
3. Milk + fruit custard
4. Salad');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 1, 'Wednesday', 'Palak paratha +Curd
Masala Dosai + Sambar + coconut Chtuney
Bread + Butter + Jam
Tea/Coffee', '1. Chapathi + Palak Paneer
2. Ghee Rice + panchamel Dal
3. White Rice + Arachivitta sambar + Tendli poriyal + Milagu Rasam
4. Parupu Podi + Ghee + Thovaiyal+ Pickle+ pappad
5. Fruit(Papaya) + Sweet lassi', 'MysoreBonda + coconut chutny
Tea/Coffee/Milk', '1. White Chenna Masala + Bhature
2. White rice+More Kulambu +Mixed Vegetable Porial+Rasam+Pickle
3.Veg Salad +strawberry milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 1, 'Thursday', 'Aloo Stuffed Paratha + Curd+Pickle
Andra bonda +idly + Chettinad kaara chutney
Wheat Bread + Butter + Jam
Tea/Coffee', '1. Phulka + Paneer tikka masala
2. Bisebella Bath + Potato Chips
3. White Rice +vatha kuzhambu + keerai poriyal + Pineapple Rasam + Curd
4. Parupu Podi + Gingelly Oil
5. Thovaiyal+Pickle
6. Fruit Salad(black grapes + Pineapple)', 'Dahi vada (garnished with sweet + mint chutney)
Tea/Coffee/ Milk', '1. Chapathi + Veg kadai gravy
2. Lemon seva + Ahrar dal tadka+ Coconut chutney
3. White Rice+Bhindi masala dry+Rasam+Curd
4. cold badam +Salad');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 1, 'Friday', 'Poori+ white peas masala (matar)
Millet Mixed Idly+Vada+Sambar+ Tomato pudhina chutney
Bread + Butter + Jam
Tea/Coffee', '1. Pulka + Malai kofta Gravy+ Aandhara pappu
2. Kashmiri pulav
3. White Rice + uduppi sambar + potato, pattani masiyal + Moong Dal Rasam +mint Buttermilk
4. Parupu Podi + Ghee + Thovaiyal + Pickle+ Papad
5. Fruits(Watermelon)', 'Papdi Chat
Tea/Coffee/Milk', '1. Phulka + White chenna masaala
2. Idly+Chutney+Sambar
3. White rice+Gobi 65+Rasam+Curd+Pickle
4. jelabi+Salad');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 1, 'Saturday', 'Onion Dosa+vada curry+ Mint, coriander&Curry leaves chutney
Onion Potato Poha
Wheat Bread +Butter+Jam
Tea/Coffee', '1. Phulka + veg dopyaja
2. Schezvan Fried Rice + vegetable Manchurian(semi gravy)
3. White Rice + kongunadu Sambar +Keerai Kootu+ Milagu rasam + Curd
4. Parupu Podi + Gingelly Oil + Thovaiyal + Fryams+ Pickle
5. Fruit(Banana)+Lemon Mint Juice', 'Masala sweet corn
Tea/Coffee/Milk', '1.phulka + nilgiri korma
2.Jeera rice+Dal fry
3. Plain rice +Kadhi pakoda curry+Rasam+ curd
4.Papad+pickle+Salad+Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 1, 'Sunday', 'Pav Bajji(properly smashed aloo) +Masala
Millet pongal+Vada + Sambar + Coconut chutney
Bread + Butter + Jam
Tea/ Coffee', '1.Chappati+paneer butter masala (low sweet level)
2.Dum veg biryani(soya)+Gobi and aloo mixed fry+onion raita
3.white rice+ Mysore rasam +curd rice+pickle
4.Mixed fruits (Watermelon+Grapes)+ Mint butter milk', 'Pani puri
Tea/Coffee/Milk', '1. Pulka +Dal Makhani
2. Masala Dosa+ Coconut Chutney+Sambar
3. White Rice+ Louki chana curry+Rasam
4. Gulab Jamun +Salad');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 2, 'Monday', '1.Onion aloo Veg Partha+ Tomato Chutney + Curd
2.Dosa (podi karam) + Sambar + peanut onion chutny
3.Toasted Bread + Butter + Jam
4.Tea/Coffee', '1. phulka +Aloo Peas+ methi Dal
2. Tamarind Rice
3. White Rice+ Chettinad sambar + Carrot & Beans mixed Poriyal+ Uduppi Tomato Rasam + Curd
4. Parupu Podi + Ghee + Thorvaiyal + Pickle+ Papad
5. Fruit + Lemon juice', 'Vada paw
Tea/Coffee/Milk', '1. Phulka- Mix veg gravy +Jeera Dal
2. White rice+Aloo bindhi dry
3. Rasam+Curd+Pickle
4. Vanilla ice cream +Salad(beetroot )+Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 2, 'Tuesday', '1. Paneer Paratha +Tomoto Onion Gravy+Curd
2. Rava idly+Vada + Sambar +Coconut chutny
3. Bread + Butter + Jam
4. Tea/Coffee', '1. Phulka+ Rajma gravy
2. Veg Pulao+Boondi Raitha+ Dal fry
3. White Rice + Mochai Kara Kolambu + pudalangai poriyal+ Paruppu Rasam
4. Parupu Podi + Ghee + Thovaiyal+ Pickle+ papad
5. Banana + butter milk', 'Veg.Puff + Sauce
Tea/Coffee/Milk', '1. Chapathi+ Soya chunk gravy
2. Coconut Rice+ Harar dal
3. White rice+beans poriyal+Rasam+ curd+Pickle
4. Milk
5. sooji halwa');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 2, 'Wednesday', '1.Namkeen poha
2. Masala Dosai + Sambar + Coconut chutny
3. Bread + Butter + Jam
4. Tea/Coffee', '1. Chapathi + matar Paneer
2. Ghee Rice + panchamcl Dal
3. White Rice + Arachivitta sambar + Keerai Poriyal + Milagu Rasam
4. Parupu Podi + Ghee + Thovaiyal+ Pickle+ fryums
5. Fruit(Papaya) + Lemon mint juice', 'Pani poori
Tea/Coffee/Milk', '1. White Chenna Masala + Atta poori
2. White rice+kara Kulambu +Mixed Vegetable Porial+Rasam+Pickle
3.Veg Salad + Vanila milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 2, 'Thursday', '1. Aloo Stuffed Paratha + Curd+Pickle
2. Andra bonda +idly + Chettinad kaara chutney
3. Wheat Bread + Butter + Jam
4. Tea/Coffee', '1. Phulka + Paneer tikka masala
2. Bisebella Bath + Chips
White Rice + kaaramani poriyal + Moong Dal Rasam + Curd
3. Parupu Podi + Gingelly Oil + Butter milk +Thovaiyal+Pickle
4. Fruit Salad(Green Grapes+ Pineapple)', 'pasta
Tea/Coffee/Milk', '1. Chapathi + Dry aloo jeera
2. Rawa khichdi + Ahrar dal tadka + Coconut chutney
3. White Rice+senai kezhangu varuval+Rasam+Curd
4. Chocolate Milkshake+Salad');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 2, 'Friday', 'Poori+white channa
Millet Mixed Idly+Vada+Sambar+Tomato pudhina chutny
Bread + Butter + Jam
Tea/Coffee', '1. Pulka + Lauki kofta Gravy + Aandhara pappu
2. Kashmiri pulav
3. White Rice + potato,pattani masiyal + Pineapple Rasam +mint Buttermilk
4. Parupu Podi + Ghee + Thovaiyal + Pickle+ Papad
5. Fruits(Watermelon)', 'Masala Vada+Coconut chutney
Tea/Coffee/Milk', '1. Ajwain chapathi + Black chenna masaala
2. Idly+Chutney+Sambar
3. White rice+Gobi 65+Rasam+Curd+Pickle
4. Mothichur ladoo');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 2, 'Saturday', '1. Onion Dosa+sambar + coconut chutny
2. white rava upma
3.Wheat Bread +Butter+Jam
4. Tea/Coffee', '1. Phulka + Dal Tadka
2. Schezvan Fried Rice + Veg Manchurian
3. White Rice + kongunadu Sambar +Keerai Porial/Kootu+ Milagu rasam + Curd
4. Parupu Podi + Gingelly Oil + Thovaiyal + Fryams + Pickle
5. Fruit(Banana)+Lemon Mint Juice', 'Masala chana chat
Tea/Coffee/Milk', '1. Phulka + Bhindi onion bhaji
2. JEERA RICE+Dal fry
3. Plain Rice +Kadai Pakkoda Curry +Rasam
4. Papad+ Pickle+Salad+milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Veg', 2, 'Sunday', '1. Pav Bajji
2. Millet mixed pongal+Vada + Sambar + Coconut chutny
3.Bread + Butter + Jam
4. Tea/ Coffee', '1. Chapati + Paneer butter masala
2. DumVegBriyani(more veggies) + Gobi and Aloo mixed Fry +Onion Raitha + Curd Rice
3. Pickle
4. Mixed fruits(watermelon+grapes)+ Lemon mint juice', 'salted peanut
Tea/Coffee/Milk', '1. Pulka +Dal Makhani
2. Masala Dosa+Chutney+Sambar
3. White Rice+ Aloo Capcicum Dry+Rasam
4. Gulab Jamun +Salad');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 1, 'Monday', '1. Onion Dosa + Sambar + Mint, Coriander & Curry Leaves Chutney
2. Potato Poha + Onion
3. Egg Masala Omelet
4. Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Phulka + Dal Makhani + Gobi 65 Dry
2. Tomato Rice + Papad
3. White Rice + Chettinad Sambar + Udupi Tomato Rasam + Curd
4. Paruppu Podi + Ghee + Thovaiyal + Papad
5. Pineapple + Pickle', 'Pasta
Tea / Coffee / Milk', '1. Phulka + Egg Korma
2. Dosai + Chutney + Sambar
3. Rice + Rasam + Curd
4. Salad (Onions + Carrot + Beetroot) + Milk + Ice Cream (Vanilla)');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 1, 'Tuesday', '1. Paneer Paratha + Tomato Onion Gravy + Curd
2. Millet Pongal + Vada + Sambar + Coconut Chutney
3. Boiled Egg (Dispense in Hot Water)
4. Wheat Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Chapathi + Matar Paneer Masala
2. Ghee Rice
3. White Rice + More Kuzhambu + Dal Rasam + Carrot and Beans Poriyal + Buttermilk
4. Paruppu Podi + Ghee + Thovaiyal + Papad
5. Banana + Pickle + Buttermilk', 'Bread Pakoda (2 nos.) + Coconut Chutney
Tea / Coffee / Milk', '1. Chapathi + Navratna Korma
2. White Rice + Dal + Mix Veg Poriyal
3. Idly + Podi + Oil + Coconut Chutney + Sambar + Curd
4. Salad (Carrot + Tomato + Lemon) + Milk + Motichoor Laddu');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 1, 'Wednesday', '1. Millet Upma
2. Masala Dosai + Sambar + Groundnut Chutney
3. Egg Omelette
4. Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Ajwain Chapathi + Chicken Handi Masala
2. Veg Pulao
3. White Rice + Mix Veg Pappu + Milagu Rasam + Tendli Poriyal
4. Paruppu Podi + Ghee / Oil + Thovaiyal
5. Papad + Pickle + Lemon Juice', 'Boiled Masala
Ginger Tea / Coffee / Milk', '1. Chapathi + Soya Keema with Green Peas Masala
2. Rice + Andhra Dal + Vazhakkai Poriyal + Rasam + Sambar
3. Rava / Semiya Kitchadi + Coconut Chutney
4. Fruit Salad + Milk + Curd
5. Paruppu Payasam');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 1, 'Thursday', '1. Masala Poha
2. Podi Dosa + Sambar + Peanut Onion Chutney
3. Egg Podimas
4. Wheat Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Chapathi + Veg Kurma
2. Bisi Bele Bath + Potato Chips
3. White Rice + More Kuzhambu + Keerai Kootu + Dal Tadka
4. Paruppu Podi + Ghee + Thovaiyal
5. Watermelon Fruit + Pickle + Lassi', 'Pani Puri
Tea / Coffee / Milk', '1. Chole Batura + White Channa Masala
2. Veg Briyani + Dahi Onion Raita
3. White Rice + Rasam + Poriyal + Sambar
4. Salad (Onion + Beetroot) + Milk + Curd + Sugar');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 1, 'Friday', '1. Aloo Paratha + Tomato Chutney
2. Pongal + Masal Vada + Sambar
3. Boiled Egg
4. Wheat Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Plain Pulka + Chicken 65 + Chicken Gravy (Without Pieces)
2. Jeera Rice + Papad
3. White Rice + Udupi Sambar + Potato Pattani Masiyal + Moong Dal Rasam
4. Paruppu Podi + Ghee + Thovaiyal
5. Muskmelon + Pickle + Lime Juice', 'Keerai Vada
Tea / Coffee / Milk', '1. Masala Kulcha + Corn Capsicum Gravy + French Fries
2. White Rice + Dal + Radish Sambar + Rasam
3. Lemon Rice + Rose Milkshake (Thick Consistency) + (Onion + Carrot + Beetroot) Salad');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 1, 'Saturday', '1. Puri + Poori Masala (Aloo)
2. Millet Idly + Vada + Sambar + Tomato Pudina Chutney
3. Omelet
4. Toasted Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Pulka + Dal Fry
2. Arisi Paruppu Sadam + Masala Potato
3. White Rice + Karakuzhambu + Milagu Rasam + Curd + Keerai Poriyal
4. Paruppu Podi + Ghee + Thovaiyal
5. Pineapple + Papad + Pickle + Lemon Juice', 'Samosa + Sauce
Ginger Tea / Coffee / Milk', '1. Pulka + Cabbage Green Peas Masala Fry
2. Millet Masala Dosa + Sambar + Chutney
3. White Rice + Rasam + Buttermilk + Poriyal
4. Paruppu Podi + Ghee + Thovaiyal + Semiya Payasam
5. Milk + Salad (Tomato, Onion, Lemon, Carrot)');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 1, 'Sunday', '1. Pav Bhaji + Chopped Onion and Lemon
2. Idly + Vada + Sambar + Chettinad Kara Chutney
3. Egg Bhurji
4. Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Hyderabadi Chicken Biryani + Plain Chicken Gravy + Onion Raita
2. Pulka + Black Channa Dal
3. Plain Rice + Mysore Rasam
4. Fruit Salad (Green Grapes + Papaya) + Chilled Badam Milk
5. Paruppu Podi + Ghee + Thovaiyal', 'Veg Cutlet
Tea / Coffee / Milk', '1. Chapathi + Rajma Curry
2. Methi Pulao
3. White Rice + Sambar + Rasam + Poriyal + Curd Rice with Tadka
4. Salad + Papad + Pickle + Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 2, 'Monday', '1. Onion Dosa + Sambar + Mint, Coriander & Curry Leaves Chutney
2. Puri + Puri Masala (Potato)
3. Egg Bhurji
4. Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Phulka + Dal Tadka
2. Tomato Rice + Gobi 65
3. White Rice + Chettinad Sambar + Udupi Tomato Rasam
4. Paruppu Podi + Ghee + Thovaiyal + Papad
5. Pineapple + Pickle + Buttermilk', 'Veg Puff
Tea / Coffee / Milk', '1. Chapati + Mix Veg Gravy + Dal
2. White Rice + Rasam + Mix Veg Poriyal
3. Idly + Podi + Oil + Mint Chutney + Sambar
4. Salad (Carrot + Tomato + Lemon) + Milk + Gulab Jamun');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 2, 'Tuesday', '1. Paneer Paratha + Tomato Onion Gravy + Curd
2. Millet Pongal + Vada + Sambar + Coconut Chutney
3. Boiled Egg (Dispense in Hot Water)
4. Wheat Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Chapathi + Paneer Tikka Masala
2. Ghee Rice
3. White Rice + Dal + Paruppu Rasam + Carrot and Beans Poriyal + Buttermilk
4. Paruppu Podi + Ghee + Thovaiyal + Papad
5. Banana + Pickle + Buttermilk', 'Veg Sandwich
Ginger Tea / Coffee / Milk', '1. Phulka + Chettinadu Egg Masala
2. Dosai + Chutney + Sambar
3. Rice + Rasam + Curd
4. Salad (Onions + Carrot) + Milk + Ice Cream (Vanilla)');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 2, 'Wednesday', '1. Puri + White Chana Masala
2. Millet Idly + Vada + Sambar + Tomato Pudina Chutney
3. Egg Omelet
4. Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Ajwain Chapathi + Tandoori Chicken + Plain Gravy
2. Veg Pulao
3. White Rice + Mix Veg Pappu + Milagu Rasam + Cabbage Poriyal
4. Paruppu Podi + Ghee / Oil + Thovaiyal
5. Fruit Salad + Papad + Pickle + Lemon Mint Juice', 'Boiled Channa
Ginger Tea / Coffee / Milk', '1. Chapathi + Peas Soya Gravy
2. Rice + Andhra Dal + Cabbage Poriyal + Rasam + Sambar
3. Rava / Semiya Kitchadi + Coconut Chutney
4. Salad + Milk + Curd
5. Pineapple Kesari');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 2, 'Thursday', '1. Aloo Paratha
2. Podi Dosa + Sambar + Peanut Onion Chutney
3. Egg Podimas
4. Wheat Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Chapathi + Veg Hariyali
2. Jeera Rice + Potato Chips
3. White Rice + More Kuzhambu + Raw Banana Poriyal + Dal Fry
4. Paruppu Podi + Ghee + Thovaiyal
5. Watermelon Fruit + Papad + Pickle + Buttermilk', 'Dal Kachori / Sweet Chutney
Tea / Coffee / Milk', '1. Chole Batura + White / Black Channa Masala
2. Veg Briyani + Dahi Onion Raita
3. White Rice + Rasam + Mix Veg Poriyal + Sambar
4. Salad (Onion + Beetroot) + Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 2, 'Friday', '1. Pav Bhaji + Chopped Onion and Lemon
2. Idly + Vada + Sambar + Chettinad Kara Chutney
3. Egg Bhurji
4. Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Pulka + Kadai Chicken Curry
2. Jeera Rice / Tomato Rice (Alternate Week) + Papad
3. White Rice + Udupi Sambar + Pudalangai Poriyal + Moong Dal Rasam + Buttermilk
4. Paruppu Podi + Ghee + Thovaiyal
5. Muskmelon + Pickle', 'Sambar Vada / Coconut Chutney
Tea / Coffee / Milk', '1. Phulka + Lauki Channa Masala + French Fries
2. White Rice + Radish Sambar + Carrot Poriyal + Rasam
3. Ghee Rice
4. Strawberry Milkshake + Onion + Carrot Salad');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 2, 'Saturday', '1. Aloo Paratha + Tomato Chutney
2. Pongal + Vada + Sambar
3. Boiled Egg
4. Wheat Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Pulka + Dal Punjabi
2. Fried Rice + Veg Manchurian (Semi Gravy)
3. White Rice + Karakuzhambu + Milagu Rasam + Curd
4. Paruppu Podi + Ghee + Thovaiyal
5. Pineapple + Papad + Pickle + Lemon Juice', 'Veg Samosa + Sauce + Mint Chutney
Tea / Coffee / Milk', '1. Pulka + Dal Makhani + Gobi Chilli Dry
2. Millet Dosa + Sambar + Chutney
3. White Rice + Rasam + Buttermilk + Mix Veg Poriyal
4. Paruppu Podi + Ghee + Thovaiyal + Rice Kheer
5. Milk + Salad (Tomato, Onion, Lemon, Carrot)');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Men', 'Non-Veg', 2, 'Sunday', '1. Semiya Upma
2. Masala Dosai + Sambar + Groundnut Chutney
3. Egg Omelette
4. Bread + Butter + Jam
5. Tea / Coffee / Milk', '1. Kalyana Chicken Biryani + Plain Chicken Gravy + Onion Raita
2. Pulka + Black Channa Dal
3. Plain Rice + Mysore Rasam
4. Salad + Lemon Juice', 'Papdi Chat
Ginger Tea / Coffee / Milk', '1. Chapathi + Mixed Dal
2. Methi Pulao
3. White Rice + Sambar + Rasam + Ridge Gourd with White Channa Poriyal + Curd Rice with Fruits
4. Paruppu Podi + Ghee + Thovaiyal
5. Fruit Salad (Green Grapes + Papaya) + Papad + Pickle + Buttermilk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 1, 'Monday', '1. Pav Bajji, Masala, Chopped Onion
2. Idly, Vada, Sambar, Tomato Chutney
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Ajwain Chapathi, Veg Kofta
2. Brinji Rice, Carrot Raitha
3. White Rice, Drumstick Sambar, Rasam, Dry Bhindi Fry
4. Parrupu Podi, Ghee, Thovaiyal, Pickle, Papad
5. Butter Milk
6. Fruit - Papaya', '1. Papdi Chat / Vada Pav
2. Tea, Coffee, Milk', '1. Chapathi, Rajma Masala
2. Tomato Sevai / Lemon Sevai, Chutney
3. White Rice, Black dal, Rasam, French Fries, Curd
4. Ice cream
5. Milk, Salad (Carrot, Beetroot)');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 1, 'Tuesday', '1. Idiyappam, Coconut Milk, veg stew
2. Aloo paratha, Curd, Pickle
3. Tea, Milk, Coffee
4. Brown Bread, Butter, Jam', '1. Chapathi, Veg Chana Masala
2. Carrot rice / Coconut rice
3. White Rice, Green Dhal, Potato Poriyal, Rasam, Curd
4. Parrupu podi, Ghee, Thovaiyal, Pickle, Bat Fryums
5. Fruit - Watermelon', '1. Boiled Black Sundal with tadka / Boiled Sweet corn + Masala + Lemon 
2. Tea, Coffee, Milk', '1. Podi Uttappam, Sambar, Tomato Chutney
2. Phulka, Paneer Butter Masala
3. White Rice, Sambar, Rasam, Cabbage Poriyal, Butter Milk
4. Gulab Jamun, Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 1, 'Wednesday', '1. Thin dosa, Vadacurry, Groundnut Chutney
2. Poha (carrot, beans, peas and aloo), onion
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Chapathi, Veg Sabji
2. Paneer Pulav
3. White Rice, Lady''s finger Puli Kolumbu, Rasam, Beans Poriyal, Curd
4. Parrupu podi, Gingeli oil, Thovaiyal , pickle, Potato Chips
5. Salad, Lemon Mint Juice', '1. Kachodi + Tamarind Chutney / Samosa 
2. Tea, Coffee, Milk', '1. Masala Dosa, Sambar, Chutney
2. Chapathi, Green Peas Capsicum Masala
3. White Rice, Dal, Rasam, Pumpkin Poriyal, Buttermilk
4. Banana, Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 1, 'Thursday', '1. Vegetable Rava idly, Sambar, Mint Chutney
2. Poori, Aloo Masala
3. Tea, Milk, Coffee
4. Brown Bread, Butter, Jam', '1. Phulka, Soya Chunks curry
2. Veg Pulav + Boondi Raitha / Mint Rice
3. White Rice, Raddish Sambar, Tomato Rasam, Dry Keerai Poriyal, Buttermilk 
4. Parrupu Podi, Ghee, Thovaiyal, Pickle, Papad
5. Fruit - Pineapple', '1. Keerai Bonda + Chutney / Banana bajji 
2. Tea, Coffee, Milk', '1. Wheat Veg Upma / Veg Semiya upma, Coconut Chutney
2. Chapathi, Jeera dhal
3. White Rice, Rasam, Dry Vazhakkai Poriyal, Curd
4. Jalebi, Milk, Salad, (Onion, Carrot, Cucumber)');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 1, 'Friday', '1. Pesarattu Dosa, Parupu Vada, Veg stew 
2. Veg Khichdi / Sabudana Kichadi, Curd
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Chapathi, Spinach dal, Aloo peas masala
2. Bisibelebath / Vangibath 
3. White Rice, Moor Kulambu, Carrot Poriayal, Rasam, Curd
4. Parrupu podi, ghee, Thovaiyal, Pickle, Bat Fryums
5. Lemon Mint Juice', '1. White Sauce Pasta / Sandwich 
2. Tea, Coffee, Milk', '1. Veg Biriyani, Raitha, Paneer Manchurian
2. Chapathi, Kashmiri aloo dum
3. White Rice, Rasam, Butter Milk
4. Fruit Custard, Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 1, 'Saturday', '1. Pongal, Medhu Vada, Sambar, Chutney
2. Palak Paratha, Curd, Tomato gravy
3. Tea, Milk, Coffee
4. Brown Bread, Butter, Jam', '1. Chappathi, Dal Tadka
2. Tamarind rice / Methi Rice 
3. White Rice, Avarakkai Sambar, Rasam, Beetroot Poriyal, Curd 
4. Parrupu podi, Gingely oil, Thovaiyal, Pickle, papad
5. Fruit Salad', '1. Dahi puri  / Pazhampori 
2. Tea, Coffee, Milk', '1. Oil Chapathi, Peas Gravy
2. White Rice, Cabbage Paruupu kootu, Rasam, Appalam , Butter Milk
3. Salad (Onion, Carrot, Cucumber)
4. Chocolate Milk / Badam Milk ');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 1, 'Sunday', '1. White Puttu, Kadala Curry, Grated Coconut, Banana, Sugar, Ghee
2. Moong dhal paratha, Curd, Pickle
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Veg Biriyani, Gobi 65, Onion Raitha, Brinjal Curry
2. Phulka, Matter Paneer
3. White rice, Rasam, Curd Rice, Pickle
4. Pineapple Kesari, Lemon Juice ', '1. Bread Pakoda / Onion Pakoda
2. Tea, Coffee, Milk', '1. Chole Bhature, White Chenna Masala, Mirchi Raitha 
2. Methi Pulav
3. White Rice, Andhra Dhal, Rasam, Mix veg poriyal, Butter Milk
4. Salad (Tomato + Cucumber + Carrot + Lemon), Milk ');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 2, 'Monday', '1. Pav Bajji, Masala, Chopped Onion
2. Idly, Vada, Sambar, Tomato Chutney
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Ajwain Chapathi, Veg Kofta
2. Brinji Rice, Carrot Raitha
3. White Rice, Drumstick Sambar, Rasam, Dry Bhindi Fry
4. Parrupu Podi, Ghee, Thovaiyal, Pickle, Papad
5. Butter Milk
6. Fruit - Papaya', '1. Papdi Chat / Vada Pav
2. Tea, Coffee, Milk', '1. Chapathi, Rajma Masala
2. Tomato Sevai / Lemon Sevai, Chutney
3. White Rice, Black dal, Rasam, French Fries, Curd
4. Ice cream
5. Milk, Salad (Carrot, Beetroot)');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 2, 'Tuesday', '1. Idiyappam, Coconut Milk, veg stew
2. Aloo paratha, Curd, Pickle
3. Tea, Milk, Coffee
4. Brown Bread, Butter, Jam', '1. Chapathi, Veg Chana Masala
2. Carrot rice / Coconut rice
3. White Rice, Green Dhal, Potato Poriyal, Rasam, Curd
4. Parrupu podi, Ghee, Thovaiyal, Pickle, Bat Fryums
5. Fruit - Watermelon', '1. Boiled Black Sundal with tadka / Boiled Sweet corn + Masala + Lemon 
2. Tea, Coffee, Milk', '1. Podi Uttappam, Sambar, Tomato Chutney
2. Phulka, Paneer Butter Masala
3. White Rice, Sambar, Rasam, Cabbage Poriyal, Butter Milk
4. Gulab Jamun, Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 2, 'Wednesday', '1. Thin dosa, Vadacurry, Groundnut Chutney
2. Poha (carrot, beans, peas and aloo), onion
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Chapathi, Veg Sabji
2. Paneer Pulav
3. White Rice, Lady''s finger Puli Kolumbu, Rasam, Beans Poriyal, Curd
4. Parrupu podi, Gingeli oil, Thovaiyal , pickle, Potato Chips
5. Salad, Lemon Mint Juice', '1. Kachodi + Tamarind Chutney / Samosa 
2. Tea, Coffee, Milk', '1. Masala Dosa, Sambar, Chutney
2. Chapathi, Green Peas Capsicum Masala
3. White Rice, Dal, Rasam, Pumpkin Poriyal, Buttermilk
4. Banana, Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 2, 'Thursday', '1. Vegetable Rava idly, Sambar, Mint Chutney
2. Poori, Aloo Masala
3. Tea, Milk, Coffee
4. Brown Bread, Butter, Jam', '1. Phulka, Soya Chunks curry
2. Veg Pulav + Boondi Raitha / Mint Rice
3. White Rice, Raddish Sambar, Tomato Rasam, Dry Keerai Poriyal, Buttermilk 
4. Parrupu Podi, Ghee, Thovaiyal, Pickle, Papad
5. Fruit - Pineapple', '1. Keerai Bonda + Chutney / Banana bajji 
2. Tea, Coffee, Milk', '1. Wheat Veg Upma / Veg Semiya upma, Coconut Chutney
2. Chapathi, Jeera dhal
3. White Rice, Rasam, Dry Vazhakkai Poriyal, Curd
4. Jalebi, Milk, Salad, (Onion, Carrot, Cucumber)');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 2, 'Friday', '1. Pesarattu Dosa, Parupu Vada, Veg stew 
2. Veg Khichdi / Sabudana Kichadi, Curd
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Chapathi, Spinach dal, Aloo peas masala
2. Bisibelebath / Vangibath 
3. White Rice, Moor Kulambu, Carrot Poriayal, Rasam, Curd
4. Parrupu podi, ghee, Thovaiyal, Pickle, Bat Fryums
5. Lemon Mint Juice', '1. White Sauce Pasta / Sandwich 
2. Tea, Coffee, Milk', '1. Veg Biriyani, Raitha, Paneer Manchurian
2. Chapathi, Kashmiri aloo dum
3. White Rice, Rasam, Butter Milk
4. Fruit Custard, Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 2, 'Saturday', '1. Pongal, Medhu Vada, Sambar, Chutney
2. Palak Paratha, Curd, Tomato gravy
3. Tea, Milk, Coffee
4. Brown Bread, Butter, Jam', '1. Chappathi, Dal Tadka
2. Tamarind rice / Methi Rice 
3. White Rice, Avarakkai Sambar, Rasam, Beetroot Poriyal, Curd 
4. Parrupu podi, Gingely oil, Thovaiyal, Pickle, papad
5. Fruit Salad', '1. Dahi puri  / Pazhampori 
2. Tea, Coffee, Milk', '1. Oil Chapathi, Peas Gravy
2. White Rice, Cabbage Paruupu kootu, Rasam, Appalam , Butter Milk
3. Salad (Onion, Carrot, Cucumber)
4. Chocolate Milk / Badam Milk ');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Veg', 2, 'Sunday', '1. White Puttu, Kadala Curry, Grated Coconut, Banana, Sugar, Ghee
2. Moong dhal paratha, Curd, Pickle
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Veg Biriyani, Gobi 65, Onion Raitha, Brinjal Curry
2. Phulka, Matter Paneer
3. White rice, Rasam, Curd Rice, Pickle
4. Pineapple Kesari, Lemon Juice ', '1. Bread Pakoda / Onion Pakoda
2. Tea, Coffee, Milk', '1. Chole Bhature, White Chenna Masala, Mirchi Raitha 
2. Methi Pulav
3. White Rice, Andhra Dhal, Rasam, Mix veg poriyal, Butter Milk
4. Salad (Tomato + Cucumber + Carrot + Lemon), Milk ');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 1, 'Monday', '1. Idly, Paruppu Vada, Sambar, Mint Chutney, Podi, Oil
2. Omlette with Spinach
3. Puri, Aloo Masala (Peas & Carrots added)
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Phulka, Soya Gravy
2. Tomato Rice with Green Beans
3. White Rice, Raddish Sambar (extra drumstick), Rasam, Vaalaku Puttu Poriyal, Curd
4. Paruppu Podi, Ghee, Thovaiyal, Pickle, Papad
5. Fruit - Pineapple, Lemon Mint Juice', '1. White Pasta / Veg Samosa Green Chutney 
2. Tea, Coffee, Milk', '1. Chapathi, Chettinad Egg Masala
2. Paruppu dam
3. White Rice, Rasam, Dry Bhindi Fry, Butter Milk
4. Salad (Carrot, Cucumber, Tomato)
5. Ice Cream, Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 1, 'Tuesday', '1. Paneer Paratha, Tomato Onion Gravy, Curd
2. Ghee Pongal, Vada, Vegetable Sambar, Coconut Chutney
3. Boiled Egg
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Chapathi, Green Peas Masala / Paneer Butter Masala with capsicum 
2. Mint Rice / Coconut Rice
3. White Rice, Mor Kulambu, Pepper Rasam, Carrot Beans Poriyal, Curd
4. Payasam, Lemon Mint Juice', '1. Boiled Sween Corn with Masala
2. Tea, Coffee, Milk', '1. Phulka, Palak Kofta Curry
2. Adai Dosa, Tomato Onion Chutney, Sambar
3. White Rice, Black Dhal, Rasam, Cabbage Poriyal, Butter Milk
4. Salad (Carrot, Beetroot, Cucumber)
5. Milk
6. Banana');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 1, 'Wednesday', '1. Thin Dosa, Vadacurry, Onion Chutney
2. Veg Khichadi
3. Egg Bhurji with onions and tomato
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Ajwain Chapathi, Dragon Chicken / Tandoori Chicken
2. Veg Pulav (extra beans, carrot) / Jeera Rice
3. White Rice, Mix, Veg Paruppu, Rasam, Cluster Beans Poriyal, Curd
4. Paruppu Podi, Gingely Oil, Thovaiyal, Pickle, Papad
5. Nannari Juice', '1. Pani Puri  / Dahi Puri 
2. Tea, Coffee, Milk', '1. Roti, Mushroom Masala
2. Veg Biriyani with Cauliflower & beans, Raitha
3. White Rice, Rasam, French Fries, Butter Milk
4. Fruit Custard
5. Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 1, 'Thursday', '1. Pav Bhaji (extra cabbage & beans), Masala, Chopped Onion and Chilli
2. Carrot Dosa, Peanut chutney, Sambar
3. French Toast
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Phulka, Dal Makani with spinach
2. Bisibelebath with beans, carrot & drumstick 
3. White Rice Karamani Kara Puli Kolambu Rasam, Dry Keerai Poriyal, Curd
4. Paruppu Podi, Ghee, Thovaiyal, Pickle, Potato Chips
5. Jal Jeera, Fruit - Watermelon', '1. Banana Bajji / Onion Pakoda 
2. Tea, Coffee, Milk', '1. Phulka, Egg Gravy
2. Masala Dosa, Carrot Chutney, Sambar
3. White Rice, Dhal, Rasam, Dry Yam Varuval, Butter Milk
4. Salad
5. Milk, Jalebi');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 1, 'Friday', '1. Idiyappam, Coconut Milk, Veg Stew (Extra carrot & beans)
2. Potato Poha, onion / Aloo paratha, Curd, Pickle
3. Boiled Egg
4. Tea, Milk, Coffee
5. Wheat Bread, Butter, Jam', '1. Phulka, Paneer Tikka Masala
2. Tamarind Rice  / Mango Rice
3. White Rice, Drumstick Sambar, Pudalangai Poriyal, Rasam, Curd
4. Paruppu Podi, Ghee, Paruppu Thovaiyal, Pickle, Appalam, Fruit salad
5. Lemon Mint Juice', '1. Sambar Vada (Extra Veggies) / Bhel Puri with separate veggies 
2. Tea, Coffee, Milk', '1. Wheat Paratha, Chettinad Chicken Gravy / Kadai Chicken Gravy 
2. Idly, Tomato Veg Kurma, Chutney
3. White Rice, Rasam, Buttermilk
4. Gulab Jamun
5. Salad
6. Chocolate Milk / Badam Milk ');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 1, 'Saturday', '1. White Puttu, Kadala Curry, Grated Coconut, Banana, Sugar + Ghee
2. Veg Paratha curd, Pickle
3. Boiled Egg
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Palak Chapathi, Dal Punjabi
2. Egg Fried Rice with capsicum, Veg Manchurian with cabbage and beans
3. White Rice, Green Dhal curry, Beetroot Poriyal, Rasam, Curd
4. Paruppu Podi, Ghee, Thovaiyal, Pickle, Papad
5. Lemon Juice', '1. Sundal (With Grated Coconut) / Channa Chat (Cucumber, Onion, Carrot) 
2. Tea, Coffee, Milk', '1. Chapati, Aloo Dum Gravy / Aloo Peas Gravy / Chole Bhature, White Channa Masala, Mirchi Raitha
2. Veg Semiya / Tomato Sevai, Chutney
3. White Rice, Dhal, Rasam, Gobi 65, Butter Milk
4. Salad (Carrot, Beetroot, Cucumber)
5. Milk ');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 1, 'Sunday', '1. Podi Onion Uttappam, Sambar, Chutney
2. Sabudana Kichadi with carrot and beans
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Chettinad Chicken Biriyani  / Hyderabad Dum Chicken Biriyani 
2. Chicken Gravy without Pieces, Onion Raitha, Brinjal Curry, Boiled Egg, Gobi 65
3. Pulka, Black Channa Dal Curry
4. White Rice, Rasam, Curd Rice, Pickle
5. Bread Halwa, Lemon Mint Juice', '1. Burger (Patty, Tomato, Cucumber) Sauce / Kachodi, Kara Chutney 
2. Tea, Coffee, Milk', '1. Phulka, Rajma Curry
2. Methi Pulav
3. White Rice, Sambar Pumpkin, Tomato Rasam, Carrot Poriyal 
4. Butter Milk, Papad
5. Fruit - Papaya');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 2, 'Monday', '1. Idly, Paruppu Vada, Sambar, Mint Chutney, Podi, Oil
2. Omlette with Spinach
3. Puri, Aloo Masala (Peas & Carrots added)
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Phulka, Soya Gravy
2. Tomato Rice with Green Beans
3. White Rice, Raddish Sambar (extra drumstick), Rasam, Vaalaku Puttu Poriyal, Curd
4. Paruppu Podi, Ghee, Thovaiyal, Pickle, Papad
5. Fruit - Pineapple, Lemon Mint Juice', '1. White Pasta / Veg Samosa Green Chutney 
2. Tea, Coffee, Milk', '1. Chapathi, Chettinad Egg Masala
2. Paruppu dam
3. White Rice, Rasam, Dry Bhindi Fry, Butter Milk
4. Salad (Carrot, Cucumber, Tomato)
5. Ice Cream, Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 2, 'Tuesday', '1. Paneer Paratha, Tomato Onion Gravy, Curd
2. Ghee Pongal, Vada, Vegetable Sambar, Coconut Chutney
3. Boiled Egg
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Chapathi, Green Peas Masala / Paneer Butter Masala with capsicum 
2. Mint Rice / Coconut Rice
3. White Rice, Mor Kulambu, Pepper Rasam, Carrot Beans Poriyal, Curd
4. Payasam, Lemon Mint Juice', '1. Boiled Sween Corn with Masala
2. Tea, Coffee, Milk', '1. Phulka, Palak Kofta Curry
2. Adai Dosa, Tomato Onion Chutney, Sambar
3. White Rice, Black Dhal, Rasam, Cabbage Poriyal, Butter Milk
4. Salad (Carrot, Beetroot, Cucumber)
5. Milk
6. Banana');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 2, 'Wednesday', '1. Thin Dosa, Vadacurry, Onion Chutney
2. Veg Khichadi
3. Egg Bhurji with onions and tomato
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Ajwain Chapathi, Dragon Chicken / Tandoori Chicken
2. Veg Pulav (extra beans, carrot) / Jeera Rice
3. White Rice, Mix, Veg Paruppu, Rasam, Cluster Beans Poriyal, Curd
4. Paruppu Podi, Gingely Oil, Thovaiyal, Pickle, Papad
5. Nannari Juice', '1. Pani Puri  / Dahi Puri 
2. Tea, Coffee, Milk', '1. Roti, Mushroom Masala
2. Veg Biriyani with Cauliflower & beans, Raitha
3. White Rice, Rasam, French Fries, Butter Milk
4. Fruit Custard
5. Milk');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 2, 'Thursday', '1. Pav Bhaji (extra cabbage & beans), Masala, Chopped Onion and Chilli
2. Carrot Dosa, Peanut chutney, Sambar
3. French Toast
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Phulka, Dal Makani with spinach
2. Bisibelebath with beans, carrot & drumstick 
3. White Rice Karamani Kara Puli Kolambu Rasam, Dry Keerai Poriyal, Curd
4. Paruppu Podi, Ghee, Thovaiyal, Pickle, Potato Chips
5. Jal Jeera, Fruit - Watermelon', '1. Banana Bajji / Onion Pakoda 
2. Tea, Coffee, Milk', '1. Phulka, Egg Gravy
2. Masala Dosa, Carrot Chutney, Sambar
3. White Rice, Dhal, Rasam, Dry Yam Varuval, Butter Milk
4. Salad
5. Milk, Jalebi');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 2, 'Friday', '1. Idiyappam, Coconut Milk, Veg Stew (Extra carrot & beans)
2. Potato Poha, onion / Aloo paratha, Curd, Pickle
3. Boiled Egg
4. Tea, Milk, Coffee
5. Wheat Bread, Butter, Jam', '1. Phulka, Paneer Tikka Masala
2. Tamarind Rice  / Mango Rice
3. White Rice, Drumstick Sambar, Pudalangai Poriyal, Rasam, Curd
4. Paruppu Podi, Ghee, Paruppu Thovaiyal, Pickle, Appalam, Fruit salad
5. Lemon Mint Juice', '1. Sambar Vada (Extra Veggies) / Bhel Puri with separate veggies 
2. Tea, Coffee, Milk', '1. Wheat Paratha, Chettinad Chicken Gravy / Kadai Chicken Gravy 
2. Idly, Tomato Veg Kurma, Chutney
3. White Rice, Rasam, Buttermilk
4. Gulab Jamun
5. Salad
6. Chocolate Milk / Badam Milk ');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 2, 'Saturday', '1. White Puttu, Kadala Curry, Grated Coconut, Banana, Sugar + Ghee
2. Veg Paratha curd, Pickle
3. Boiled Egg
4. Tea, Milk, Coffee
5. Bread, Butter, Jam', '1. Palak Chapathi, Dal Punjabi
2. Egg Fried Rice with capsicum, Veg Manchurian with cabbage and beans
3. White Rice, Green Dhal curry, Beetroot Poriyal, Rasam, Curd
4. Paruppu Podi, Ghee, Thovaiyal, Pickle, Papad
5. Lemon Juice', '1. Sundal (With Grated Coconut) / Channa Chat (Cucumber, Onion, Carrot) 
2. Tea, Coffee, Milk', '1. Chapati, Aloo Dum Gravy / Aloo Peas Gravy / Chole Bhature, White Channa Masala, Mirchi Raitha
2. Veg Semiya / Tomato Sevai, Chutney
3. White Rice, Dhal, Rasam, Gobi 65, Butter Milk
4. Salad (Carrot, Beetroot, Cucumber)
5. Milk ');
INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner) VALUES ('Women', 'Non-Veg', 2, 'Sunday', '1. Podi Onion Uttappam, Sambar, Chutney
2. Sabudana Kichadi with carrot and beans
3. Tea, Milk, Coffee
4. Bread, Butter, Jam', '1. Chettinad Chicken Biriyani  / Hyderabad Dum Chicken Biriyani 
2. Chicken Gravy without Pieces, Onion Raitha, Brinjal Curry, Boiled Egg, Gobi 65
3. Pulka, Black Channa Dal Curry
4. White Rice, Rasam, Curd Rice, Pickle
5. Bread Halwa, Lemon Mint Juice', '1. Burger (Patty, Tomato, Cucumber) Sauce / Kachodi, Kara Chutney 
2. Tea, Coffee, Milk', '1. Phulka, Rajma Curry
2. Methi Pulav
3. White Rice, Sambar Pumpkin, Tomato Rasam, Carrot Poriyal 
4. Butter Milk, Papad
5. Fruit - Papaya');

-- Commit all changes to persist data
COMMIT;
