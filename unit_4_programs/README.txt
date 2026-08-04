UNIT 4 PROGRAMS - README

This project contains 5 beginner-level ASP.NET Web Forms with database connectivity.

SETUP INSTRUCTIONS:

1. DATABASE SETUP:
   - Open SQL Server Management Studio (SSMS)
   - Run the DATABASE_SETUP.sql file to create the database and tables
   - The database name is: unit_4_db
   - Update the connection string in each program's .aspx.cs file if needed

2. CONNECTION STRING:
   - Current connection string: Server=.;Database=unit_4_db;Trusted_Connection=true;
   - This uses Windows Authentication
   - Change the Server value if your SQL Server is on a different machine

PROGRAMS INCLUDED:

PROGRAM 1 - User Sign Up Form (program_1.aspx)
- Allows users to sign up by entering their details
- Stores data in the 'users' table
- Simple form with validation for duplicate emails

PROGRAM 2 - Student Registration Form (program_2.aspx)
- Student registration with auto-generated User ID and Password
- User ID is same as email
- Password is randomly generated
- Data stored in 'students' table

PROGRAM 3 - Password Change Form (program_3.aspx)
- Allows users to change their password
- Validates current password before allowing change
- Confirms that new password and confirm password match

PROGRAM 4 - Employee Recruitment Form (program_4.aspx)
- Complete CRUD operations for employees
- Add new employees
- Update employee information
- Delete employee records
- Search employees by name
- GridView displays all employees

PROGRAM 5 - Student Marksheet (program_5.aspx)
- Complete CRUD operations for student marks
- Add marksheet with marks for 5 subjects
- Update marks
- Delete marksheet
- Search by roll number
- Automatic calculation of total marks and percentage
- GridView displays all marksheets

HOW TO USE:

1. Build the project
2. Run the SQL script to create database
3. Start the application
4. Navigate to each program using the links
5. All programs use simple beginner-level code with:
   - Direct SQL connections
   - SqlCommand for executing queries
   - SqlDataReader for reading data
   - SqlDataAdapter for filling GridViews
   - No stored procedures (direct SQL queries)

DATABASE TABLES:

users: UserID, FullName, Email, Username, Password, Phone, Address
students: StudentID, FirstName, LastName, Email, RollNumber, Course, Phone, DOB, Address, UserID, Password
employees: EmployeeID, EmployeeName, Email, Phone, Position, Department, Salary, Address
marksheets: MarksheetID, RollNumber, StudentName, Subject1-5, TotalMarks, Percentage
