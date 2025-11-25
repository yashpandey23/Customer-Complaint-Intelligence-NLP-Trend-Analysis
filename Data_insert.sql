-- Table 1: Customer Complaints
-- This table stores all complaint records received from users. However, the data is often incomplete. For instance, some cases are from individuals 
-- who did not complete the required security verification, preventing us from proceeding with their issues. Furthermore, many records have a null 'Issue' 
-- field because customer calls were disconnected prematurely before the problem could be logged.



create table complaints (
ticket_id  VARCHAR(250) UNIQUE , 
customer_id BIGINT PRIMARY KEY ,
issue_text VARCHAR(250) , 
created_at DATETIME , 
category VARCHAR(250) not null);

alter table complaints 
rename column ticket_id to case_id ; 

alter table complaints 
modify customer_id int not null;



Insert into complaints 
values 
('4-938000036198', 36198, NULL, '2024-01-15 09:23:45', 'Authentication Failure'),
('4-938000041257', 41257, NULL, '2024-01-16 14:35:12', 'Authentication Failure'),
('4-938000052189', 52189, NULL, '2024-01-17 11:47:33', 'Disconnected Call'),
('4-938000067423', 67423, NULL, '2024-01-18 16:52:19', 'Authentication Failure'),
('4-938000078365', 78365, NULL, '2024-01-19 10:15:27', 'Disconnected Call'),
('4-938000081492', 81492, 'unable to make payment', '2024-01-20 08:30:15', 'Payment Issue'),
('4-938000092347', 92347, 'unable to open the application', '2024-01-21 12:45:33', 'Technical Issue'),
('4-938000103486', 103486, 'hidden charges', '2024-01-22 15:20:48', 'Payment Issue'),
('4-938000114529', 114529, 'unable to cancel the autopay', '2024-01-23 09:15:22', 'Account Issue'),
('4-938000125671', 125671, 'unable to add bank account', '2024-01-24 14:38:55', 'Account Issue'),
('4-938000136782', 136782, 'unable to receive payment', '2024-01-25 11:25:41', 'Payment Issue'),
('4-938000147893', 147893, 'issue with business account', '2024-01-26 16:45:19', 'Business Account'),
('4-938000158914', 158914, 'made a wrong payment', '2024-01-27 10:55:37', 'Transaction Issue'),
('4-938000169825', 169825, 'money debit but money was not go to the device', '2024-01-28 13:40:28', 'Transaction Issue'),
('4-938000170936', 170936, 'unable to make payment', '2024-01-29 08:20:14', 'Payment Issue'),
('4-938000181047', 181047, 'unable to open the application', '2024-01-30 17:35:52', 'Technical Issue'),
('4-938000192158', 192158, 'hidden charges', '2024-02-01 09:45:23', 'Payment Issue'),
('4-938000203269', 203269, 'unable to cancel the autopay', '2024-02-02 14:15:47', 'Account Issue'),
('4-938000214370', 214370, 'unable to add bank account', '2024-02-03 11:30:19', 'Account Issue'),
('4-938000225481', 225481, 'unable to receive payment', '2024-02-04 16:25:33', 'Payment Issue'),
('4-938000236592', 236592, 'issue with business account', '2024-02-05 10:40:58', 'Business Account'),
('4-938000247603', 247603, 'made a wrong payment', '2024-02-06 13:55:42', 'Transaction Issue'),
('4-938000258714', 258714, 'money debit but money was not go to the device', '2024-02-07 08:35:26', 'Transaction Issue'),
('4-938000269825', 269825, 'unable to make payment', '2024-02-08 15:20:39', 'Payment Issue'),
('4-938000270936', 270936, 'unable to open the application', '2024-02-09 12:10:45', 'Technical Issue'),
('4-938000281047', 281047, 'hidden charges', '2024-02-10 09:25:18', 'Payment Issue'),
('4-938000292158', 292158, 'unable to cancel the autopay', '2024-02-11 14:50:32', 'Account Issue'),
('4-938000303269', 303269, 'unable to add bank account', '2024-02-12 11:15:27', 'Account Issue'),
('4-938000314370', 314370, 'unable to receive payment', '2024-02-13 16:40:53', 'Payment Issue'),
('4-938000325481', 325481, 'issue with business account', '2024-02-14 10:05:49', 'Business Account'),
('4-938000336592', 336592, 'made a wrong payment', '2024-02-15 13:30:24', 'Transaction Issue'),

('4-938000347603', 347603, 'money debited but merchants did not receive the payment', '2024-02-16 08:45:37', 'Transaction Issue'),
('4-938000358714', 358714, 'unable to make payment', '2024-02-17 15:55:21', 'Payment Issue'),
('4-938000369825', 369825, 'unable to open the application', '2024-02-18 12:25:46', 'Technical Issue'),
('4-938000370936', 370936, 'hidden charges', '2024-02-19 09:40:33', 'Payment Issue'),
('4-938000381047', 381047, 'unable to cancel the autopay', '2024-02-20 14:15:58', 'Account Issue'),
('4-938000392158', 392158, 'unable to add bank account', '2024-02-21 11:35:42', 'Account Issue'),
('4-938000403269', 403269, 'unable to receive payment', '2024-02-22 16:20:27', 'Payment Issue'),
('4-938000414370', 414370, 'issue with business account', '2024-02-23 10:45:19', 'Business Account'),
('4-938000425481', 425481, 'made a wrong payment', '2024-02-24 13:50:44', 'Transaction Issue'),
('4-938000436592', 436592, 'money debited but bill not paid', '2024-02-25 08:30:52', 'Transaction Issue'),
('4-938000447603', 447603, 'unable to make payment', '2024-02-26 15:40:36', 'Payment Issue'),
('4-938000458714', 458714, 'unable to open the application', '2024-02-27 12:05:29', 'Technical Issue'),
('4-938000469825', 469825, 'hidden charges', '2024-02-28 09:25:14', 'Payment Issue'),
('4-938000470936', 470936, 'unable to cancel the autopay', '2024-02-29 14:55:48', 'Account Issue'),
('4-938000481047', 481047, 'unable to add bank account', '2024-03-01 11:20:33', 'Account Issue'),
('4-938000492158', 492158, 'unable to receive payment', '2024-03-02 16:45:27', 'Payment Issue'),
('4-938000503269', 503269, 'issue with business account', '2024-03-03 10:10:42', 'Business Account'),
('4-938000514370', 514370, 'made a wrong payment', '2024-03-04 13:35:19', 'Transaction Issue'),
('4-938000525481', 525481, 'money debited but merchants did not receive the payment', '2024-03-05 08:50:55', 'Transaction Issue'),
('4-938000536592', 536592, 'unable to make payment', '2024-03-06 15:15:38', 'Payment Issue'),
('4-938000547603', 547603, 'unable to open the application', '2024-03-07 12:40:21', 'Technical Issue'),
('4-938000558714', 558714, 'hidden charges', '2024-03-08 09:55:46', 'Payment Issue'),
('4-938000569825', 569825, 'unable to cancel the autopay', '2024-03-09 14:25:33', 'Account Issue'),
('4-938000570936', 570936, 'unable to add bank account', '2024-03-10 11:45:27', 'Account Issue'),
('4-938000581047', 581047, 'unable to receive payment', '2024-03-11 16:30:52', 'Payment Issue'),
('4-938000592158', 592158, 'issue with business account', '2024-03-12 10:55:39', 'Business Account'),
('4-938000603269', 603269, 'made a wrong payment', '2024-03-13 13:20:44', 'Transaction Issue'),
('4-938000614370', 614370, 'money debited but bill not paid', '2024-03-14 08:35:28', 'Transaction Issue'),
('4-938000625481', 625481, 'unable to make payment', '2024-03-15 15:50:15', 'Payment Issue'),
('4-938000636592', 636592, 'unable to open the application', '2024-03-16 12:15:49', 'Technical Issue'),
('4-938000647603', 647603, 'hidden charges', '2024-03-17 09:30:34', 'Payment Issue'),
('4-938000658714', 658714, 'unable to cancel the autopay', '2024-03-18 14:45:27', 'Account Issue'),
('4-938000669825', 669825, 'unable to add bank account', '2024-03-19 11:05:42', 'Account Issue'),
('4-938000670936', 670936, 'unable to receive payment', '2024-03-20 16:25:38', 'Payment Issue'),
('4-938000681047', 681047, 'issue with business account', '2024-03-21 10:40:53', 'Business Account'),
('4-938000692158', 692158, 'made a wrong payment', '2024-03-22 13:55:29', 'Transaction Issue'),
('4-938000703269', 703269, 'money debited but merchants did not receive the payment', '2024-03-23 08:20:46', 'Transaction Issue'),
('4-938000714370', 714370, 'unable to make payment', '2024-03-24 15:35:32', 'Payment Issue'),
('4-938000725481', 725481, 'unable to open the application', '2024-03-25 12:50:27', 'Technical Issue'),
('4-938000736592', 736592, 'hidden charges', '2024-03-26 09:15:41', 'Payment Issue'),
('4-938000747603', 747603, 'unable to cancel the autopay', '2024-03-27 14:30:25', 'Account Issue'),
('4-938000758714', 758714, 'unable to add bank account', '2024-03-28 11:45:39', 'Account Issue'),
('4-938000769825', 769825, 'unable to receive payment', '2024-03-29 16:05:54', 'Payment Issue'),
('4-938000770936', 770936, 'issue with business account', '2024-03-30 10:25:48', 'Business Account'),
('4-938000781047', 781047, 'made a wrong payment', '2024-03-31 13:40:33', 'Transaction Issue'),
('4-938000792158', 792158, 'money debited but bill not paid', '2024-04-01 08:55:27', 'Transaction Issue'),
('4-938000803269', 803269, 'unable to make payment', '2024-04-02 15:10:42', 'Payment Issue'),
('4-938000814370', 814370, 'unable to open the application', '2024-04-03 12:35:19', 'Technical Issue'),
('4-938000825481', 825481, 'hidden charges', '2024-04-04 09:50:44', 'Payment Issue'),
('4-938000836592', 836592, 'unable to cancel the autopay', '2024-04-05 14:15:38', 'Account Issue'),
('4-938000847603', 847603, 'unable to add bank account', '2024-04-06 11:30:52', 'Account Issue'),
('4-938000858714', 858714, 'unable to receive payment', '2024-04-07 16:45:27', 'Payment Issue'),
('4-938000869825', 869825, 'issue with business account', '2024-04-08 10:05:41', 'Business Account'),
('4-938000870936', 870936, 'made a wrong payment', '2024-04-09 13:20:36', 'Transaction Issue'),
('4-938000881047', 881047, 'money debited but merchants did not receive the payment', '2024-04-10 08:35:29', 'Transaction Issue'),
('4-938000892158', 892158, 'unable to make payment', '2024-04-11 15:50:14', 'Payment Issue'),
('4-938000903269', 903269, 'issue with other app', '2024-04-12 12:15:48', 'Unrelated Issue'),
('4-938000914370', 914370, 'hidden charges', '2024-04-13 09:30:33', 'Payment Issue'),
('4-938000925481', 925481, 'unable to cancel the autopay', '2024-04-14 14:45:27', 'Account Issue'),
('4-938000936592', 936592, 'unable to add bank account', '2024-04-15 11:55:42', 'Account Issue'),
('4-938000947603', 947603, 'unable to receive payment', '2024-04-16 16:20:38', 'Payment Issue'),
('4-938000958714', 958714, 'issue with business account', '2024-04-17 10:35:53', 'Business Account'),
('4-938000969825', 969825, 'made a wrong payment', '2024-04-18 13:50:29', 'Transaction Issue'),
('4-938000970936', 970936, 'money debited but bill not paid', '2024-04-19 08:05:46', 'Transaction Issue'),
('4-938000981047', 981047, 'unable to make payment', '2024-04-20 15:25:32', 'Payment Issue'),
('4-938000992158', 992158, 'issue with other app', '2024-04-21 12:40:27', 'Unrelated Issue');



-- Table 2: Customer Master
-- This table stores the basic profile and contact information of every customer who contacts us.

----------- creating a table for customers

create table user_info(
customer_id int , 
name varcharacter(50) ,
city varcharacter(50) ,
FOREIGN KEY (customer_id) REFERENCES complaints(customer_id)
);


-- Complete user_info data for ALL customer IDs in complaints table
INSERT INTO user_info (customer_id, name, city) VALUES
(36198, 'Aarav Sharma', 'Mumbai'),
(41257, 'Priya Patel', 'Delhi'),
(52189, 'Rohan Kumar', 'Bangalore'),
(67423, 'Ananya Gupta', 'Chennai'),
(78365, 'Vikram Singh', 'Kolkata'),
(81492, 'Neha Reddy', 'Hyderabad'),
(92347, 'Arjun Mehta', 'Pune'),
(103486, 'Sneha Joshi', 'Ahmedabad'),
(114529, 'Karan Malhotra', 'Jaipur'),
(125671, 'Pooja Choudhary', 'Lucknow'),
(136782, 'Rahul Verma', 'Surat'),
(147893, 'Divya Agarwal', 'Kanpur'),
(158914, 'Amit Trivedi', 'Nagpur'),
(169825, 'Sunil Nair', 'Patna'),
(170936, 'Meera Iyer', 'Indore'),
(181047, 'Rajesh Khanna', 'Thane'),
(192158, 'Anjali Desai', 'Bhopal'),
(203269, 'Sanjay Rao', 'Visakhapatnam'),
(214370, 'Lakshmi Menon', 'Pimpri'),
(225481, 'Manoj Pillai', 'Patiala'),
(236592, 'Swati Saxena', 'Vadodara'),
(247603, 'Deepak Mishra', 'Ghaziabad'),
(258714, 'Kavita Bhat', 'Ludhiana'),
(269825, 'Nitin Chawla', 'Agra'),
(270936, 'Shweta Garg', 'Nashik'),
(281047, 'Harish Srinivasan', 'Faridabad'),
(292158, 'Madhu Rajput', 'Meerut'),
(303269, 'Suresh Tiwari', 'Rajkot'),
(314370, 'Geeta Yadav', 'Kalyan'),
(325481, 'Prakash Dubey', 'Varanasi'),
(336592, 'Anita Jha', 'Srinagar'),
(347603, 'Vishal Banerjee', 'Aurangabad'),
(358714, 'Ritu Das', 'Dhanbad'),
(369825, 'Alok Ghosh', 'Amritsar'),
(370936, 'Mohan Bose', 'Allahabad'),
(381047, 'Shilpa Mukherjee', 'Ranchi'),
(392158, 'Gaurav Chatterjee', 'Coimbatore'),
(403269, 'Kiran Tagore', 'Jabalpur'),
(414370, 'Ravi Sen', 'Gwalior'),
(425481, 'Sonia Kapoor', 'Vijayawada'),
(436592, 'Ajay Basu', 'Jodhpur'),
(447603, 'Preeti Rana', 'Madurai'),
(458714, 'Sameer Chopra', 'Raipur'),
(469825, 'Tanya Dutta', 'Kota'),
(470936, 'Bharat Saxena', 'Chandigarh'),
-- Additional customer IDs from your full complaint data
(481047, 'Rohit Mehra', 'Guwahati'),
(492158, 'Anjali Sinha', 'Solapur'),
(503269, 'Rajiv Chohan', 'Hubli'),
(514370, 'Poonam Bansal', 'Jalandhar'),
(525481, 'Amitabh Roy', 'Bhubaneswar'),
(536592, 'Shalini Dey', 'Dehradun'),
(547603, 'Vivek Anand', 'Asansol'),
(558714, 'Radhika Kapoor', 'Noida'),
(569825, 'Sanjay Verma', 'Kolhapur'),
(570936, 'Kriti Malhotra', 'Ujjain'),
(581047, 'Rahul Bajaj', 'Salem'),
(592158, 'Neha Chandra', 'Guntur'),
(603269, 'Arun Oberoi', 'Bhiwandi'),
(614370, 'Sonia Reddy', 'Saharanpur'),
(625481, 'Mohan Lal', 'Warangal'),
(636592, 'Priyanka Joshi', 'Bikaner'),
(647603, 'Rajat Khurana', 'Cuttack'),
(658714, 'Anita Rathi', 'Kochi'),
(669825, 'Vikram Aditya', 'Bhavnagar'),
(670936, 'Shivani Goel', 'Amravati'),
(681047, 'Raj Malhotra', 'Nellore'),
(692158, 'Pooja Saxena', 'Ajmer'),
(703269, 'Kunal Mehra', 'Tinplate'),
(714370, 'Madhuri Kaur', 'Bilaspur'),
(725481, 'Rishi Kapoor', 'Karnal'),
(736592, 'Anjali Thakur', 'Satara'),
(747603, 'Vishwas Rao', 'Aligarh'),
(758714, 'Suman Patel', 'Bareilly'),
(769825, 'Gautam Singh', 'Jalgaon'),
(770936, 'Nisha Agarwal', 'Dhule'),
(781047, 'Rohit Sharma', 'Gaya'),
(792158, 'Kavita Reddy', 'Jammu'),
(803269, 'Amit Kumar', 'Belgaum'),
(814370, 'Shruti Malhotra', 'Mangalore'),
(825481, 'Rajeev Nair', 'Tirunelveli'),
(836592, 'Ankita Joshi', 'Gurgaon'),
(847603, 'Vijay Sethi', 'Noida'),
(858714, 'Pooja Mehra', 'Faridabad'),
(869825, 'Rahul Dutta', 'Ghaziabad'),
(870936, 'Sneha Kapoor', 'Ludhiana'),
(881047, 'Karan Singh', 'Moradabad'),
(892158, 'Priya Nair', 'Jalandhar'),
(903269, 'Arjun Reddy', 'Amritsar'),
(914370, 'Ananya Iyer', 'Vijayawada'),
(925481, 'Rohit Gupta', 'Madurai'),
(936592, 'Divya Choudhary', 'Kota'),
(947603, 'Sanjay Kumar', 'Jodhpur'),
(958714, 'Neha Sharma', 'Bhopal'),
(969825, 'Vikram Patel', 'Indore'),
(970936, 'Anjali Mehta', 'Thane'),
(981047, 'Raj Malhotra', 'Navi Mumbai'),
(992158, 'Priya Joshi', 'Kalyan');



-- Table 3: Call Recordings
-- This table stores the audio recordings of customer calls, which are used for employee training and quality assurance purposes.


create table call_logs (
call_id VARCHAR(250) UNIQUE , 
issue_summary varcharacter(500) , 
agent_id int ,
call_duration DECIMAL(10, 2),
case_id  varcharacter(250) UNIQUE , 
foreign key (case_id) REFERENCES complaints(case_id)
);



CREATE TABLE call_logs (
    call_id VARCHAR(250) UNIQUE, 
    issue_summary VARCHAR(500), 
    agent_id INT,
    call_duration DECIMAL(10, 2),
    case_id VARCHAR(250) UNIQUE, 
    FOREIGN KEY (case_id) REFERENCES complaints(case_id)
);


INSERT INTO call_logs  VALUES

('p1000000000993233001', NULL, 101, 45.50, '4-938000036198'),
('p1000000000993233002', NULL, 102, 32.25, '4-938000041257'),
('p1000000000993233003', NULL, 103, 28.75, '4-938000052189'),
('p1000000000993233004', NULL, 104, 51.20, '4-938000067423'),
('p1000000000993233005', NULL, 105, 36.80, '4-938000078365'),
('p1000000000993233006', 'Customer reported inability to complete payment transaction using multiple payment methods including credit card and UPI', 106, 245.75, '4-938000081492'),
('p1000000000993233007', 'User experiencing application launch failure with error code 5001, app crashes immediately after opening', 107, 189.30, '4-938000092347'),
('p1000000000993233008', 'Customer discovered unexpected and undisclosed charges applied to their account without prior notification', 108, 312.45, '4-938000103486'),
('p1000000000993233009', 'User unable to disable automatic payment feature despite multiple attempts in account settings', 109, 278.90, '4-938000114529'),
('p1000000000993233010', 'Customer facing technical difficulties while trying to link new bank account for transaction purposes', 110, 265.15, '4-938000125671'),
('p1000000000993233011', 'Merchant reported failure in receiving incoming payments from multiple customers', 111, 334.20, '4-938000136782'),
('p1000000000993233012', 'Business account holder experiencing restricted access and functionality issues with enterprise features', 112, 421.85, '4-938000147893'),
('p1000000000993233013', 'Customer accidentally transferred funds to wrong beneficiary and requires immediate reversal assistance', 113, 298.60, '4-938000158914'),
('p1000000000993233014', 'Amount debited from account but failed to reflect in the designated device or service', 114, 356.25, '4-938000169825'),
('p1000000000993233015', 'Payment gateway failure preventing transaction completion across all supported methods', 115, 267.90, '4-938000170936'),
('p1000000000993233016', 'Application technical issues including login problems and interface loading failures', 116, 198.45, '4-938000181047'),
('p1000000000993233017', 'Undisclosed service charges and hidden fees appearing in monthly statement', 117, 289.75, '4-938000192158'),
('p1000000000993233018', 'Automatic payment cancellation feature malfunctioning in user profile settings', 118, 245.30, '4-938000203269'),
('p1000000000993233019', 'Bank account verification and linking process failing with system errors', 119, 312.85, '4-938000214370'),
('p1000000000993233020', 'Payment reception delays and failures affecting business operations', 120, 378.40, '4-938000225481'),
('p1000000000993233021', 'Business account specific features and permissions not functioning correctly', 121, 412.65, '4-938000236592'),
('p1000000000993233022', 'Incorrect payment transfer to unintended recipient requiring urgent resolution', 122, 295.20, '4-938000247603'),
('p1000000000993233023', 'Transaction completed but funds not credited to the intended device or service', 123, 342.75, '4-938000258714'),
('p1000000000993233024', 'Payment processing system down affecting all transaction methods', 124, 256.90, '4-938000269825'),
('p1000000000993233025', 'Mobile application technical glitches preventing normal usage', 125, 203.35, '4-938000270936'),
('p1000000000993233026', 'Unauthorized and unexplained charges appearing in account statement', 126, 301.80, '4-938000281047'),
('p1000000000993233027', 'Recurring payment cancellation option not working in user interface', 127, 267.45, '4-938000292158'),
('p1000000000993233028', 'New bank account integration failing during verification process', 128, 289.10, '4-938000303269'),
('p1000000000993233029', 'Incoming payment gateway issues affecting revenue collection', 129, 365.25, '4-938000314370'),
('p1000000000993233030', 'Enterprise business account management features malfunctioning', 130, 398.70, '4-938000325481'),
('p1000000000993233031', 'Erroneous fund transfer to incorrect account number', 131, 278.95, '4-938000336592'),
('p1000000000993233032', 'Payment deducted but merchant confirmation not received', 132, 321.50, '4-938000347603'),
('p1000000000993233033', 'Complete payment system outage affecting all users', 133, 245.85, '4-938000358714'),
('p1000000000993233034', 'Application functionality completely unavailable due to technical faults', 134, 198.20, '4-938000369825'),
('p1000000000993233035', 'Hidden subscription charges activated without customer consent', 135, 312.65, '4-938000370936'),
('p1000000000993233036', 'Auto-debit feature disabled but payments still being processed', 136, 276.40, '4-938000381047'),
('p1000000000993233037', 'Bank account addition process failing at final verification stage', 137, 301.15, '4-938000392158'),
('p1000000000993233038', 'Payment reception system delays causing business disruptions', 138, 389.80, '4-938000403269'),
('p1000000000993233039', 'Corporate account administrative functions not accessible', 139, 425.45, '4-938000414370'),
('p1000000000993233040', 'Mistaken payment to wrong vendor requiring emergency reversal', 140, 292.10, '4-938000425481'),
('p1000000000993233041', 'Bill payment processed but utility service not activated', 141, 335.75, '4-938000436592'),
('p1000000000993233042', 'Universal payment failure across all available methods', 142, 254.30, '4-938000447603'),
('p1000000000993233043', 'Application crashing during startup sequence', 143, 187.95, '4-938000458714'),
('p1000000000993233044', 'Undisclosed transaction fees applied without notification', 144, 298.60, '4-938000469825'),
('p1000000000993233045', 'Recurring payment termination feature malfunction', 145, 261.25, '4-938000470936'),
('p1000000000993233046', 'Bank account linking failure during KYC verification process', 146, 315.80, '4-938000481047'),
('p1000000000993233047', 'Delayed payment receipts affecting cash flow and business operations', 147, 372.45, '4-938000492158'),
('p1000000000993233048', 'Business account transaction limits and features not working properly', 148, 408.10, '4-938000503269'),
('p1000000000993233049', 'Accidental payment to incorrect merchant requiring refund process', 149, 285.75, '4-938000514370'),
('p1000000000993233050', 'Payment successfully processed but merchant payment confirmation pending', 150, 328.40, '4-938000525481'),
('p1000000000993233051', 'Complete payment gateway failure during checkout process', 151, 242.05, '4-938000536592'),
('p1000000000993233052', 'Application login and authentication failures preventing access', 152, 195.70, '4-938000547603'),
('p1000000000993233053', 'Hidden service charges and fees not disclosed during signup', 153, 305.35, '4-938000558714'),
('p1000000000993233054', 'Automatic subscription cancellation feature technical malfunction', 154, 269.00, '4-938000569825'),
('p1000000000993233055', 'New bank account integration failing with system error codes', 155, 294.65, '4-938000570936'),
('p1000000000993233056', 'Payment reception system outage affecting multiple transactions', 156, 381.30, '4-938000581047'),
('p1000000000993233057', 'Business account reporting and analytics features not functioning', 157, 419.95, '4-938000592158'),
('p1000000000993233058', 'Wrong beneficiary payment transfer with urgent reversal request', 158, 278.60, '4-938000603269'),
('p1000000000993233059', 'Utility bill payment processed but service not restored', 159, 322.25, '4-938000614370'),
('p1000000000993233060', 'Payment system-wide technical outage preventing all transactions', 160, 248.90, '4-938000625481'),
('p1000000000993233061', 'Application performance issues and frequent crashes', 161, 192.55, '4-938000636592'),
('p1000000000993233062', 'Unauthorized premium feature charges without activation', 162, 298.20, '4-938000647603'),
('p1000000000993233063', 'Auto-payment feature disabled but recurring charges continue', 163, 264.85, '4-938000658714'),
('p1000000000993233064', 'Bank account verification process stuck in pending status', 164, 287.50, '4-938000669825'),
('p1000000000993233065', 'Delayed payment processing affecting multiple customer transactions', 165, 374.15, '4-938000670936'),
('p1000000000993233066', 'Business account multi-user access permissions malfunctioning', 166, 411.80, '4-938000681047'),
('p1000000000993233067', 'Incorrect payment destination with funds transfer to wrong account', 167, 272.45, '4-938000692158'),
('p1000000000993233068', 'Payment completed but merchant payment status shows failed', 168, 316.10, '4-938000703269'),
('p1000000000993233069', 'Complete payment processing system failure across platform', 169, 251.75, '4-938000714370'),
('p1000000000993233070', 'Application interface loading errors and functionality issues', 170, 189.40, '4-938000725481'),
('p1000000000993233071', 'Undisclosed membership fees charged without customer approval', 171, 302.05, '4-938000736592'),
('p1000000000993233072', 'Recurring payment management system technical failure', 172, 258.70, '4-938000747603'),
('p1000000000993233073', 'Bank account addition process failing during document upload', 173, 283.35, '4-938000758714'),
('p1000000000993233074', 'Payment receipt confirmation delays beyond service level agreement', 174, 367.00, '4-938000769825'),
('p1000000000993233075', 'Business account API integration and access issues', 175, 402.65, '4-938000770936'),
('p1000000000993233076', 'Mistaken payment to incorrect service provider', 176, 266.30, '4-938000781047'),
('p1000000000993233077', 'Bill payment successful but service activation pending', 177, 309.95, '4-938000792158'),
('p1000000000993233078', 'Payment processing infrastructure complete outage', 178, 254.60, '4-938000803269'),
('p1000000000993233079', 'Application access and functionality completely unavailable', 179, 186.25, '4-938000814370'),
('p1000000000993233080', 'Hidden transaction costs and service fees not transparent', 180, 295.90, '4-938000825481'),
('p1000000000993233081', 'Automatic payment termination feature system error', 181, 262.55, '4-938000836592'),
('p1000000000993233082', 'Bank account verification failure despite correct documents', 182, 285.20, '4-938000847603'),
('p1000000000993233083', 'Payment reception gateway technical malfunction', 183, 371.85, '4-938000858714'),
('p1000000000993233084', 'Business account bulk payment feature not operational', 184, 409.50, '4-938000869825'),
('p1000000000993233085', 'Erroneous payment transfer requiring immediate corrective action', 185, 270.15, '4-938000870936'),
('p1000000000993233086', 'Payment deducted from account but merchant payment failed', 186, 313.80, '4-938000881047'),
('p1000000000993233087', 'Third-party application integration issue unrelated to main service', 187, 185.45, '4-938000892158'),
('p1000000000993233088', 'Payment system technical difficulties preventing transactions', 188, 257.10, '4-938000903269'),
('p1000000000993233089', 'Hidden premium feature activation charges without consent', 189, 304.75, '4-938000914370'),
('p1000000000993233090', 'Auto-debit cancellation feature technical problems', 190, 261.40, '4-938000925481'),
('p1000000000993233091', 'Bank account linking process system integration failure', 191, 284.05, '4-938000936592'),
('p1000000000993233092', 'Payment receipt processing delays causing operational issues', 192, 369.70, '4-938000947603'),
('p1000000000993233093', 'Business account administrative control panel malfunction', 193, 407.35, '4-938000958714'),
('p1000000000993233094', 'Incorrect payment transfer with funds sent to wrong recipient', 194, 268.00, '4-938000969825'),
('p1000000000993233095', 'Bill payment completed but utility service not updated', 195, 311.65, '4-938000970936'),
('p1000000000993233096', 'External application compatibility issue not related to core service', 196, 183.30, '4-938000981047'),
('p1000000000993233097', 'Payment processing system complete service disruption', 197, 255.95, '4-938000992158');
















