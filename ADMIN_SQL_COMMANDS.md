================================================================================
VIT MESS MANAGEMENT SYSTEM - ADMIN SQL COMMANDS GUIDE
================================================================================

This document provides all SQL commands that can be executed via the admin panel
endpoint: POST /api/admin/execute-sql

How to Use:
1. Go to Admin Panel in your browser
2. Copy any SQL command below
3. Paste into the SQL text area
4. Click "Execute SQL"
5. Results will display as formatted HTML table

================================================================================
SECTION 1: VIEW MEAL MENU DATA
================================================================================

-- View ALL meals (all 28 records)
SELECT menu_id, hostel_type, category, day_of_week, 
       breakfast, lunch, 
       snacks, dinner 
FROM mess_menu 
ORDER BY menu_id;

-- View meals for specific hostel type
SELECT menu_id, hostel_type, category, day_of_week, 
       breakfast, lunch, 
       snacks, dinner 
FROM mess_menu 
WHERE hostel_type = 'Men' 
ORDER BY category, day_of_week;

-- View meals for Women hostel
SELECT menu_id, hostel_type, category, day_of_week, 
       breakfast, lunch, 
       snacks, dinner 
FROM mess_menu 
WHERE hostel_type = 'Women' 
ORDER BY category, day_of_week;

-- View Vegetarian meals only
SELECT menu_id, hostel_type, category, day_of_week, 
       breakfast, lunch, 
       snacks, dinner 
FROM mess_menu 
WHERE category = 'Vegetarian' 
ORDER BY hostel_type, day_of_week;

-- View Non-Vegetarian meals only
SELECT menu_id, hostel_type, category, day_of_week, 
       breakfast, lunch, 
       snacks, dinner 
FROM mess_menu 
WHERE category = 'Non-Vegetarian' 
ORDER BY hostel_type, day_of_week;

-- View meals for Men Vegetarian
SELECT menu_id, hostel_type, category, day_of_week, 
       breakfast, lunch, 
       snacks, dinner 
FROM mess_menu 
WHERE hostel_type = 'Men' AND category = 'Vegetarian' 
ORDER BY day_of_week;

-- View meals for specific day (e.g., Monday)
SELECT menu_id, hostel_type, category, day_of_week, 
       breakfast, lunch, 
       snacks, dinner 
FROM mess_menu 
WHERE day_of_week = 'Monday' 
ORDER BY hostel_type, category;

================================================================================
SECTION 2: UPDATE BREAKFAST ITEMS
================================================================================

-- Update breakfast for a specific menu
UPDATE mess_menu 
SET breakfast = 'New Breakfast Item' 
WHERE menu_id = 1;

-- Update breakfast for all Monday meals
UPDATE mess_menu 
SET breakfast = 'Updated Monday Breakfast' 
WHERE day_of_week = 'Monday';

-- Update breakfast for Men Vegetarian Monday
UPDATE mess_menu 
SET breakfast = 'New Breakfast' 
WHERE hostel_type = 'Men' AND category = 'Vegetarian' AND day_of_week = 'Monday';

-- Update breakfast for all Women meals
UPDATE mess_menu 
SET breakfast = 'New Women Breakfast' 
WHERE hostel_type = 'Women';

-- Update breakfast for all Vegetarian meals
UPDATE mess_menu 
SET breakfast = 'New Veg Breakfast' 
WHERE category = 'Vegetarian';

================================================================================
SECTION 3: UPDATE LUNCH ITEMS
================================================================================

-- Update lunch for a specific menu
UPDATE mess_menu 
SET lunch = 'New Lunch Item' 
WHERE menu_id = 1;

-- Update lunch for all Tuesday meals
UPDATE mess_menu 
SET lunch = 'Updated Tuesday Lunch' 
WHERE day_of_week = 'Tuesday';

-- Update lunch for Men Non-Vegetarian Wednesday
UPDATE mess_menu 
SET lunch = 'Chicken Biryani with Raita' 
WHERE hostel_type = 'Men' AND category = 'Non-Vegetarian' AND day_of_week = 'Wednesday';

================================================================================
SECTION 4: UPDATE SNACKS ITEMS
================================================================================

-- Update snacks for a specific menu
UPDATE mess_menu 
SET snacks = 'Tea + Cookies' 
WHERE menu_id = 1;

-- Update snacks for all Friday meals
UPDATE mess_menu 
SET snacks = 'Samosa + Sauce' 
WHERE day_of_week = 'Friday';

-- Update snacks for all Women Vegetarian meals
UPDATE mess_menu 
SET snacks = 'Fresh Fruit + Tea' 
WHERE hostel_type = 'Women' AND category = 'Vegetarian';

================================================================================
SECTION 5: UPDATE DINNER ITEMS
================================================================================

-- Update dinner for a specific menu
UPDATE mess_menu 
SET dinner = 'New Dinner Item' 
WHERE menu_id = 1;

-- Update dinner for all Sunday meals
UPDATE mess_menu 
SET dinner = 'Special Sunday Dinner' 
WHERE day_of_week = 'Sunday';

-- Update dinner for Men Vegetarian Friday
UPDATE mess_menu 
SET dinner = 'Paneer Butter Masala + Rice + Dessert' 
WHERE hostel_type = 'Men' AND category = 'Vegetarian' AND day_of_week = 'Friday';

================================================================================
SECTION 6: UPDATE MULTIPLE MEAL ITEMS AT ONCE
================================================================================

-- Update breakfast and lunch together
UPDATE mess_menu 
SET breakfast = 'Dosa + Sambar', lunch = 'Phulka + Dal Makhani' 
WHERE menu_id = 5;

-- Update all meal times for Women Non-Vegetarian Monday
UPDATE mess_menu 
SET breakfast = 'Idly + Vada + Sambar', 
    lunch = 'Chicken Biryani + Raita',
    snacks = 'Pastry + Tea',
    dinner = 'Phulka + Egg Curry'
WHERE hostel_type = 'Women' AND category = 'Non-Vegetarian' AND day_of_week = 'Monday';

================================================================================
SECTION 7: VIEW LAUNDRY SCHEDULE DATA
================================================================================

-- View ALL laundry schedules (36 records)
SELECT schedule_id, block, day_of_month, rooms 
FROM laundry_schedule 
ORDER BY block, day_of_month;

-- View laundry schedule for Block A
SELECT schedule_id, block, day_of_month, rooms 
FROM laundry_schedule 
WHERE block = 'A' 
ORDER BY day_of_month;

-- View laundry schedule for Block B
SELECT schedule_id, block, day_of_month, rooms 
FROM laundry_schedule 
WHERE block = 'B' 
ORDER BY day_of_month;

-- View laundry schedule for specific day of month
SELECT schedule_id, block, day_of_month, rooms 
FROM laundry_schedule 
WHERE day_of_month = 2 
ORDER BY block;

-- View laundry schedule for Block A on day 5
SELECT schedule_id, block, day_of_month, rooms 
FROM laundry_schedule 
WHERE block = 'A' AND day_of_month = 5;

================================================================================
SECTION 8: UPDATE LAUNDRY ROOM ASSIGNMENTS
================================================================================

-- Update room range for specific schedule
UPDATE laundry_schedule 
SET rooms = '100 - 200' 
WHERE schedule_id = 1;

-- Update all Block A room assignments
UPDATE laundry_schedule 
SET rooms = '200 - 400' 
WHERE block = 'A';

-- Update Block B on day 2
UPDATE laundry_schedule 
SET rooms = '300 - 500' 
WHERE block = 'B' AND day_of_month = 2;

-- Update specific Block A day
UPDATE laundry_schedule 
SET rooms = 'New Room Range' 
WHERE block = 'A' AND day_of_month = 3;

================================================================================
SECTION 9: INSERT NEW MEAL RECORDS
================================================================================

-- Add new meal for Men Vegetables on Monday (menu_id should not exist)
INSERT INTO mess_menu 
(menu_id, hostel_type, category, day_of_week, breakfast, lunch, snacks, dinner, source_file, created_at)
VALUES 
(29, 'Men', 'Vegetarian', 'Monday', 'New Breakfast', 'New Lunch', 'New Snacks', 'New Dinner', 'admin_edit', SYSDATE);

-- Add new meal for Women Non-Vegetarian
INSERT INTO mess_menu 
(menu_id, hostel_type, category, day_of_week, breakfast, lunch, snacks, dinner, source_file, created_at)
VALUES 
(30, 'Women', 'Non-Vegetarian', 'Friday', 'Egg Omelet', 'Butter Chicken', 'Pastry', 'Biryani', 'admin_edit', SYSDATE);

================================================================================
SECTION 10: INSERT NEW LAUNDRY SCHEDULES
================================================================================

-- Add new laundry schedule for Block C
INSERT INTO laundry_schedule 
(schedule_id, block, day_of_month, rooms)
VALUES 
(37, 'C', 2, '100 - 200');

-- Add another schedule for Block A
INSERT INTO laundry_schedule 
(schedule_id, block, day_of_month, rooms)
VALUES 
(38, 'A', 25, '500 - 600');

================================================================================
SECTION 11: DELETE RECORDS (USE WITH CAUTION!)
================================================================================

-- Delete a specific meal record
DELETE FROM mess_menu 
WHERE menu_id = 29;

-- Delete all menus for a specific day
-- WARNING: This will delete multiple records
DELETE FROM mess_menu 
WHERE day_of_week = 'Monday' AND hostel_type = 'Men' AND category = 'Vegetarian';

-- Delete a laundry schedule
DELETE FROM laundry_schedule 
WHERE schedule_id = 37;

-- Delete all Block C laundry schedules
DELETE FROM laundry_schedule 
WHERE block = 'C';

================================================================================
SECTION 12: COMMIT CHANGES (IMPORTANT!)
================================================================================

-- After making changes, you MUST commit them
COMMIT;

================================================================================
IMPORTANT NOTES FOR ADMIN USERS:
================================================================================

1. COLUMN NAMES for MESS_MENU:
   - menu_id: Unique identifier (NUMBER)
   - hostel_type: "Men" or "Women" (VARCHAR2)
   - category: "Vegetarian" or "Non-Vegetarian" (VARCHAR2)
   - day_of_week: "Monday" through "Sunday" (VARCHAR2)
   - breakfast, lunch, snacks, dinner: Meal items (VARCHAR2)
   - source_file: Tracking field (e.g., "admin_edit")
   - created_at: Timestamp (auto-set to SYSDATE)

2. COLUMN NAMES for LAUNDRY_SCHEDULE:
   - schedule_id: Unique identifier (NUMBER)
   - block: "A", "B", "C", etc. (VARCHAR2)
   - day_of_month: Day number (NUMBER, e.g., 2, 3, 4, etc.)
   - rooms: Room range as string (e.g., "112 - 353") (VARCHAR2)

3. No casting function is needed in MySQL for breakfast/lunch/snacks/dinner
   to properly convert CLOB data to readable text

4. REMEMBER TO COMMIT after making changes with UPDATE/INSERT/DELETE

5. Student API automatically reflects any changes made to the database
   - Students see updated menus immediately after COMMIT
   - Laundry schedules update in real-time

6. Use WHERE clause carefully to avoid updating wrong records

7. For new meals, always pick a menu_id that doesn't exist (e.g., 29, 30, etc.)

8. Test with SELECT first before using UPDATE/DELETE to ensure you're
   modifying the correct records

================================================================================
QUICK REFERENCE - MOST COMMON ADMIN TASKS:
================================================================================

-- View what students see
SELECT * FROM mess_menu WHERE hostel_type = 'Men' AND category = 'Vegetarian';

-- Update Monday breakfast
UPDATE mess_menu SET breakfast = 'Dosa + Sambar' WHERE day_of_week = 'Monday';

-- View laundry for a specific block
SELECT * FROM laundry_schedule WHERE block = 'A' ORDER BY day_of_month;

-- Update laundry rooms
UPDATE laundry_schedule SET rooms = 'New Rooms' WHERE schedule_id = 1;

-- COMMIT ALL CHANGES
COMMIT;

================================================================================
