

delete from table mess;
delete from table canteen;
delete from table computer_lab;
delete from table reading_room;
delete from table teacher;
delete from table student;
delete from table room;
delete from table director;
delete from table building;




/*insert into building values('building_name','total_floor','tv_room' ,'spot_room');*/

insert into building values('October Smriti Bhaban','05','YES:1st floor' ,'No');
insert into building values('Jyotirmoy Guhathakurta Bhaban','03','No' ,'No'); 
insert into building values('Govinda Chandra Dev building','03','No' ,'No');    
insert into building values('Sontosh Chandra Bhattacharya Bhaban','10','YES:4th floor' ,'YES:4th floor');    



/*insert into director values('name','contact','home_town','directorType');*/

insert into director values('Christopher Swaby','01534754356','Comilla','CanteenM');
insert into director values('Man Seelye','01734754356','Dhaka','CanteenR');
insert into director values('Elliot Streetman','01834754356','Noakhali','CanteenN');
insert into director values('Willian Bylsma','01934754356','Dhaka','CanteenS');

insert into director values('Earnest Ping','01853575469','Dhaka','C_lab_O');
insert into director values('Trent Bhatt','01753575469','Dhaka','C_lab_D');

insert into director values('Sanford Merry','01854587545','Gazipur','MessR');
insert into director values('Cedrick Quintal','01654587545','Dhaka','MessT');
insert into director values('Heriberto Eaves','01974587545','Mymensingh','MessN');




/*insert into room values('room_number','floor_number',','building_name','type','total_bed','total_bed_credit');*/

/*October bhaban*/


insert into room values('410','1','October Smriti Bhaban','Multiple','4','16');	
insert into room values('411','1','October Smriti Bhaban','Multiple','4','16');	
insert into room values('412','1','October Smriti Bhaban','Multiple','4','16');	


insert into room values('420','2','October Smriti Bhaban','Multiple','4','16');	
insert into room values('421','2','October Smriti Bhaban','Multiple','4','16');	
insert into room values('422','2','October Smriti Bhaban','Multiple','4','16');	


insert into room values('430','3','October Smriti Bhaban','Multiple','4','16');	
insert into room values('431','3','October Smriti Bhaban','Multiple','4','16');	
insert into room values('432','3','October Smriti Bhaban','Multiple','4','16');	

insert into room values('440','4','October Smriti Bhaban','Multiple','4','16');	
insert into room values('441','4','October Smriti Bhaban','Multiple','4','16');	
insert into room values('442','4','October Smriti Bhaban','Multiple','4','16');	

insert into room values('450','5','October Smriti Bhaban','Multiple','4','16');	
insert into room values('451','5','October Smriti Bhaban','Multiple','4','16');	
insert into room values('452','5','October Smriti Bhaban','Multiple','4','16');	

/*Jyotirmoy Guhathakurta Bhaban*/

insert into room values('210','1','Jyotirmoy Guhathakurta Bhaban','Single','1','4');	
insert into room values('211','1','Jyotirmoy Guhathakurta Bhaban','Double','2','8');	
insert into room values('212','1','Jyotirmoy Guhathakurta Bhaban','Multiple','4','16');	

insert into room values('220','2','Jyotirmoy Guhathakurta Bhaban','Double','2','8');	
insert into room values('221','2','Jyotirmoy Guhathakurta Bhaban','Multiple','4','16');	
insert into room values('222','2','Jyotirmoy Guhathakurta Bhaban','Multiple','4','16');	

insert into room values('230','3','Jyotirmoy Guhathakurta Bhaban','Single','1','4');	
insert into room values('231','3','Jyotirmoy Guhathakurta Bhaban','Multiple','4','16');	
insert into room values('232','3','Jyotirmoy Guhathakurta Bhaban','Double','2','8');	


/*Govinda Chandra Dev building*/


insert into room values('110','1','Govinda Chandra Dev building','Single','1','4');	
insert into room values('111','1','Govinda Chandra Dev building','Multiple','4','16');	
insert into room values('112','1','Govinda Chandra Dev building','Single','1','4');	



insert into room values('120','2','Govinda Chandra Dev building','Double','2','8');	
insert into room values('121','2','Govinda Chandra Dev building','Multiple','4','16');	
insert into room values('122','2','Govinda Chandra Dev building','Multiple','4','16');	


insert into room values('130','2','Govinda Chandra Dev building','Single','1','4');	
insert into room values('131','2','Govinda Chandra Dev building','Multiple','4','16');	
insert into room values('132','2','Govinda Chandra Dev building','Multiple','4','16');

/*Sontosh Chandra Bhattacharya Bhaban*/

insert into room values('1015','1','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('1016','1','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('1017','1','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');


insert into room values('2015','2','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('2016','2','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('2017','2','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');

insert into room values('3015','3','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('3016','3','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('3017','3','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');

insert into room values('4015','4','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('4016','4','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('4017','4','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');

insert into room values('5015','5','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('5016','5','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('5017','5','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');

insert into room values('6015','6','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('6016','6','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('6017','6','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');

insert into room values('7015','7','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('7016','7','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('7017','7','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');

insert into room values('8015','8','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('8016','8','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('8017','8','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');

insert into room values('9015','9','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('9016','9','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('9017','9','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');

insert into room values('10015','10','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('10016','10','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');
insert into room values('10017','10','Sontosh Chandra Bhattacharya Bhaban','Multiple','4','16');





/*insert into student values('id','name','dept_name','session','year','room_number','bed_number','bed_credits','contact_info','dob','home_town');*/

insert into student values('101','Lyle Fullilove','CSE','2017-18','1st','410','A','1','lyle.cse@gmail.com','11-Jan','Dinajpur');
insert into student values('102','Jerald Wellner','IIT','2016-17','2nd','410','B','2','jerald.iit@gmail.com','6-Feb','Satkhira');
insert into student values('103','Darrick Loper','Chemistry','2015-16','3rd','410','A','3','darrick.chemistry@gmail.com','4-Mar','Bagerhat');
insert into student values('104','Orville Humphery','Pharmacy','2014-15','4th','410','C','4','orville.pharmacy@gmail.com','8-Apr','CoxsBazar');
insert into student values('105','Fidel Brust','Psychology','2017-18','1st','410','D','1','fidel.psychology@gmail.com','20-May','Feni');
insert into student values('106','Kevin Hattaway','Finance','2016-17','2nd','410','B','2','kevin.finance@gmail.com','19-June','Gazipur');
insert into student values('107','Galen Lauzon','Management','2015-16','3rd','410','D','3','galen.management@gmail.com','8-July','Tangail');
insert into student values('108','Justin Logston','Marketing','2014-15','4th','411','A','4','justin.marketing@gmail.com','13-Aug','Sirajganj');
insert into student values('109','Marc Gaytan','Economics','2017-18','1st','411','B','1','marc.economics@gmail.com','18-Sep','Comilla');
insert into student values('110','Weston Barks','Statistics','2016-17','2nd','412','A','2','weston.statistics@gmail.com','23-Oct','Magura');
insert into student values('111','Clement Davenport','Law','2015-16','3rd','420','A','3','clement.law@gmail.com','30-Nov','Vola');
insert into student values('112','Colton Moulder','Math','2014-15','4th','420','B','4','colton.math@gmail.com','14-Dec','Shylet');
insert into student values('113','Reed Cronan','Physics','2017-18','1st','420','C','1','reed.physics@gmail.com','24-Jan','Netrokona');
insert into student values('114','Clair Griffen','Bangla','2016-17','2nd','420','D','2','clair.bangla@gmail.com','7-Feb','Mymensingh');
insert into student values('115','Samual Peagler','Pol._Sci.','2015-16','3rd','420','A','3','samual.pol._sci.@gmail.com','31-Mar','Kustia');
insert into student values('116','Leif Panos','Biology','2014-15','4th','420','B','4','leif.biology@gmail.com','6-Apr','Jessore');
insert into student values('117','Arnold Mabee','ISRT','2017-18','1st','421','A','1','arnold.isrt@gmail.com','30-May','Khulna');
insert into student values('118','Damion Raye','Music','2016-17','2nd','422','A','2','damion.music@gmail.com','30-June','Bogra');
insert into student values('119','Otis Sasse','History','2015-16','3rd','422','B','3','otis.history@gmail.com','5-July','Ranjpur');
insert into student values('120','Paul Arras','EEE','2014-15','4th','430','A','4','paul.eee@gmail.com','8-Aug','Pabna');
insert into student values('121','Jerold Pamplin','CSE','2017-18','1st','430','B','1','jerold.cse@gmail.com','12-Sep','Noakhali');
insert into student values('122','Leopoldo Goosby','IIT','2016-17','2nd','430','C','2','leopoldo.iit@gmail.com','2-Oct','Chittagonj');
insert into student values('123','Frances Broady','Chemistry','2015-16','3rd','430','D','3','frances.chemistry@gmail.com','14-Nov','Chadpur');
insert into student values('124','Sal Westbrooks','Pharmacy','2014-15','4th','431','A','4','sal.pharmacy@gmail.com','29-Dec','Barishal');
insert into student values('125','Raymon Pizzuto','Psychology','2017-18','1st','431','B','1','raymon.psychology@gmail.com','29-Jan','Dhaka');
insert into student values('126','Lucio Tinkham','Finance','2016-17','2nd','432','A','2','lucio.finance@gmail.com','3-Feb','Rajshahi');
insert into student values('127','Omar Muench','Management','2015-16','3rd','440','A','3','omar.management@gmail.com','3-Mar','Dinajpur');
insert into student values('128','Vince Domingue','Marketing','2014-15','4th','440','B','4','vince.marketing@gmail.com','20-Apr','Satkhira');
insert into student values('129','Emil Hockensmith','Economics','2017-18','1st','440','C','1','emil.economics@gmail.com','15-May','Bagerhat');
insert into student values('130','Dirk Wellman','Statistics','2016-17','2nd','440','D','2','dirk.statistics@gmail.com','31-June','CoxsBazar');
insert into student values('131','Lavern Daum','Law','2015-16','3rd','440','A','3','lavern.law@gmail.com','13-July','Feni');
insert into student values('132','Emilio Ellenburg','Math','2014-15','4th','441','A','4','emilio.math@gmail.com','23-Aug','Gazipur');
insert into student values('133','Erasmo Hartgrove','Physics','2017-18','1st','441','B','1','erasmo.physics@gmail.com','6-Sep','Tangail');
insert into student values('134','Lonny Hunter','Bangla','2016-17','2nd','442','A','2','lonny.bangla@gmail.com','14-Oct','Sirajganj');
insert into student values('135','Bertram Spoon','Pol._Sci.','2015-16','3rd','450','A','3','bertram.pol._sci.@gmail.com','28-Nov','Comilla');
insert into student values('136','Hai Doody','Biology','2014-15','4th','450','B','4','hai.biology@gmail.com','23-Dec','Magura');
insert into student values('137','Andre Hair','ISRT','2017-18','1st','450','C','1','andre.isrt@gmail.com','1-Jan','Vola');
insert into student values('138','Ronnie Ater','Music','2016-17','2nd','450','D','2','ronnie.music@gmail.com','5-Feb','Shylet');
insert into student values('139','Elliott Mathis','History','2015-16','3rd','450','A','3','elliott.history@gmail.com','2-Mar','Netrokona');
insert into student values('140','Dwain Liston','EEE','2014-15','4th','451','A','4','dwain.eee@gmail.com','18-Apr','Mymensingh');
insert into student values('141','Vincent Corwin','CSE','2017-18','1st','452','A','1','vincent.cse@gmail.com','25-May','Kustia');
insert into student values('142','Brendan Mclennan','IIT','2016-17','2nd','452','B','2','brendan.iit@gmail.com','31-June','Jessore');
insert into student values('143','Carrol Nugent','Chemistry','2015-16','3rd','210','A','3','carrol.chemistry@gmail.com','29-July','Khulna');
insert into student values('144','Chase Bettes','Pharmacy','2014-15','4th','211','A','4','chase.pharmacy@gmail.com','17-Aug','Bogra');
insert into student values('145','Buford Boswell','Psychology','2017-18','1st','212','A','1','buford.psychology@gmail.com','4-Sep','Ranjpur');
insert into student values('146','Abe Deeter','Finance','2016-17','2nd','212','B','2','abe.finance@gmail.com','27-Oct','Pabna');
insert into student values('147','Zachery Rosales','Management','2015-16','3rd','220','A','3','zachery.management@gmail.com','21-Nov','Noakhali');
insert into student values('148','Octavio Berber','Marketing','2014-15','4th','220','B','4','octavio.marketing@gmail.com','2-Dec','Chittagonj');
insert into student values('149','Donnie Mayorga','Economics','2017-18','1st','221','A','1','donnie.economics@gmail.com','23-Jan','Chadpur');
insert into student values('150','Andreas Finnell','Statistics','2016-17','2nd','221','B','2','andreas.statistics@gmail.com','25-Feb','Barishal');


insert into student values('151','Toney Habel','CSE','2017-18','1st','222','A','1','toney.cse@gmail.com','11-Jan','Dinajpur');
insert into student values('152','Deon Edson','IIT','2016-17','2nd','230','A','2','deon.iit@gmail.com','6-Feb','Satkhira');
insert into student values('153','Wiley Mcintire','Chemistry','2015-16','3rd','231','B','3','wiley.chemistry@gmail.com','4-Mar','Bagerhat');
insert into student values('154','Mervin Gelb','Pharmacy','2014-15','4th','231','A','4','mervin.pharmacy@gmail.com','8-Apr','CoxsBazar');
insert into student values('155','Dee Fansler','Psychology','2017-18','1st','232','A','1','dee.psychology@gmail.com','20-May','Feni');
insert into student values('156','Ernest Lerch','Finance','2016-17','2nd','110','A','2','ernest.finance@gmail.com','19-June','Gazipur');
insert into student values('157','Ahmad Kintner','Management','2015-16','3rd','111','A','3','ahmad.management@gmail.com','8-July','Tangail');
insert into student values('158','Josiah Wetzel','Marketing','2014-15','4th','111','B','4','josiah.marketing@gmail.com','13-Aug','Sirajganj');
insert into student values('159','Marquis Rickard','Economics','2017-18','1st','112','A','1','marquis.economics@gmail.com','18-Sep','Comilla');
insert into student values('160','Eli Hillary','Statistics','2016-17','2nd','120','B','2','eli.statistics@gmail.com','23-Oct','Magura');
insert into student values('161','Sal Herren','Law','2015-16','3rd','120','A','3','sal.law@gmail.com','30-Nov','Vola');
insert into student values('162','Derek Burrage','Math','2014-15','4th','121','A','4','derek.math@gmail.com','14-Dec','Shylet');
insert into student values('163','Hung Reily','Physics','2017-18','1st','121','B','1','hung.physics@gmail.com','24-Jan','Netrokona');
insert into student values('164','Dave Sumrall','Bangla','2016-17','2nd','122','A','2','dave.bangla@gmail.com','7-Feb','Mymensingh');
insert into student values('165','Hoyt Marley','Pol._Sci.','2015-16','3rd','130','A','3','hoyt.pol._sci.@gmail.com','31-Mar','Kustia');
insert into student values('166','Mohammad Testa','Biology','2014-15','4th','131','A','4','mohammad.biology@gmail.com','6-Apr','Jessore');
insert into student values('167','Korey Korn','ISRT','2017-18','1st','131','B','1','korey.isrt@gmail.com','30-May','Khulna');
insert into student values('168','Perry Stober','Music','2016-17','2nd','132','A','2','perry.music@gmail.com','30-June','Bogra');
insert into student values('169','Alfonso Mersch','History','2015-16','3rd','1015','A','3','alfonso.history@gmail.com','5-July','Ranjpur');
insert into student values('170','Rob Hunsucker','EEE','2014-15','4th','1016','A','4','rob.eee@gmail.com','8-Aug','Pabna');
insert into student values('171','Errol Arab','CSE','2017-18','1st','1017','A','1','errol.cse@gmail.com','12-Sep','Noakhali');
insert into student values('172','Lawerence Delange','IIT','2016-17','2nd','2015','A','2','lawerence.iit@gmail.com','2-Oct','Chittagonj');
insert into student values('173','Jon Hedberg','Chemistry','2015-16','3rd','2016','A','3','jon.chemistry@gmail.com','14-Nov','Chadpur');
insert into student values('174','Margarito Meltzer','Pharmacy','2014-15','4th','2017','A','4','margarito.pharmacy@gmail.com','29-Dec','Barishal');
insert into student values('175','Jess Bubb','Psychology','2017-18','1st','3015','A','1','jess.psychology@gmail.com','29-Jan','Dhaka');
insert into student values('176','Shirley Jolicoeur','Finance','2016-17','2nd','3016','A','2','shirley.finance@gmail.com','3-Feb','Rajshahi');
insert into student values('177','Stephen Cygan','Management','2015-16','3rd','3017','A','3','stephen.management@gmail.com','3-Mar','Dinajpur');
insert into student values('178','Dale Fajardo','Marketing','2014-15','4th','4015','A','4','dale.marketing@gmail.com','20-Apr','Satkhira');
insert into student values('179','Nathan Koppes','Economics','2017-18','1st','4016','A','1','nathan.economics@gmail.com','15-May','Bagerhat');
insert into student values('180','Edwin Fawcett','Statistics','2016-17','2nd','4017','A','2','edwin.statistics@gmail.com','31-June','CoxsBazar');
insert into student values('181','Tommie Fertig','Law','2015-16','3rd','5015','A','3','tommie.law@gmail.com','13-July','Feni');
insert into student values('182','Brian Forness','Math','2014-15','4th','5016','A','4','brian.math@gmail.com','23-Aug','Gazipur');
insert into student values('183','Clarence Francois','Physics','2017-18','1st','5017','A','1','clarence.physics@gmail.com','6-Sep','Tangail');
insert into student values('184','Richard Brumbelow','Bangla','2016-17','2nd','6015','A','2','richard.bangla@gmail.com','14-Oct','Sirajganj');
insert into student values('185','Shad Kluck','Pol._Sci.','2015-16','3rd','6016','A','3','shad.pol._sci.@gmail.com','28-Nov','Comilla');
insert into student values('186','Alfred Easterling','Biology','2014-15','4th','6017','A','4','alfred.biology@gmail.com','23-Dec','Magura');
insert into student values('187','Rex Schutt','ISRT','2017-18','1st','7015','A','1','rex.isrt@gmail.com','1-Jan','Vola');
insert into student values('188','Jacques Keifer','Music','2016-17','2nd','7016','A','2','jacques.music@gmail.com','5-Feb','Shylet');
insert into student values('189','Felipe Hambrick','History','2015-16','3rd','7017','A','3','felipe.history@gmail.com','2-Mar','Netrokona');
insert into student values('190','Pete Purington','EEE','2014-15','4th','8015','A','4','pete.eee@gmail.com','18-Apr','Mymensingh');
insert into student values('191','Ariel Sitzes','CSE','2017-18','1st','8016','A','1','ariel.cse@gmail.com','25-May','Kustia');
insert into student values('192','Rodger Buchannon','IIT','2016-17','2nd','8017','A','2','rodger.iit@gmail.com','31-June','Jessore');
insert into student values('193','Carrol Veras','Chemistry','2015-16','3rd','9015','A','3','carrol.chemistry@gmail.com','29-July','Khulna');
insert into student values('194','Brock Mensch','Pharmacy','2014-15','4th','9016','A','4','brock.pharmacy@gmail.com','17-Aug','Bogra');
insert into student values('195','Ivan Nailor','Psychology','2017-18','1st','9017','A','1','ivan.psychology@gmail.com','4-Sep','Ranjpur');
insert into student values('196','Randell Wrigley','Finance','2016-17','2nd','10015','A','2','randell.finance@gmail.com','27-Oct','Pabna');
insert into student values('197','Patricia Booker','Management','2015-16','3rd','10016','A','3','patricia.management@gmail.com','21-Nov','Noakhali');
insert into student values('198','Jeffery Hester','Marketing','2014-15','4th','10017','A','4','jeffery.marketing@gmail.com','2-Dec','Chittagonj');
/*insert into student values('199','Edmundo Zylstra','Economics','2017-18','1st','0','�','3','edmundo.economics@gmail.com','23-Jan','Chadpur');
insert into student values('200','Norbert Tindal','Statistics','2016-17','2nd','0','�','4','norbert.statistics@gmail.com','25-Feb','Barishal');
*/




/*insert into teacher values('id','name','dept_name','building_name','email','home_town');*/

insert into teacher values('10101','Val Mcgraw','Biology','October Smriti Bhaban','val@bio.du.ac.bd','Dhaka');
insert into teacher values('10102','Donnell Bastin','History','October Smriti Bhaban','donnell@his.du.ac.bd','Gazipur');

insert into teacher values('10103','Levi Lockridge','Physics','Jyotirmoy Guhathakurta Bhaban','levi@phy.du.ac.bd','Shylet');
insert into teacher values('10104','Timothy Do','Bangla','Jyotirmoy Guhathakurta Bhaban','timothy@ban.du.ac.bd','Comilla');

insert into teacher values('10105','Louie Toland','Finance','Govinda Chandra Dev building','louie@fin.du.ac.bd','Jessore');
insert into teacher values('10106','Damon Vaught','CSE','Govinda Chandra Dev building','damon@cse.du.ac.bd','Dhaka');

insert into teacher values('10107','Andy Smotherman','EEE','Sontosh Chandra Bhattacharya Bhaban','andy@eee.du.ac.bd','Dhaka');
insert into teacher values('10108','Ernie Didomenico','Pol._Sci.','Sontosh Chandra Bhattacharya Bhaban','ernie@ps.du.ac.bd','Rajshahi');
insert into teacher values('10109','Antwan Carra','Chemistry','Sontosh Chandra Bhattacharya Bhaban','antwan@che.du.ac.bd','Bogra');
insert into teacher values('10110','Antonia Pinder','Music','Sontosh Chandra Bhattacharya Bhaban','antonia@mus.du.ac.bd','Tangail');
     




/*insert into reading_room values('name','building_name','floor_number','capacity');*/

insert into reading_room values('Shaheed Mrinal Kanti Bose Smriti Pathagar','Sontosh Chandra Bhattacharya Bhaban','2','500');
insert into reading_room values('Shaheed Sotten Bose Smriti Pathagar','Sontosh Chandra Bhattacharya Bhaban','3','300');



/*insert into computer_lab values('name','building_name','capacity','floor_number','open_time','close_time','directorType');*/

insert into computer_lab values('October Computer Lab','October Smriti Bhaban','30','1','4:00pm','11:59pm','C_lab_O');
insert into computer_lab values('Dhirendra Nath Datta E-Lab','Sontosh Chandra Bhattacharya Bhaban','25','3','5:00','11:59pm','C_lab_D');



/*insert into canteen values('name','building_name','capacity','open_time','close_time','directorType');*/
    
insert into canteen values('Monir Canteen','October Smriti Bhaban','200','12:30pm & 8:30pm','2:30pm & 10:30pm','CanteenM');  
insert into canteen values('Rofiq Canteen','October Smriti Bhaban','100','6:30am & 8:30pm','10:30am & 10:30pm','CanteenR');    
insert into canteen values('North Canteen','Govinda Chandra Dev building','200','12:30pm & 8:30pm','2:30pm & 10:30pm','CanteenN');    
insert into canteen values('Sankar Canteen','Sontosh Chandra Bhattacharya Bhaban','300','6:30am','11:30pm','CanteenS');




/*insert into mess values('name','building_name','capacity','monthly_fee','open_time','close_time','directorType');*/

insert into mess values('Rasona Bilash Amish Mess','Jyotirmoy Guhathakurta Bhaban','400','2200','12:30pm & 8:30pm','2:30pm & 10:30pm','MessR');
insert into mess values('Tripti Amish Mess','Govinda Chandra Dev building','300','2000','12:30pm & 8:30pm','2:30pm & 10:30pm','MessT');
insert into mess values('Niramish Mess','Govinda Chandra Dev building','300','1800','12:30pm & 8:30pm','2:30pm & 10:30pm','MessN');


