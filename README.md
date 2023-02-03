# Gyms_Database
  This is the database for a fitness app, using PL/SQL and SQL Server. 
  Inside, we collect information about all users that are joining the app, including members and instructors. 
	
    ->members own a certain membership, one or more workout plans with a designated instructor in a gym of their choise
    ->all members pay a monthly membership tax
    ->a member can also purchase online sessions
		
  Moreover, we keep information about the employees(receptionists, cleaning staff, guardians). Every gym can have one or more employees from each category, but an employee can only work at one gym. 
  For a better organization of the data, I created two associative tables
	
    ->"workout_plan" which can be associated with a schedule, it contains the plans of all the members and it connects 4 tables (Gyms, Members, Instructors, Workout)
    ->"books" which contains data about the online sessions of the members; it connects 2 tables (Members and Online_Class)
		
   Here is the ER-Diagram of this project:
   
   ![image](https://user-images.githubusercontent.com/92602870/216628885-3ce5c0e7-a89f-44ae-94e6-13f1c5883bb4.png)
