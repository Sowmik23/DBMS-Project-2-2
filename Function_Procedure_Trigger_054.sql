


/**********************************<---procedure--->******************************************/



/*01. This procedure prints the total number of student and total number of 1st,2nd,3rd and 4th(respectively) year student in the hall.*/

Create or replace procedure NumberOfStudents
is 
t number;
cnt1 number;
cnt2 number;
cnt3 number;
cnt4 number;
begin
     t:=0;
     select count(id) into t from student;
     dbms_output.put_line('Total number of student is: ' || t); 
     
     cnt1:=0;
     select count(id) into cnt1 from student where year='1st';
     dbms_output.put_line('1st year student is: ' || cnt1); 
     cnt2:=0;
     select count(id) into cnt2 from student where year='2nd';
     dbms_output.put_line('2nd year student is: ' || cnt2); 
     cnt3:=0;
     select count(id) into cnt3 from student where year='3rd';
     dbms_output.put_line('3rd year student is: ' || cnt3); 
     cnt4:=0;
     select count(id) into cnt4 from student where year='4th';
     dbms_output.put_line('4th year student is: ' || cnt4); 

end NumberOfStudents;


/*execute*/


begin
     NumberOfStudents;
end;


/*02. This procedure prints the total number of room in the hall and total number of room in different buildings.*/



Create or replace procedure NumberOfRooms
is 
t number;
cnt1 number;
cnt2 number;
cnt3 number;
cnt4 number;
begin
     t:=0;
     select count(room_number) into t from room;
     dbms_output.put_line('Total number of room in the hall is: ' || t); 
     
     cnt1:=0;
     select count(room_number) into cnt1 from room where building_name='October Smriti Bhaban';
     dbms_output.put_line('October Smriti Bhaban : ' || cnt1); 
     cnt2:=0;
     select count(room_number) into cnt2 from room where building_name='Jyotirmoy Guhathakurta Bhaban';
     dbms_output.put_line('Jyotirmoy Guhathakurta Bhaban : ' || cnt2); 
     cnt3:=0;
     select count(room_number) into cnt3 from room where building_name='Govinda Chandra Dev building';
     dbms_output.put_line('Govinda Chandra Dev building : ' || cnt3); 
     cnt4:=0;
     select count(room_number) into cnt4 from room where building_name='Sontosh Chandra Bhattacharya Bhaban';
     dbms_output.put_line('Sontosh Chandra Bhattacharya Bhaban : ' || cnt4); 

end NumberOfRooms;

/*execute*/

begin
     NumberOfRooms;
end;



/*03. This determines the total number of (respectively) single,double and multiple room in the hall. */


create or replace procedure CountRoomType
is
t number;
begin
   t:=0;
   select count(room_number) into t from room where type='Single';
   dbms_output.put_line('Total single room: ' ||t);
   t:=0;
   select count(room_number) into t from room where type='Double';
   dbms_output.put_line('Total double room: ' ||t);
   t:=0;
   select count(room_number) into t from room where type='Multiple';
   dbms_output.put_line('Total multiple room: ' ||t);
end CountRoomType;

/*execute*/

begin
   CountRoomType;
end;



/*04.Procedure that print Total students can eat only in night. */

create or replace procedure NightMealCapacity
is
t number;
begin
  t:=0;
  select Coalesce(total1,0) + Coalesce(total2,0) Capacity into t
  from 
    (
      select sum(capacity) total1
      from mess
      where open_time like '%8:30pm%'
    ),
    ( 
      select sum(capacity) total2
      from canteen
      where open_time like '%8:30pm%' or close_time like '%10:30pm%'
    ) ;
   dbms_output.put_line('Total students can eats in night: ' ||t);
end NightMealCapacity;

/*execute*/

begin
  NightMealCapacity;
end;





/*05.This procedure takes a room number and print its the seat capacity. */

create or replace procedure CapacityOfARoom(x in number)
is
t number;
begin
  t:=0;
  select total_bed into t
  from room
  where room_number=x;
  dbms_output.put_line('Total students capacity is: '||t*2);
end CapacityOfARoom;

/*execute*/

begin
  CapacityOfARoom(412);
end;






/**************************<---function--->**********************************/





/*06. This function takes a student id and  return his house tutors name and departent name.So we can easily know about a students house tutor.*/

create or replace type x_a as object(
    name varchar(35),
    d_name varchar(35)
)

create or replace type char_array is table of x_a;

Create or replace function StudentsHouseTutor(x in number)
return char_array is 
ans_array char_array;
begin
      select x_a(name,dept_name) bulk collect into ans_array
      from teacher
      where building_name =
      (
      select building_name
      from room
      where room_number = (select room_number from student where id=x)
      );
     return ans_array;
end StudentsHouseTutor;

/*execute*/

Declare
   p char_array;
   t number;
begin
     p:=StudentsHouseTutor(102);
     t:=p.count;
     for i in 1..t loop
              dbms_output.put_line('Name : ' || p(i).name || '. Department : ' || p(i).d_name);
     end loop; 
end;





/*07. This function take a room number as input and returns all the information about this room number.*/

create or replace type roomType as object
( 
   room_number number,
   floor_number number,
   building_name varchar(35),
   type varchar(20),
   total_bed number,
   total_bed_credits number
)


create or replace type my_row as table of roomType;

create or replace function RoomCondition(x in number)
return my_row is
ans my_row;
begin
 select roomType(room_number,floor_number,building_name,type,total_bed,total_bed_credits) bulk collect into ans
 from room
 where room_number = x;
 return ans;
end RoomCondition;

/*execute*/

Declare
   p my_row;
   t number;
begin
     p:=RoomCondition(220);
     t:=p.count;
     for i in 1..t loop
              dbms_output.put_line('Building name : ' || p(i).building_name || '.' || chr(10) || 'Floor number : ' || p(i).floor_number || '.' || chr(10) || 'Room number  : ' || p(i).room_number || '.' || chr(10) || 'Room type : ' || p(i).type || '.' || chr(10) || 'Total bed : ' || p(i).total_bed || '.' || chr(10) || 'Total bed credits : ' || p(i).total_bed_credits);
     end loop; 
end;




/*08. It take an input as room number and  returns which students seat is in which bed in this room to see this condition a house tutor can easily insert a student in the room in an empty bed.*/

create or replace type SeatStudent as object
( 
   id number,
   name varchar(35),
   dept_name varchar(35),
   s_session varchar(20),
   year varchar(10),
   room_number number,
   bed_number varchar(10),
   bed_credits number,
   contact_info varchar(35),
   dob varchar(20),
   home_town varchar(30)
)


create or replace type my_row1 as table of SeatStudent;

create or replace function RoomStudents(x in number)
return my_row1 is
ans my_row1;
begin
 select SeatStudent(id,name,dept_name,s_session,year,room_number,bed_number,bed_credits,contact_info,dob,home_town) bulk collect into ans
 from student
 where room_number = x;
 return ans;
end RoomStudents;

/*execute*/

Declare
   p my_row1;
   t number;
begin
     p:=RoomStudents(220);
     t:=p.count;
     for i in 1..t loop
              dbms_output.put_line('ID: '||p(i).id ||' Name:'|| p(i).name ||' Dept.: '||  p(i).dept_name  ||' Session: '|| p(i).s_session ||' Year: '|| p(i).year ||' RoomNumber: '|| p(i).room_number ||' BedNumber: '|| p(i).bed_number ||' BedCredits: '|| p(i).bed_credits ||' Contact: '|| p(i).contact_info ||' DOB: '|| p(i).dob ||' Home: '|| p(i).home_town);
     end loop; 
end;




/*09. It takes a student id and returns all the information about this student.By this we can easily search a student. */


create or replace type SeatStudent as object
( 
   id number,
   name varchar(35),
   dept_name varchar(35),
   s_session varchar(20),
   year varchar(10),
   room_number number,
   bed_number varchar(10),
   bed_credits number,
   contact_info varchar(35),
   dob varchar(20),
   home_town varchar(30)
)


create or replace type my_row1 as table of SeatStudent;

create or replace function SearchStudents(x in number)
return my_row1 is
ans my_row1;
begin
 select SeatStudent(id,name,dept_name,s_session,year,room_number,bed_number,bed_credits,contact_info,dob,home_town) bulk collect into ans
 from student
 where id = x;
 return ans;
end SearchStudents;

/*execute*/

Declare
   p my_row1;
   t number;
begin
     p:=SearchStudents(110);
     t:=p.count;
     for i in 1..t loop
              dbms_output.put_line('ID: '||p(i).id ||' Name:'|| p(i).name ||' Dept.: '||  p(i).dept_name  ||' Session: '|| p(i).s_session ||' Year: '|| p(i).year ||' RoomNumber: '|| p(i).room_number ||' BedNumber: '|| p(i).bed_number ||' BedCredits: '|| p(i).bed_credits ||' Contact: '|| p(i).contact_info ||' DOB: '|| p(i).dob ||' Home: '|| p(i).home_town);
     end loop; 
end;




/*10.This function takes a computer lab name and return its director details. */


create or replace type DirectorType as object
( 
      directortype varchar(20),
      name varchar(35),
      contact varchar(20),
      home_town varchar(30)
)

create or replace type myrow2 as table of DirectorType;


create or replace function LabDirector(x in varchar)
return myrow2 is
ans myrow2;
begin
    dbms_output.put_line('Computer lab: '|| x);
    select DirectorType(directortype,name,contact,home_town) bulk collect into ans
    from director
    where directortype = 
         (
             select directortype from computer_lab where name=x
         );
    return ans;
end LabDirector;

/*execute*/

Declare
   p myrow2;
   t number;
begin
     p:=LabDirector('Dhirendra Nath Datta E-Lab');
     t:=p.count;
     for i in 1..t loop
              dbms_output.put_line('Director name: '|| p(i).name ||chr(10)||'Contact info: ' ||p(i).contact ||chr(10)||'Home town: ' ||p(i).home_town);
     end loop; 
end;




/**********************************<---Trigger--->*******************************************/


/*11.This trigger notify if any data is inserted in student table and show the inserted values and also show the total number of student after insertion . */

create or replace trigger NewStudentInserted
after insert on student
for each row
Declare
a number;
begin
   dbms_output.put_line('New student inserted');
   dbms_output.put_line('ID: '||:new.id ||chr(10)||'Student name: '||:new.name||chr(10)||'Dept name: '||:new.dept_name||chr(10)||'Session: '||:new.s_session||chr(10)||'Year: '||:new.year||chr(10)||'Room no: '||:new.room_number||chr(10)||'Bed no: '||:new.bed_number||chr(10)||'Bed credits: '||:new.bed_credits||chr(10)||'Contact: '||:new.contact_info||chr(10)||'DOB: '||:new.dob||chr(10)||'Home town: '||:new.home_town);
  select count(id) into a 
   from student;
   dbms_output.put_line(chr(10)||'Total student after inserted is: '|| a);
end;


/*12.This trigger forbides the user to insert lower monthly fee then current monthly fee of any mess.Beacuse a mess monthly fee always increase day by day. */

create or replace trigger monthlyFee_checker
before update of monthly_fee on Mess
for each row
begin
    if:new.monthly_fee < :old.monthly_fee then
    RAISE_APPLICATION_ERROR(-20125,'Updated fee can not be less then current fee.');
    end if;
end;

/* try this */

update mess
set monthly_fee=2100
where name='Rasona Bilash Amish Mess'



/*13.User can insert/delete/update student table only between 10:00am to 05:00 pm(office time) for this  trigger . */


create or replace trigger restricted_dml
before insert or update or delete on student
begin
    if(to_char(sysdate,'HH24:MI') not between '10:00' and '17:00') then
   RAISE_APPLICATION_ERROR(-20124,'you can inserted data between 10:00 am to 05:00 pm');
   end if;
end;



/*14. A house tutor can only insert at most two student in a bed because a bed capacity is at most two student. So this trigger helps not to insert more than two students in a bed.If house tutor insert more than two student in a bed then it raise application error and can not insert. */



create or replace trigger NumberOfStudentInaBed_Checker
before insert on student
for each row
Declare
t number;
begin
    t:=0;
    select count(id) into t
    from student
    where (room_number=:new.room_number and bed_number=:new.bed_number);
    if(t=2) then RAISE_APPLICATION_ERROR(-20125,'Already two students allocated this bed.Please insert another');
    end if;
end;




