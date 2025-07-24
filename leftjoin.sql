--NOTE I HAVE USER // INSTEAD OF -- TO SHOW COMMENT TO MAKE THE CODE EASY TO UNDERSTAND


CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);     //this will create a table name students with student id as primary key which is unique.

INSERT INTO Students (student_id, name) VALUES
(1, 'adarsh'),
(2, 'amit'),
(3, 'ayush'),
(4, 'divyansh');  // these are the values of the first table.

//example of table Students--
student_id    name
1             adarsh  
2             amit
3             ayush
4             divyansh


CREATE TABLE Marks (
    student_id INT,
    subject VARCHAR(50),
    marks INT
);  //this will create the second table to perform left join.

INSERT INTO Marks (student_id, subject, marks) VALUES
(1, 'Math', 80),
(2, 'Math', 90),
(2, 'Science', 85),
(5, 'Math', 88); //these are the values of second table 


//example of table Marks--
student_id       subject      marks
1                Math          80
2                Math          90
2                Science       85
5                Math          88


///Note: student_id = 5 does not exist in Students.

SELECT Students.name, Marks.subject, Marks.marks
FROM Students
LEFT JOIN Marks ON Students.student_id = Marks.student_id; // this code will perform the left join and create a new table..


//Result of  left join--
name	     subject  	marks
adarsh	    Math	    80
amit	      Math    	90
amit	      Science 	85
divyansh   	NULL	    NULL
ayush	      NULL	    NULL







