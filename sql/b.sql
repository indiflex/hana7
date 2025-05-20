# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#250429  9:11:54 server id 1  end_log_pos 126 CRC32 0x3ffcdf4e 	Start: binlog v 4, server v 8.0.34 created 250429  9:11:54 at startup
ROLLBACK/*!*/;
BINLOG '
ShkQaA8BAAAAegAAAH4AAAAAAAQAOC4wLjM0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAABKGRBoEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAU7f/D8=
'/*!*/;
# at 126
#250429  9:11:54 server id 1  end_log_pos 157 CRC32 0xe2ffd523 	Previous-GTIDs
# [empty]
# at 157
#250429  9:17:18 server id 1  end_log_pos 234 CRC32 0xb32ff3f6 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=no	original_committed_timestamp=1745885838618923	immediate_commit_timestamp=1745885838618923	transaction_length=197
# original_commit_timestamp=1745885838618923 (2025-04-29 09:17:18.618923 KST)
# immediate_commit_timestamp=1745885838618923 (2025-04-29 09:17:18.618923 KST)
/*!80001 SET @@session.original_commit_timestamp=1745885838618923*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 234
#250429  9:17:18 server id 1  end_log_pos 354 CRC32 0x88ea35cb 	Query	thread_id=12	exec_time=0	error_code=0	Xid = 73
SET TIMESTAMP=1745885838/*!*/;
SET @@session.pseudo_thread_id=12/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=45,@@session.collation_connection=45,@@session.collation_server=224/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
create database schooldb
/*!*/;
# at 354
#250429  9:18:25 server id 1  end_log_pos 433 CRC32 0x115c8f14 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=no	original_committed_timestamp=1745885905147418	immediate_commit_timestamp=1745885905147418	transaction_length=320
# original_commit_timestamp=1745885905147418 (2025-04-29 09:18:25.147418 KST)
# immediate_commit_timestamp=1745885905147418 (2025-04-29 09:18:25.147418 KST)
/*!80001 SET @@session.original_commit_timestamp=1745885905147418*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 433
#250429  9:18:25 server id 1  end_log_pos 674 CRC32 0x726dea01 	Query	thread_id=12	exec_time=0	error_code=0	Xid = 75
use `mysql`/*!*/;
SET TIMESTAMP=1745885905.136935/*!*/;
SET @@session.time_zone='SYSTEM'/*!*/;
CREATE USER 'school'@'%' IDENTIFIED WITH 'caching_sha2_password' AS '$A$005$\noNHASV_fb]8p+%z1l379QICCNpigO0Qmdmo1EZ5DnOGE5gTWobIFGuXFB.'
/*!*/;
# at 674
#250429  9:19:02 server id 1  end_log_pos 751 CRC32 0x72f51582 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=no	original_committed_timestamp=1745885942306448	immediate_commit_timestamp=1745885942306448	transaction_length=234
# original_commit_timestamp=1745885942306448 (2025-04-29 09:19:02.306448 KST)
# immediate_commit_timestamp=1745885942306448 (2025-04-29 09:19:02.306448 KST)
/*!80001 SET @@session.original_commit_timestamp=1745885942306448*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 751
#250429  9:19:02 server id 1  end_log_pos 908 CRC32 0x6290b691 	Query	thread_id=12	exec_time=0	error_code=0	Xid = 77
SET TIMESTAMP=1745885942/*!*/;
GRANT ALL PRIVILEGES ON `schooldb`.* TO 'school'@'%'
/*!*/;
# at 908
#250429  9:19:14 server id 1  end_log_pos 985 CRC32 0xf03079a1 	Anonymous_GTID	last_committed=3	sequence_number=4	rbr_only=no	original_committed_timestamp=1745885954582442	immediate_commit_timestamp=1745885954582442	transaction_length=172
# original_commit_timestamp=1745885954582442 (2025-04-29 09:19:14.582442 KST)
# immediate_commit_timestamp=1745885954582442 (2025-04-29 09:19:14.582442 KST)
/*!80001 SET @@session.original_commit_timestamp=1745885954582442*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 985
#250429  9:19:14 server id 1  end_log_pos 1080 CRC32 0xd579c572 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1745885954/*!*/;
flush privileges
/*!*/;
# at 1080
#250429  9:39:54 server id 1  end_log_pos 1159 CRC32 0xd1cfafb6 	Anonymous_GTID	last_committed=4	sequence_number=5	rbr_only=no	original_committed_timestamp=1745887194780312	immediate_commit_timestamp=1745887194780312	transaction_length=315
# original_commit_timestamp=1745887194780312 (2025-04-29 09:39:54.780312 KST)
# immediate_commit_timestamp=1745887194780312 (2025-04-29 09:39:54.780312 KST)
/*!80001 SET @@session.original_commit_timestamp=1745887194780312*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1159
#250429  9:39:54 server id 1  end_log_pos 1395 CRC32 0xcd7a6bdc 	Query	thread_id=12	exec_time=0	error_code=0	Xid = 138
SET TIMESTAMP=1745887194.769405/*!*/;
CREATE USER 'aa'@'%' IDENTIFIED WITH 'caching_sha2_password' AS '$A$005$YXRjymR&ppJ7MUc>z3ovvnBM9AhvXx4GvCvx.weWFDwIYCNj7JAKwxQYmX334'
/*!*/;
# at 1395
#250429  9:40:05 server id 1  end_log_pos 1472 CRC32 0x75709dda 	Anonymous_GTID	last_committed=5	sequence_number=6	rbr_only=no	original_committed_timestamp=1745887205854435	immediate_commit_timestamp=1745887205854435	transaction_length=193
# original_commit_timestamp=1745887205854435 (2025-04-29 09:40:05.854435 KST)
# immediate_commit_timestamp=1745887205854435 (2025-04-29 09:40:05.854435 KST)
/*!80001 SET @@session.original_commit_timestamp=1745887205854435*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1472
#250429  9:40:05 server id 1  end_log_pos 1588 CRC32 0x8b9c27d0 	Query	thread_id=12	exec_time=0	error_code=0	Xid = 139
SET TIMESTAMP=1745887205/*!*/;
rename user aa@'%' to bb@'%'
/*!*/;
# at 1588
#250429  9:41:12 server id 1  end_log_pos 1665 CRC32 0xeabf8587 	Anonymous_GTID	last_committed=6	sequence_number=7	rbr_only=no	original_committed_timestamp=1745887272460116	immediate_commit_timestamp=1745887272460116	transaction_length=181
# original_commit_timestamp=1745887272460116 (2025-04-29 09:41:12.460116 KST)
# immediate_commit_timestamp=1745887272460116 (2025-04-29 09:41:12.460116 KST)
/*!80001 SET @@session.original_commit_timestamp=1745887272460116*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1665
#250429  9:41:12 server id 1  end_log_pos 1769 CRC32 0xa6e30f18 	Query	thread_id=12	exec_time=0	error_code=0	Xid = 144
SET TIMESTAMP=1745887272/*!*/;
drop user bb@'%'
/*!*/;
# at 1769
#250429  9:49:15 server id 1  end_log_pos 1846 CRC32 0xf5e0deb6 	Anonymous_GTID	last_committed=7	sequence_number=8	rbr_only=no	original_committed_timestamp=1745887755709272	immediate_commit_timestamp=1745887755709272	transaction_length=187
# original_commit_timestamp=1745887755709272 (2025-04-29 09:49:15.709272 KST)
# immediate_commit_timestamp=1745887755709272 (2025-04-29 09:49:15.709272 KST)
/*!80001 SET @@session.original_commit_timestamp=1745887755709272*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1846
#250429  9:49:15 server id 1  end_log_pos 1956 CRC32 0x71056a49 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 165
use `testdb`/*!*/;
SET TIMESTAMP=1745887755/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=224/*!*/;
rename table T to TT
/*!*/;
# at 1956
#250429 10:12:54 server id 1  end_log_pos 2035 CRC32 0xb201c2a8 	Anonymous_GTID	last_committed=8	sequence_number=9	rbr_only=no	original_committed_timestamp=1745889174152667	immediate_commit_timestamp=1745889174152667	transaction_length=849
# original_commit_timestamp=1745889174152667 (2025-04-29 10:12:54.152667 KST)
# immediate_commit_timestamp=1745889174152667 (2025-04-29 10:12:54.152667 KST)
/*!80001 SET @@session.original_commit_timestamp=1745889174152667*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2035
#250429 10:12:54 server id 1  end_log_pos 2805 CRC32 0x60ac26cf 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 187
use `schooldb`/*!*/;
SET TIMESTAMP=1745889174/*!*/;
SET @@session.explicit_defaults_for_timestamp=1/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table Student (
    id int unsigned not null auto_increment comment '학번',
    name varchar(31) not null COMMENT '학생명',
    createdate timestamp DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
    updatedate timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '등록일시',
    email varchar(255) not null comment '이메일주',
	graduatedt varchar(10) DEFAULT NULL COMMENT '졸업일',
	auth tinyint(1) unsigned NOT NULL DEFAULT '9' COMMENT '0:sys, 1:super, ...9:guest',
	address varchar(63),
    zipcode char(5),
	PRIMARY KEY (id),
    UNIQUE KEY unique_student_email (email)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
/*!*/;
# at 2805
#250429 10:18:25 server id 1  end_log_pos 2882 CRC32 0x7ad4e3f6 	Anonymous_GTID	last_committed=9	sequence_number=10	rbr_only=no	original_committed_timestamp=1745889505270053	immediate_commit_timestamp=1745889505270053	transaction_length=191
# original_commit_timestamp=1745889505270053 (2025-04-29 10:18:25.270053 KST)
# immediate_commit_timestamp=1745889505270053 (2025-04-29 10:18:25.270053 KST)
/*!80001 SET @@session.original_commit_timestamp=1745889505270053*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2882
#250429 10:18:25 server id 1  end_log_pos 2996 CRC32 0x33262513 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 228
SET TIMESTAMP=1745889505/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table Emp like Student
/*!*/;
# at 2996
#250429 10:19:12 server id 1  end_log_pos 3073 CRC32 0xdfd52b80 	Anonymous_GTID	last_committed=10	sequence_number=11	rbr_only=no	original_committed_timestamp=1745889552964615	immediate_commit_timestamp=1745889552964615	transaction_length=227
# original_commit_timestamp=1745889552964615 (2025-04-29 10:19:12.964615 KST)
# immediate_commit_timestamp=1745889552964615 (2025-04-29 10:19:12.964615 KST)
/*!80001 SET @@session.original_commit_timestamp=1745889552964615*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3073
#250429 10:19:12 server id 1  end_log_pos 3223 CRC32 0x59380155 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 254
SET TIMESTAMP=1745889552/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Emp` 
DROP COLUMN `graduatedt`
/*!*/;
# at 3223
#250429 10:21:00 server id 1  end_log_pos 3300 CRC32 0x41f9db80 	Anonymous_GTID	last_committed=11	sequence_number=12	rbr_only=no	original_committed_timestamp=1745889660489471	immediate_commit_timestamp=1745889660489471	transaction_length=192
# original_commit_timestamp=1745889660489471 (2025-04-29 10:21:00.489471 KST)
# immediate_commit_timestamp=1745889660489471 (2025-04-29 10:21:00.489471 KST)
/*!80001 SET @@session.original_commit_timestamp=1745889660489471*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3300
#250429 10:21:00 server id 1  end_log_pos 3415 CRC32 0xb546700f 	Query	thread_id=20	exec_time=0	error_code=0
SET TIMESTAMP=1745889660/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Emp`
/*!*/;
# at 3415
#250429 10:21:00 server id 1  end_log_pos 3494 CRC32 0x62fe65a8 	Anonymous_GTID	last_committed=12	sequence_number=13	rbr_only=no	original_committed_timestamp=1745889660508537	immediate_commit_timestamp=1745889660508537	transaction_length=261
# original_commit_timestamp=1745889660508537 (2025-04-29 10:21:00.508537 KST)
# immediate_commit_timestamp=1745889660508537 (2025-04-29 10:21:00.508537 KST)
/*!80001 SET @@session.original_commit_timestamp=1745889660508537*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3494
#250429 10:21:00 server id 1  end_log_pos 3676 CRC32 0xc9ea2895 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 277
SET TIMESTAMP=1745889660/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Emp` RENAME INDEX `unique_student_email` TO `unique_emp_email`
/*!*/;
# at 3676
#250429 10:21:00 server id 1  end_log_pos 3753 CRC32 0xb3e4814b 	Anonymous_GTID	last_committed=13	sequence_number=14	rbr_only=no	original_committed_timestamp=1745889660515420	immediate_commit_timestamp=1745889660515420	transaction_length=240
# original_commit_timestamp=1745889660515420 (2025-04-29 10:21:00.515420 KST)
# immediate_commit_timestamp=1745889660515420 (2025-04-29 10:21:00.515420 KST)
/*!80001 SET @@session.original_commit_timestamp=1745889660515420*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3753
#250429 10:21:00 server id 1  end_log_pos 3916 CRC32 0x3b6566ad 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 278
SET TIMESTAMP=1745889660/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Emp` ALTER INDEX `unique_emp_email` VISIBLE
/*!*/;
# at 3916
#250429 10:26:46 server id 1  end_log_pos 3995 CRC32 0xd84e2c86 	Anonymous_GTID	last_committed=14	sequence_number=15	rbr_only=no	original_committed_timestamp=1745890006551431	immediate_commit_timestamp=1745890006551431	transaction_length=985
# original_commit_timestamp=1745890006551431 (2025-04-29 10:26:46.551431 KST)
# immediate_commit_timestamp=1745890006551431 (2025-04-29 10:26:46.551431 KST)
/*!80001 SET @@session.original_commit_timestamp=1745890006551431*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3995
#250429 10:26:46 server id 1  end_log_pos 4074 CRC32 0xe202ae74 	Query	thread_id=20	exec_time=0	error_code=0
SET TIMESTAMP=1745890006/*!*/;
BEGIN
/*!*/;
# at 4074
#250429 10:26:46 server id 1  end_log_pos 4870 CRC32 0xd9c8ba2a 	Query	thread_id=20	exec_time=0	error_code=0
SET TIMESTAMP=1745890006/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE `TT` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT '학번',
  `name` varchar(31) CHARACTER SET utf8mb3 NOT NULL COMMENT '학생명',
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '등록일시',
  `email` varchar(255) CHARACTER SET utf8mb3 NOT NULL COMMENT '이메일주',
  `graduatedt` varchar(10) CHARACTER SET utf8mb3 DEFAULT NULL COMMENT '졸업일',
  `auth` tinyint unsigned NOT NULL DEFAULT '9' COMMENT '0:sys, 1:super, ...9:guest',
  `address` varchar(63) CHARACTER SET utf8mb3 DEFAULT NULL,
  `zipcode` char(5) CHARACTER SET utf8mb3 DEFAULT NULL
) START TRANSACTION
/*!*/;
# at 4870
#250429 10:26:46 server id 1  end_log_pos 4901 CRC32 0xdf462cd2 	Xid = 300
COMMIT/*!*/;
# at 4901
#250429 10:27:51 server id 1  end_log_pos 4980 CRC32 0x7eb06630 	Anonymous_GTID	last_committed=15	sequence_number=16	rbr_only=no	original_committed_timestamp=1745890071919431	immediate_commit_timestamp=1745890071919431	transaction_length=5622
# original_commit_timestamp=1745890071919431 (2025-04-29 10:27:51.919431 KST)
# immediate_commit_timestamp=1745890071919431 (2025-04-29 10:27:51.919431 KST)
/*!80001 SET @@session.original_commit_timestamp=1745890071919431*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4980
#250429 10:27:51 server id 1  end_log_pos 5057 CRC32 0xbd72a8b2 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1745890071/*!*/;
BEGIN
/*!*/;
# at 5057
#250429 10:27:51 server id 1  end_log_pos 5372 CRC32 0x21509add 	Query	thread_id=9	exec_time=0	error_code=0
use `testdb`/*!*/;
SET TIMESTAMP=1745890071/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE `EmpBackup` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `ename` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` tinyint unsigned NOT NULL,
  `salary` int NOT NULL DEFAULT '0'
) START TRANSACTION
/*!*/;
# at 5372
#250429 10:27:51 server id 1  end_log_pos 5437 CRC32 0x8cbeb846 	Table_map: `testdb`.`empbackup` mapped to number 123
# has_generated_invisible_primary_key=0
# at 5437
#250429 10:27:51 server id 1  end_log_pos 10492 CRC32 0xfcfe3191 	Write_rows: table id 123 flags: STMT_END_F

BINLOG '
FysQaBMBAAAAQQAAAD0VAAAAAHsAAAAAAAEABnRlc3RkYgAJZW1wYmFja3VwAAQDDwEDAnwAAAEB
wAIB4Ea4vow=
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
'/*!*/;
# at 10492
#250429 10:27:51 server id 1  end_log_pos 10523 CRC32 0x4259737b 	Xid = 339
COMMIT/*!*/;
# at 10523
#250429 10:28:57 server id 1  end_log_pos 10600 CRC32 0x44733328 	Anonymous_GTID	last_committed=16	sequence_number=17	rbr_only=no	original_committed_timestamp=1745890138016386	immediate_commit_timestamp=1745890138016386	transaction_length=176
# original_commit_timestamp=1745890138016386 (2025-04-29 10:28:58.016386 KST)
# immediate_commit_timestamp=1745890138016386 (2025-04-29 10:28:58.016386 KST)
/*!80001 SET @@session.original_commit_timestamp=1745890138016386*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 10600
#250429 10:28:57 server id 1  end_log_pos 10699 CRC32 0x5bfd336b 	Query	thread_id=9	exec_time=1	error_code=0	Xid = 361
SET TIMESTAMP=1745890137/*!*/;
truncate table Emp
/*!*/;
# at 10699
#250429 10:29:53 server id 1  end_log_pos 10778 CRC32 0x285fc16c 	Anonymous_GTID	last_committed=17	sequence_number=18	rbr_only=yes	original_committed_timestamp=1745890193328149	immediate_commit_timestamp=1745890193328149	transaction_length=5301
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745890193328149 (2025-04-29 10:29:53.328149 KST)
# immediate_commit_timestamp=1745890193328149 (2025-04-29 10:29:53.328149 KST)
/*!80001 SET @@session.original_commit_timestamp=1745890193328149*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 10778
#250429 10:29:53 server id 1  end_log_pos 10855 CRC32 0x783f29d4 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1745890193/*!*/;
BEGIN
/*!*/;
# at 10855
#250429 10:29:53 server id 1  end_log_pos 10914 CRC32 0x6e56ab28 	Table_map: `testdb`.`emp` mapped to number 124
# has_generated_invisible_primary_key=0
# at 10914
#250429 10:29:53 server id 1  end_log_pos 15969 CRC32 0x60c6e897 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
kSsQaBMBAAAAOwAAAKIqAAAAAHwAAAAAAAEABnRlc3RkYgADZW1wAAQDDwEDAnwAAAEBwAIB4Cir
Vm4=
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
'/*!*/;
# at 15969
#250429 10:29:53 server id 1  end_log_pos 16000 CRC32 0xf0085d79 	Xid = 372
COMMIT/*!*/;
# at 16000
#250429 10:30:59 server id 1  end_log_pos 16077 CRC32 0x83a8414c 	Anonymous_GTID	last_committed=18	sequence_number=19	rbr_only=no	original_committed_timestamp=1745890260011240	immediate_commit_timestamp=1745890260011240	transaction_length=215
# original_commit_timestamp=1745890260011240 (2025-04-29 10:31:00.011240 KST)
# immediate_commit_timestamp=1745890260011240 (2025-04-29 10:31:00.011240 KST)
/*!80001 SET @@session.original_commit_timestamp=1745890260011240*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 16077
#250429 10:30:59 server id 1  end_log_pos 16215 CRC32 0x722e7283 	Query	thread_id=9	exec_time=1	error_code=0	Xid = 400
SET TIMESTAMP=1745890259/*!*/;
SET @@session.pseudo_thread_id=9/*!*/;
DROP TABLE `empbackup` /* generated by server */
/*!*/;
# at 16215
#250429 12:59:22 server id 1  end_log_pos 16292 CRC32 0xba1d2cbd 	Anonymous_GTID	last_committed=19	sequence_number=20	rbr_only=no	original_committed_timestamp=1745899162061577	immediate_commit_timestamp=1745899162061577	transaction_length=212
# original_commit_timestamp=1745899162061577 (2025-04-29 12:59:22.061577 KST)
# immediate_commit_timestamp=1745899162061577 (2025-04-29 12:59:22.061577 KST)
/*!80001 SET @@session.original_commit_timestamp=1745899162061577*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 16292
#250429 12:59:22 server id 1  end_log_pos 16427 CRC32 0x3d7b3e85 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 588
use `schooldb`/*!*/;
SET TIMESTAMP=1745899162/*!*/;
SET @@session.pseudo_thread_id=20/*!*/;
DROP TABLE `tt` /* generated by server */
/*!*/;
# at 16427
#250429 13:00:34 server id 1  end_log_pos 16504 CRC32 0xb230eeb4 	Anonymous_GTID	last_committed=20	sequence_number=21	rbr_only=no	original_committed_timestamp=1745899234665349	immediate_commit_timestamp=1745899234665349	transaction_length=194
# original_commit_timestamp=1745899234665349 (2025-04-29 13:00:34.665349 KST)
# immediate_commit_timestamp=1745899234665349 (2025-04-29 13:00:34.665349 KST)
/*!80001 SET @@session.original_commit_timestamp=1745899234665349*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 16504
#250429 13:00:34 server id 1  end_log_pos 16621 CRC32 0xc17121fe 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 590
SET TIMESTAMP=1745899234/*!*/;
rename table Emp to TTT
/*!*/;
# at 16621
#250429 13:01:35 server id 1  end_log_pos 16698 CRC32 0xf197d070 	Anonymous_GTID	last_committed=21	sequence_number=22	rbr_only=no	original_committed_timestamp=1745899295811826	immediate_commit_timestamp=1745899295811826	transaction_length=178
# original_commit_timestamp=1745899295811826 (2025-04-29 13:01:35.811826 KST)
# immediate_commit_timestamp=1745899295811826 (2025-04-29 13:01:35.811826 KST)
/*!80001 SET @@session.original_commit_timestamp=1745899295811826*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 16698
#250429 13:01:35 server id 1  end_log_pos 16799 CRC32 0x3b8949e5 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 607
SET TIMESTAMP=1745899295/*!*/;
truncate table TTT
/*!*/;
# at 16799
#250429 13:16:13 server id 1  end_log_pos 16876 CRC32 0x580f76e1 	Anonymous_GTID	last_committed=22	sequence_number=23	rbr_only=no	original_committed_timestamp=1745900173592662	immediate_commit_timestamp=1745900173592662	transaction_length=199
# original_commit_timestamp=1745900173592662 (2025-04-29 13:16:13.592662 KST)
# immediate_commit_timestamp=1745900173592662 (2025-04-29 13:16:13.592662 KST)
/*!80001 SET @@session.original_commit_timestamp=1745900173592662*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 16876
#250429 13:16:13 server id 1  end_log_pos 16998 CRC32 0xd4922511 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 628
SET TIMESTAMP=1745900173/*!*/;
rename table Student to User
/*!*/;
# at 16998
#250429 13:16:26 server id 1  end_log_pos 17075 CRC32 0x011b95e7 	Anonymous_GTID	last_committed=23	sequence_number=24	rbr_only=no	original_committed_timestamp=1745900186727020	immediate_commit_timestamp=1745900186727020	transaction_length=213
# original_commit_timestamp=1745900186727020 (2025-04-29 13:16:26.727020 KST)
# immediate_commit_timestamp=1745900186727020 (2025-04-29 13:16:26.727020 KST)
/*!80001 SET @@session.original_commit_timestamp=1745900186727020*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 17075
#250429 13:16:26 server id 1  end_log_pos 17211 CRC32 0xb0331b90 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 639
SET TIMESTAMP=1745900186/*!*/;
DROP TABLE `ttt` /* generated by server */
/*!*/;
# at 17211
#250429 13:29:53 server id 1  end_log_pos 17290 CRC32 0xeca0bd1e 	Anonymous_GTID	last_committed=24	sequence_number=25	rbr_only=no	original_committed_timestamp=1745900993774584	immediate_commit_timestamp=1745900993774584	transaction_length=322
# original_commit_timestamp=1745900993774584 (2025-04-29 13:29:53.774584 KST)
# immediate_commit_timestamp=1745900993774584 (2025-04-29 13:29:53.774584 KST)
/*!80001 SET @@session.original_commit_timestamp=1745900993774584*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 17290
#250429 13:29:53 server id 1  end_log_pos 17533 CRC32 0x808dabe2 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 645
SET TIMESTAMP=1745900993/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table Major(
    id smallint unsigned auto_increment primary key comment '학과번호',
    name varchar(31) not null comment '학과명'
)
/*!*/;
# at 17533
#250429 13:29:53 server id 1  end_log_pos 17612 CRC32 0x86456f18 	Anonymous_GTID	last_committed=25	sequence_number=26	rbr_only=yes	original_committed_timestamp=1745900993791723	immediate_commit_timestamp=1745900993791723	transaction_length=298
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745900993791723 (2025-04-29 13:29:53.791723 KST)
# immediate_commit_timestamp=1745900993791723 (2025-04-29 13:29:53.791723 KST)
/*!80001 SET @@session.original_commit_timestamp=1745900993791723*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 17612
#250429 13:29:53 server id 1  end_log_pos 17691 CRC32 0x35391dfe 	Query	thread_id=20	exec_time=0	error_code=0
SET TIMESTAMP=1745900993/*!*/;
BEGIN
/*!*/;
# at 17691
#250429 13:29:53 server id 1  end_log_pos 17752 CRC32 0x9ce46560 	Table_map: `schooldb`.`major` mapped to number 126
# has_generated_invisible_primary_key=0
# at 17752
#250429 13:29:53 server id 1  end_log_pos 17800 CRC32 0xf2e1497e 	Write_rows: table id 126 flags: STMT_END_F

BINLOG '
wVUQaBMBAAAAPQAAAFhFAAAAAH4AAAAAAAEACHNjaG9vbGRiAAVtYWpvcgACAg8CfAAAAQGAAgHg
YGXknA==
wVUQaB4BAAAAMAAAAIhFAAAAAH4AAAAAAAEAAgAC/wABAAnssqDtlZnqs7x+SeHy
'/*!*/;
# at 17800
#250429 13:29:53 server id 1  end_log_pos 17831 CRC32 0xebcd2b79 	Xid = 648
COMMIT/*!*/;
# at 17831
#250429 13:29:53 server id 1  end_log_pos 17910 CRC32 0x7e9841ee 	Anonymous_GTID	last_committed=26	sequence_number=27	rbr_only=yes	original_committed_timestamp=1745900993794141	immediate_commit_timestamp=1745900993794141	transaction_length=298
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745900993794141 (2025-04-29 13:29:53.794141 KST)
# immediate_commit_timestamp=1745900993794141 (2025-04-29 13:29:53.794141 KST)
/*!80001 SET @@session.original_commit_timestamp=1745900993794141*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 17910
#250429 13:29:53 server id 1  end_log_pos 17989 CRC32 0x3f2a206a 	Query	thread_id=20	exec_time=0	error_code=0
SET TIMESTAMP=1745900993/*!*/;
BEGIN
/*!*/;
# at 17989
#250429 13:29:53 server id 1  end_log_pos 18050 CRC32 0x00310048 	Table_map: `schooldb`.`major` mapped to number 126
# has_generated_invisible_primary_key=0
# at 18050
#250429 13:29:53 server id 1  end_log_pos 18098 CRC32 0x7762e1a1 	Write_rows: table id 126 flags: STMT_END_F

BINLOG '
wVUQaBMBAAAAPQAAAIJGAAAAAH4AAAAAAAEACHNjaG9vbGRiAAVtYWpvcgACAg8CfAAAAQGAAgHg
SAAxAA==
wVUQaB4BAAAAMAAAALJGAAAAAH4AAAAAAAEAAgAC/wACAAnsu7Tqs7Xqs7yh4WJ3
'/*!*/;
# at 18098
#250429 13:29:53 server id 1  end_log_pos 18129 CRC32 0x8800bfda 	Xid = 649
COMMIT/*!*/;
# at 18129
#250429 13:29:53 server id 1  end_log_pos 18208 CRC32 0x9bd85dbb 	Anonymous_GTID	last_committed=27	sequence_number=28	rbr_only=yes	original_committed_timestamp=1745900993796950	immediate_commit_timestamp=1745900993796950	transaction_length=298
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745900993796950 (2025-04-29 13:29:53.796950 KST)
# immediate_commit_timestamp=1745900993796950 (2025-04-29 13:29:53.796950 KST)
/*!80001 SET @@session.original_commit_timestamp=1745900993796950*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 18208
#250429 13:29:53 server id 1  end_log_pos 18287 CRC32 0xea9af06c 	Query	thread_id=20	exec_time=0	error_code=0
SET TIMESTAMP=1745900993/*!*/;
BEGIN
/*!*/;
# at 18287
#250429 13:29:53 server id 1  end_log_pos 18348 CRC32 0x74b2bd29 	Table_map: `schooldb`.`major` mapped to number 126
# has_generated_invisible_primary_key=0
# at 18348
#250429 13:29:53 server id 1  end_log_pos 18396 CRC32 0xd50df81a 	Write_rows: table id 126 flags: STMT_END_F

BINLOG '
wVUQaBMBAAAAPQAAAKxHAAAAAH4AAAAAAAEACHNjaG9vbGRiAAVtYWpvcgACAg8CfAAAAQGAAgHg
Kb2ydA==
wVUQaB4BAAAAMAAAANxHAAAAAH4AAAAAAAEAAgAC/wADAAnqsbTstpXqs7wa+A3V
'/*!*/;
# at 18396
#250429 13:29:53 server id 1  end_log_pos 18427 CRC32 0xc44ac3ff 	Xid = 650
COMMIT/*!*/;
# at 18427
#250429 13:42:35 server id 1  end_log_pos 18506 CRC32 0x04fa1945 	Anonymous_GTID	last_committed=28	sequence_number=29	rbr_only=no	original_committed_timestamp=1745901755108198	immediate_commit_timestamp=1745901755108198	transaction_length=876
# original_commit_timestamp=1745901755108198 (2025-04-29 13:42:35.108198 KST)
# immediate_commit_timestamp=1745901755108198 (2025-04-29 13:42:35.108198 KST)
/*!80001 SET @@session.original_commit_timestamp=1745901755108198*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 18506
#250429 13:42:35 server id 1  end_log_pos 19303 CRC32 0x222dfcb2 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 667
SET TIMESTAMP=1745901755/*!*/;
SET @@session.explicit_defaults_for_timestamp=1/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table Student (
    id int not null auto_increment primary key comment '학번',
    createdate timestamp default current_timestamp comment '입학일시',
    updatedate timestamp default current_timestamp on update current_timestamp comment '수정일시',
    name varchar(31) not null comment '이름', 
    birthdt varchar(10) not null comment '생년월일',
    major smallint unsigned not null comment '학과번호',
    mobile varchar(11) not null comment '휴대전화번호', 
    email varchar(127) not null comment '이메일주소',
    gender bit not null default 0 comment '성별(1:남, 0:여)',
    graduatedat date null comment '졸업 일자, 재학 중일 경우 null'
)
/*!*/;
# at 19303
#250429 13:44:14 server id 1  end_log_pos 19382 CRC32 0x44df7533 	Anonymous_GTID	last_committed=29	sequence_number=30	rbr_only=no	original_committed_timestamp=1745901854278870	immediate_commit_timestamp=1745901854278870	transaction_length=286
# original_commit_timestamp=1745901854278870 (2025-04-29 13:44:14.278870 KST)
# immediate_commit_timestamp=1745901854278870 (2025-04-29 13:44:14.278870 KST)
/*!80001 SET @@session.original_commit_timestamp=1745901854278870*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 19382
#250429 13:44:14 server id 1  end_log_pos 19589 CRC32 0x51e64c0c 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 705
SET TIMESTAMP=1745901854/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Student` 
CHANGE COLUMN `id` `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '학번'
/*!*/;
# at 19589
#250429 14:16:12 server id 1  end_log_pos 19666 CRC32 0x4c7330af 	Anonymous_GTID	last_committed=30	sequence_number=31	rbr_only=no	original_committed_timestamp=1745903772777687	immediate_commit_timestamp=1745903772777687	transaction_length=225
# original_commit_timestamp=1745903772777687 (2025-04-29 14:16:12.777687 KST)
# immediate_commit_timestamp=1745903772777687 (2025-04-29 14:16:12.777687 KST)
/*!80001 SET @@session.original_commit_timestamp=1745903772777687*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 19666
#250429 14:16:12 server id 1  end_log_pos 19814 CRC32 0x44c403d1 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 757
SET TIMESTAMP=1745903772/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Student` 
COMMENT = '학생'
/*!*/;
# at 19814
#250429 14:16:23 server id 1  end_log_pos 19891 CRC32 0xa5589b10 	Anonymous_GTID	last_committed=31	sequence_number=32	rbr_only=no	original_committed_timestamp=1745903783302197	immediate_commit_timestamp=1745903783302197	transaction_length=232
# original_commit_timestamp=1745903783302197 (2025-04-29 14:16:23.302197 KST)
# immediate_commit_timestamp=1745903783302197 (2025-04-29 14:16:23.302197 KST)
/*!80001 SET @@session.original_commit_timestamp=1745903783302197*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 19891
#250429 14:16:23 server id 1  end_log_pos 20046 CRC32 0x2a367cac 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 777
SET TIMESTAMP=1745903783/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Student modify column name varchar(25) not null
/*!*/;
# at 20046
#250429 14:17:02 server id 1  end_log_pos 20125 CRC32 0xa23bab86 	Anonymous_GTID	last_committed=32	sequence_number=33	rbr_only=no	original_committed_timestamp=1745903822270720	immediate_commit_timestamp=1745903822270720	transaction_length=257
# original_commit_timestamp=1745903822270720 (2025-04-29 14:17:02.270720 KST)
# immediate_commit_timestamp=1745903822270720 (2025-04-29 14:17:02.270720 KST)
/*!80001 SET @@session.original_commit_timestamp=1745903822270720*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 20125
#250429 14:17:02 server id 1  end_log_pos 20303 CRC32 0x68327bca 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 807
SET TIMESTAMP=1745903822/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Student modify column name varchar(25) not null comment '학생이름'
/*!*/;
# at 20303
#250429 14:21:01 server id 1  end_log_pos 20380 CRC32 0xc3c57714 	Anonymous_GTID	last_committed=33	sequence_number=34	rbr_only=no	original_committed_timestamp=1745904061755356	immediate_commit_timestamp=1745904061755356	transaction_length=248
# original_commit_timestamp=1745904061755356 (2025-04-29 14:21:01.755356 KST)
# immediate_commit_timestamp=1745904061755356 (2025-04-29 14:21:01.755356 KST)
/*!80001 SET @@session.original_commit_timestamp=1745904061755356*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 20380
#250429 14:21:01 server id 1  end_log_pos 20551 CRC32 0x938aa00b 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 811
SET TIMESTAMP=1745904061/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Student add constraint foreign key (major) references Major(id)
/*!*/;
# at 20551
#250429 14:29:07 server id 1  end_log_pos 20630 CRC32 0x0f9aa86a 	Anonymous_GTID	last_committed=34	sequence_number=35	rbr_only=no	original_committed_timestamp=1745904547820176	immediate_commit_timestamp=1745904547820176	transaction_length=326
# original_commit_timestamp=1745904547820176 (2025-04-29 14:29:07.820176 KST)
# immediate_commit_timestamp=1745904547820176 (2025-04-29 14:29:07.820176 KST)
/*!80001 SET @@session.original_commit_timestamp=1745904547820176*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 20630
#250429 14:29:07 server id 1  end_log_pos 20877 CRC32 0xaf41eb3d 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 831
use `testdb`/*!*/;
SET TIMESTAMP=1745904547/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp add column auth tinyint(1) unsigned not null default 9
     comment '0:sysadmin, 1:superuser, 3: manager, 5:employee, 7:temporary, 9:guest'
/*!*/;
# at 20877
#250429 14:30:27 server id 1  end_log_pos 20956 CRC32 0x2f83a832 	Anonymous_GTID	last_committed=35	sequence_number=36	rbr_only=no	original_committed_timestamp=1745904627569581	immediate_commit_timestamp=1745904627569581	transaction_length=345
# original_commit_timestamp=1745904627569581 (2025-04-29 14:30:27.569581 KST)
# immediate_commit_timestamp=1745904627569581 (2025-04-29 14:30:27.569581 KST)
/*!80001 SET @@session.original_commit_timestamp=1745904627569581*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 20956
#250429 14:30:27 server id 1  end_log_pos 21222 CRC32 0x517cd04e 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 842
SET TIMESTAMP=1745904627/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp modify column auth tinyint(1) unsigned not null default 9
     comment '0:sysadmin, 1:superuser, 3: manager, 5:employee, 7:temporary, 9:guest'
     after dept
/*!*/;
# at 21222
#250429 14:35:26 server id 1  end_log_pos 21301 CRC32 0x71094561 	Anonymous_GTID	last_committed=36	sequence_number=37	rbr_only=no	original_committed_timestamp=1745904926099462	immediate_commit_timestamp=1745904926099462	transaction_length=275
# original_commit_timestamp=1745904926099462 (2025-04-29 14:35:26.099462 KST)
# immediate_commit_timestamp=1745904926099462 (2025-04-29 14:35:26.099462 KST)
/*!80001 SET @@session.original_commit_timestamp=1745904926099462*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 21301
#250429 14:35:26 server id 1  end_log_pos 21497 CRC32 0x9bc7188a 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 864
SET TIMESTAMP=1745904926/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp add column auth2
 enum('sysadmin','superuser',' manager','employee','temporary','guest')
/*!*/;
# at 21497
#250429 14:37:14 server id 1  end_log_pos 21574 CRC32 0xf3d0bbbc 	Anonymous_GTID	last_committed=37	sequence_number=38	rbr_only=no	original_committed_timestamp=1745905034744850	immediate_commit_timestamp=1745905034744850	transaction_length=202
# original_commit_timestamp=1745905034744850 (2025-04-29 14:37:14.744850 KST)
# immediate_commit_timestamp=1745905034744850 (2025-04-29 14:37:14.744850 KST)
/*!80001 SET @@session.original_commit_timestamp=1745905034744850*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 21574
#250429 14:37:14 server id 1  end_log_pos 21699 CRC32 0x66ede019 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 876
SET TIMESTAMP=1745905034/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp drop column auth2
/*!*/;
# at 21699
#250429 15:17:34 server id 1  end_log_pos 21776 CRC32 0xf2fdea1d 	Anonymous_GTID	last_committed=38	sequence_number=39	rbr_only=no	original_committed_timestamp=1745907454994216	immediate_commit_timestamp=1745907454994216	transaction_length=242
# original_commit_timestamp=1745907454994216 (2025-04-29 15:17:34.994216 KST)
# immediate_commit_timestamp=1745907454994216 (2025-04-29 15:17:34.994216 KST)
/*!80001 SET @@session.original_commit_timestamp=1745907454994216*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 21776
#250429 15:17:34 server id 1  end_log_pos 21941 CRC32 0xdb8192a2 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 922
SET TIMESTAMP=1745907454/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Dept add column captain int unsigned null comment '부서장'
/*!*/;
# at 21941
#250429 15:18:48 server id 1  end_log_pos 22020 CRC32 0x97378c7e 	Anonymous_GTID	last_committed=39	sequence_number=40	rbr_only=no	original_committed_timestamp=1745907528244106	immediate_commit_timestamp=1745907528244106	transaction_length=264
# original_commit_timestamp=1745907528244106 (2025-04-29 15:18:48.244106 KST)
# immediate_commit_timestamp=1745907528244106 (2025-04-29 15:18:48.244106 KST)
/*!80001 SET @@session.original_commit_timestamp=1745907528244106*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 22020
#250429 15:18:48 server id 1  end_log_pos 22205 CRC32 0x54256d88 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 932
SET TIMESTAMP=1745907528/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Dept add constraint foreign key (captain) references Emp(id)
  on Delete set null
/*!*/;
# at 22205
#250429 15:19:52 server id 1  end_log_pos 22284 CRC32 0x4bc28946 	Anonymous_GTID	last_committed=40	sequence_number=41	rbr_only=no	original_committed_timestamp=1745907592961640	immediate_commit_timestamp=1745907592961640	transaction_length=282
# original_commit_timestamp=1745907592961640 (2025-04-29 15:19:52.961640 KST)
# immediate_commit_timestamp=1745907592961640 (2025-04-29 15:19:52.961640 KST)
/*!80001 SET @@session.original_commit_timestamp=1745907592961640*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 22284
#250429 15:19:52 server id 1  end_log_pos 22487 CRC32 0x173b79b3 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 957
SET TIMESTAMP=1745907592/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Dept add constraint foreign key (captain) references Emp(id)
  on Delete set null on Update cascade
/*!*/;
# at 22487
#250429 15:21:49 server id 1  end_log_pos 22564 CRC32 0x1f41910f 	Anonymous_GTID	last_committed=41	sequence_number=42	rbr_only=no	original_committed_timestamp=1745907710015576	immediate_commit_timestamp=1745907710015576	transaction_length=213
# original_commit_timestamp=1745907710015576 (2025-04-29 15:21:50.015576 KST)
# immediate_commit_timestamp=1745907710015576 (2025-04-29 15:21:50.015576 KST)
/*!80001 SET @@session.original_commit_timestamp=1745907710015576*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 22564
#250429 15:21:49 server id 1  end_log_pos 22700 CRC32 0xd98c7dce 	Query	thread_id=9	exec_time=1	error_code=0	Xid = 978
SET TIMESTAMP=1745907709/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Dept drop constraint dept_ibfk_1
/*!*/;
# at 22700
#250429 15:23:27 server id 1  end_log_pos 22777 CRC32 0xf0070aff 	Anonymous_GTID	last_committed=42	sequence_number=43	rbr_only=no	original_committed_timestamp=1745907807695286	immediate_commit_timestamp=1745907807695286	transaction_length=228
# original_commit_timestamp=1745907807695286 (2025-04-29 15:23:27.695286 KST)
# immediate_commit_timestamp=1745907807695286 (2025-04-29 15:23:27.695286 KST)
/*!80001 SET @@session.original_commit_timestamp=1745907807695286*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 22777
#250429 15:23:27 server id 1  end_log_pos 22928 CRC32 0x91616315 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 1003
SET TIMESTAMP=1745907807/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `testdb`.`Dept` 
DROP FOREIGN KEY `dept_ibfk_2`
/*!*/;
# at 22928
#250429 15:23:27 server id 1  end_log_pos 23007 CRC32 0xbeb36977 	Anonymous_GTID	last_committed=43	sequence_number=44	rbr_only=no	original_committed_timestamp=1745907807716674	immediate_commit_timestamp=1745907807716674	transaction_length=338
# original_commit_timestamp=1745907807716674 (2025-04-29 15:23:27.716674 KST)
# immediate_commit_timestamp=1745907807716674 (2025-04-29 15:23:27.716674 KST)
/*!80001 SET @@session.original_commit_timestamp=1745907807716674*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 23007
#250429 15:23:27 server id 1  end_log_pos 23266 CRC32 0xbd69072f 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 1004
SET TIMESTAMP=1745907807/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `testdb`.`Dept` 
ADD CONSTRAINT `fk_Dept_captain_Emp`
  FOREIGN KEY (`captain`)
  REFERENCES `testdb`.`Emp` (`id`)
  ON DELETE SET NULL
  ON UPDATE CASCADE
/*!*/;
# at 23266
#250429 15:26:42 server id 1  end_log_pos 23345 CRC32 0xc51bc01a 	Anonymous_GTID	last_committed=44	sequence_number=45	rbr_only=no	original_committed_timestamp=1745908002563041	immediate_commit_timestamp=1745908002563041	transaction_length=568
# original_commit_timestamp=1745908002563041 (2025-04-29 15:26:42.563041 KST)
# immediate_commit_timestamp=1745908002563041 (2025-04-29 15:26:42.563041 KST)
/*!80001 SET @@session.original_commit_timestamp=1745908002563041*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 23345
#250429 15:26:42 server id 1  end_log_pos 23834 CRC32 0x5958cf06 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1745908002/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table EmailLog (
  id int unsigned not null auto_increment primary key,
  sender int unsigned not null comment '발신자',
  receiver varchar(1024) not null comment '수신자',
  subject varchar(255) not null default '' comment '제목',
  body text null comment '내용',
  foreign key fk_EmailLog_sender_Emp (sender)
    references Emp(id) on update cascade on delete no action
) ENGINE = MyIsam
/*!*/;
# at 23834
#250429 15:33:56 server id 1  end_log_pos 23913 CRC32 0x3b7b19ff 	Anonymous_GTID	last_committed=45	sequence_number=46	rbr_only=no	original_committed_timestamp=1745908436523790	immediate_commit_timestamp=1745908436523790	transaction_length=343
# original_commit_timestamp=1745908436523790 (2025-04-29 15:33:56.523790 KST)
# immediate_commit_timestamp=1745908436523790 (2025-04-29 15:33:56.523790 KST)
/*!80001 SET @@session.original_commit_timestamp=1745908436523790*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 23913
#250429 15:33:56 server id 1  end_log_pos 24177 CRC32 0x9dc4bda8 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 1044
use `schooldb`/*!*/;
SET TIMESTAMP=1745908436/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table Prof (
    id smallint not null primary key comment '교수번호',
    name varchar(31) not null comment '교수명',
    likecnt int not null default 0
)
/*!*/;
# at 24177
#250429 15:39:36 server id 1  end_log_pos 24256 CRC32 0x98552026 	Anonymous_GTID	last_committed=46	sequence_number=47	rbr_only=no	original_committed_timestamp=1745908776785453	immediate_commit_timestamp=1745908776785453	transaction_length=258
# original_commit_timestamp=1745908776785453 (2025-04-29 15:39:36.785453 KST)
# immediate_commit_timestamp=1745908776785453 (2025-04-29 15:39:36.785453 KST)
/*!80001 SET @@session.original_commit_timestamp=1745908776785453*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 24256
#250429 15:39:36 server id 1  end_log_pos 24435 CRC32 0x09035894 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 1073
SET TIMESTAMP=1745908776/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Prof modify column id smallint unsigned not null comment '교수번호'
/*!*/;
# at 24435
#250429 15:40:34 server id 1  end_log_pos 24514 CRC32 0xdc733543 	Anonymous_GTID	last_committed=47	sequence_number=48	rbr_only=no	original_committed_timestamp=1745908834090824	immediate_commit_timestamp=1745908834090824	transaction_length=461
# original_commit_timestamp=1745908834090824 (2025-04-29 15:40:34.090824 KST)
# immediate_commit_timestamp=1745908834090824 (2025-04-29 15:40:34.090824 KST)
/*!80001 SET @@session.original_commit_timestamp=1745908834090824*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 24514
#250429 15:40:34 server id 1  end_log_pos 24896 CRC32 0xfe494c69 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 1091
SET TIMESTAMP=1745908834/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table Subject (
    id smallint unsigned not null primary key,
    name varchar(31) not null comment '과목명',
    prof smallint unsigned null comment '교수번호',
    foreign key fk_Subject_prof_Prof (prof)
      references Prof (id) on Update cascade on Delete set null
)
/*!*/;
# at 24896
#250429 15:45:25 server id 1  end_log_pos 24975 CRC32 0x7569fa0e 	Anonymous_GTID	last_committed=48	sequence_number=49	rbr_only=no	original_committed_timestamp=1745909125573170	immediate_commit_timestamp=1745909125573170	transaction_length=576
# original_commit_timestamp=1745909125573170 (2025-04-29 15:45:25.573170 KST)
# immediate_commit_timestamp=1745909125573170 (2025-04-29 15:45:25.573170 KST)
/*!80001 SET @@session.original_commit_timestamp=1745909125573170*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 24975
#250429 15:45:25 server id 1  end_log_pos 25472 CRC32 0x38c2cf89 	Query	thread_id=20	exec_time=0	error_code=0	Xid = 1103
SET TIMESTAMP=1745909125/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table Enroll (
    id int unsigned not null primary key,
    subject smallint unsigned not null comment '과목번호',
    student int unsigned not null comment '학번',
    foreign key fk_Enroll_subject (subject)
      references Subject (id) on Update cascade on Delete cascade,
    foreign key fk_Enroll_student (student)
      references Student (id) on Update cascade on Delete cascade
)
/*!*/;
# at 25472
#250430  9:12:08 server id 1  end_log_pos 25551 CRC32 0xd3c678eb 	Anonymous_GTID	last_committed=49	sequence_number=50	rbr_only=yes	original_committed_timestamp=1745971929008735	immediate_commit_timestamp=1745971929008735	transaction_length=372
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745971929008735 (2025-04-30 09:12:09.008735 KST)
# immediate_commit_timestamp=1745971929008735 (2025-04-30 09:12:09.008735 KST)
/*!80001 SET @@session.original_commit_timestamp=1745971929008735*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 25551
#250430  9:12:08 server id 1  end_log_pos 25632 CRC32 0xe206f9e6 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745971928/*!*/;
BEGIN
/*!*/;
# at 25632
#250430  9:12:08 server id 1  end_log_pos 25714 CRC32 0xb1afae4c 	Table_map: `schooldb`.`student` mapped to number 151
# has_generated_invisible_primary_key=0
# at 25714
#250430  9:12:08 server id 1  end_log_pos 25813 CRC32 0xe4e0b82b 	Write_rows: table id 151 flags: STMT_END_F

BINLOG '
2GoRaBMBAAAAUgAAAHJkAAAAAJcAAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgTK6vsQ==
2GoRaB4BAAAAYwAAANVkAAAAAJcAAAAAAAEAAgAK//8AAgEAAABoEWrYaBFq2AnquYDsnbzsiJgI
MTk5OTAxMjMBAAswMTAxMjM0MDAwMQ0Aa2ltQGdtYWlsLmNvbQAruODk
'/*!*/;
# at 25813
#250430  9:12:08 server id 1  end_log_pos 25844 CRC32 0x9b6140e7 	Xid = 1629
COMMIT/*!*/;
# at 25844
#250430  9:13:11 server id 1  end_log_pos 25923 CRC32 0xdaf84a69 	Anonymous_GTID	last_committed=50	sequence_number=51	rbr_only=yes	original_committed_timestamp=1745971991476510	immediate_commit_timestamp=1745971991476510	transaction_length=437
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745971991476510 (2025-04-30 09:13:11.476510 KST)
# immediate_commit_timestamp=1745971991476510 (2025-04-30 09:13:11.476510 KST)
/*!80001 SET @@session.original_commit_timestamp=1745971991476510*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 25923
#250430  9:13:11 server id 1  end_log_pos 26004 CRC32 0x24f1367b 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745971991/*!*/;
BEGIN
/*!*/;
# at 26004
#250430  9:13:11 server id 1  end_log_pos 26086 CRC32 0xf8e7b020 	Table_map: `schooldb`.`student` mapped to number 151
# has_generated_invisible_primary_key=0
# at 26086
#250430  9:13:11 server id 1  end_log_pos 26250 CRC32 0x2a1e9e3c 	Write_rows: table id 151 flags: STMT_END_F

BINLOG '
F2sRaBMBAAAAUgAAAOZlAAAAAJcAAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgILDn+A==
F2sRaB4BAAAApAAAAIpmAAAAAJcAAAAAAAEAAgAK//8AAgIAAABoEWsXaBFrFwnquYDsnbTsiJgI
MTk5OTAyMjMBAAswMTAxMjM0MDAwMg4Aa2ltMkBnbWFpbC5jb20AAAIDAAAAaBFrF2gRaxcJ6rmA
7IK87IiYCDE5OTkwMzIzAQALMDEwMTIzNDAwMDMOAGtpbTNAZ21haWwuY29tADyeHio=
'/*!*/;
# at 26250
#250430  9:13:11 server id 1  end_log_pos 26281 CRC32 0x6d3ede96 	Xid = 1640
COMMIT/*!*/;
# at 26281
#250430  9:33:20 server id 1  end_log_pos 26360 CRC32 0x7ca31083 	Anonymous_GTID	last_committed=51	sequence_number=52	rbr_only=no	original_committed_timestamp=1745973201029897	immediate_commit_timestamp=1745973201029897	transaction_length=289
# original_commit_timestamp=1745973201029897 (2025-04-30 09:33:21.029897 KST)
# immediate_commit_timestamp=1745973201029897 (2025-04-30 09:33:21.029897 KST)
/*!80001 SET @@session.original_commit_timestamp=1745973201029897*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 26360
#250430  9:33:20 server id 1  end_log_pos 26570 CRC32 0x113bc189 	Query	thread_id=34	exec_time=1	error_code=0	Xid = 1661
SET TIMESTAMP=1745973200/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Student` 
ADD UNIQUE INDEX `unique_Student_name_mobile` (`name` ASC, `mobile` ASC) VISIBLE
/*!*/;
# at 26570
#250430  9:36:11 server id 1  end_log_pos 26649 CRC32 0x8be43bfd 	Anonymous_GTID	last_committed=52	sequence_number=53	rbr_only=yes	original_committed_timestamp=1745973371741607	immediate_commit_timestamp=1745973371741607	transaction_length=373
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745973371741607 (2025-04-30 09:36:11.741607 KST)
# immediate_commit_timestamp=1745973371741607 (2025-04-30 09:36:11.741607 KST)
/*!80001 SET @@session.original_commit_timestamp=1745973371741607*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 26649
#250430  9:36:11 server id 1  end_log_pos 26730 CRC32 0x53161b87 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745973371/*!*/;
BEGIN
/*!*/;
# at 26730
#250430  9:36:11 server id 1  end_log_pos 26812 CRC32 0xcd70895e 	Table_map: `schooldb`.`student` mapped to number 155
# has_generated_invisible_primary_key=0
# at 26812
#250430  9:36:11 server id 1  end_log_pos 26912 CRC32 0x8568da91 	Write_rows: table id 155 flags: STMT_END_F

BINLOG '
e3ARaBMBAAAAUgAAALxoAAAAAJsAAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgXolwzQ==
e3ARaB4BAAAAZAAAACBpAAAAAJsAAAAAAAEAAgAK//8AAgYAAABoEXB7aBFwewnquYDsgqzsiJgI
MTk5OTA0MjMBAAswMTAxMjM0MDAwNA4Aa2ltNEBnbWFpbC5jb20AkdpohQ==
'/*!*/;
# at 26912
#250430  9:36:11 server id 1  end_log_pos 26943 CRC32 0x12465584 	Xid = 1695
COMMIT/*!*/;
# at 26943
#250430  9:43:28 server id 1  end_log_pos 27022 CRC32 0xaa5c1a79 	Anonymous_GTID	last_committed=53	sequence_number=54	rbr_only=yes	original_committed_timestamp=1745973808935598	immediate_commit_timestamp=1745973808935598	transaction_length=447
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745973808935598 (2025-04-30 09:43:28.935598 KST)
# immediate_commit_timestamp=1745973808935598 (2025-04-30 09:43:28.935598 KST)
/*!80001 SET @@session.original_commit_timestamp=1745973808935598*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 27022
#250430  9:43:28 server id 1  end_log_pos 27111 CRC32 0x3dce8e3e 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745973808/*!*/;
BEGIN
/*!*/;
# at 27111
#250430  9:43:28 server id 1  end_log_pos 27193 CRC32 0x94bdaaf3 	Table_map: `schooldb`.`student` mapped to number 155
# has_generated_invisible_primary_key=0
# at 27193
#250430  9:43:28 server id 1  end_log_pos 27359 CRC32 0x0d0beff1 	Update_rows: table id 155 flags: STMT_END_F

BINLOG '
MHIRaBMBAAAAUgAAADlqAAAAAJsAAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHg86q9lA==
MHIRaB8BAAAApgAAAN9qAAAAAJsAAAAAAAEAAgAK/////wACBgAAAGgRcHtoEXB7Ceq5gOyCrOyI
mAgxOTk5MDQyMwEACzAxMDEyMzQwMDA0DgBraW00QGdtYWlsLmNvbQAAAgYAAABoEXB7aBFyMAnq
uYDsgqzsiJgIMTk5OTA0MjMBAAswMTAxMjM0MDAwNA4Aa2ltNEBnbWFpbC5jb20A8e8LDQ==
'/*!*/;
# at 27359
#250430  9:43:28 server id 1  end_log_pos 27390 CRC32 0x09afb0cd 	Xid = 1721
COMMIT/*!*/;
# at 27390
#250430  9:45:47 server id 1  end_log_pos 27469 CRC32 0x739ba6a6 	Anonymous_GTID	last_committed=54	sequence_number=55	rbr_only=yes	original_committed_timestamp=1745973947110527	immediate_commit_timestamp=1745973947110527	transaction_length=439
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745973947110527 (2025-04-30 09:45:47.110527 KST)
# immediate_commit_timestamp=1745973947110527 (2025-04-30 09:45:47.110527 KST)
/*!80001 SET @@session.original_commit_timestamp=1745973947110527*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 27469
#250430  9:45:47 server id 1  end_log_pos 27550 CRC32 0xf8cd7e06 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745973947/*!*/;
BEGIN
/*!*/;
# at 27550
#250430  9:45:47 server id 1  end_log_pos 27632 CRC32 0x859a73a6 	Table_map: `schooldb`.`student` mapped to number 155
# has_generated_invisible_primary_key=0
# at 27632
#250430  9:45:47 server id 1  end_log_pos 27798 CRC32 0x6ea14887 	Update_rows: table id 155 flags: STMT_END_F

BINLOG '
u3IRaBMBAAAAUgAAAPBrAAAAAJsAAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgpnOahQ==
u3IRaB8BAAAApgAAAJZsAAAAAJsAAAAAAAEAAgAK/////wACBgAAAGgRcHtoEXIwCeq5gOyCrOyI
mAgxOTk5MDQyMwEACzAxMDEyMzQwMDA0DgBraW00QGdtYWlsLmNvbQAAAgYAAABoEXB7aBFyuwnq
uYDsgqzsiJgIMTk5OTA0MjUBAAswMTAxMjM0MDAwNA4Aa2ltNUBnbWFpbC5jb20Ah0ihbg==
'/*!*/;
# at 27798
#250430  9:45:47 server id 1  end_log_pos 27829 CRC32 0x7fbe8c6f 	Xid = 1732
COMMIT/*!*/;
# at 27829
#250430 10:03:46 server id 1  end_log_pos 27908 CRC32 0x518c9087 	Anonymous_GTID	last_committed=55	sequence_number=56	rbr_only=yes	original_committed_timestamp=1745975026110736	immediate_commit_timestamp=1745975026110736	transaction_length=373
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745975026110736 (2025-04-30 10:03:46.110736 KST)
# immediate_commit_timestamp=1745975026110736 (2025-04-30 10:03:46.110736 KST)
/*!80001 SET @@session.original_commit_timestamp=1745975026110736*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 27908
#250430 10:03:46 server id 1  end_log_pos 27989 CRC32 0xf652395d 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745975026/*!*/;
BEGIN
/*!*/;
# at 27989
#250430 10:03:46 server id 1  end_log_pos 28071 CRC32 0x02d9b1b7 	Table_map: `schooldb`.`student` mapped to number 155
# has_generated_invisible_primary_key=0
# at 28071
#250430 10:03:46 server id 1  end_log_pos 28171 CRC32 0xb126626d 	Write_rows: table id 155 flags: STMT_END_F

BINLOG '
8nYRaBMBAAAAUgAAAKdtAAAAAJsAAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgt7HZAg==
8nYRaB4BAAAAZAAAAAtuAAAAAJsAAAAAAAEAAgAK//8AAgkAAABoEXbyaBF28gnquYDsmKTsiJgI
MTk5OTA1MjMCAAswMTAxMjM0MDAwNQ4Aa2ltNUBnbWFpbC5jb20AbWImsQ==
'/*!*/;
# at 28171
#250430 10:03:46 server id 1  end_log_pos 28202 CRC32 0x7aba9894 	Xid = 1751
COMMIT/*!*/;
# at 28202
#250430 10:14:17 server id 1  end_log_pos 28281 CRC32 0x4651c62d 	Anonymous_GTID	last_committed=56	sequence_number=57	rbr_only=yes	original_committed_timestamp=1745975657018454	immediate_commit_timestamp=1745975657018454	transaction_length=448
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745975657018454 (2025-04-30 10:14:17.018454 KST)
# immediate_commit_timestamp=1745975657018454 (2025-04-30 10:14:17.018454 KST)
/*!80001 SET @@session.original_commit_timestamp=1745975657018454*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 28281
#250430 10:14:17 server id 1  end_log_pos 28371 CRC32 0x4d2c3ac4 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745975657/*!*/;
BEGIN
/*!*/;
# at 28371
#250430 10:14:17 server id 1  end_log_pos 28453 CRC32 0xc1e2473d 	Table_map: `schooldb`.`student` mapped to number 155
# has_generated_invisible_primary_key=0
# at 28453
#250430 10:14:17 server id 1  end_log_pos 28619 CRC32 0xfca58768 	Update_rows: table id 155 flags: STMT_END_F

BINLOG '
aXkRaBMBAAAAUgAAACVvAAAAAJsAAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgPUfiwQ==
aXkRaB8BAAAApgAAAMtvAAAAAJsAAAAAAAEAAgAK/////wACAwAAAGgRaxdoEWsXCeq5gOyCvOyI
mAgxOTk5MDMyMwEACzAxMDEyMzQwMDAzDgBraW0zQGdtYWlsLmNvbQAAAgMAAABoEWsXaBF5aQnq
uYDsgrzsiJgIMTk5OTAzMjMDAAswMTAxMjM0MDAwMw4Aa2ltM0BnbWFpbC5jb20AaIel/A==
'/*!*/;
# at 28619
#250430 10:14:17 server id 1  end_log_pos 28650 CRC32 0xd8e35f3a 	Xid = 1820
COMMIT/*!*/;
# at 28650
#250430 10:18:15 server id 1  end_log_pos 28729 CRC32 0xa45c046d 	Anonymous_GTID	last_committed=57	sequence_number=58	rbr_only=yes	original_committed_timestamp=1745975895101321	immediate_commit_timestamp=1745975895101321	transaction_length=313
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745975895101321 (2025-04-30 10:18:15.101321 KST)
# immediate_commit_timestamp=1745975895101321 (2025-04-30 10:18:15.101321 KST)
/*!80001 SET @@session.original_commit_timestamp=1745975895101321*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 28729
#250430 10:18:15 server id 1  end_log_pos 28810 CRC32 0x875f83a2 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745975895/*!*/;
BEGIN
/*!*/;
# at 28810
#250430 10:18:15 server id 1  end_log_pos 28871 CRC32 0x7bcae136 	Table_map: `schooldb`.`major` mapped to number 149
# has_generated_invisible_primary_key=0
# at 28871
#250430 10:18:15 server id 1  end_log_pos 28932 CRC32 0xfba10781 	Write_rows: table id 149 flags: STMT_END_F

BINLOG '
V3oRaBMBAAAAPQAAAMdwAAAAAJUAAAAAAAMACHNjaG9vbGRiAAVtYWpvcgACAg8CfAAAAQGAAgHg
NuHKew==
V3oRaB4BAAAAPQAAAARxAAAAAJUAAAAAAAEAAgAC/wAEAAnqsr3soJztlZkABQAJ6rK97JiB7ZWZ
gQeh+w==
'/*!*/;
# at 28932
#250430 10:18:15 server id 1  end_log_pos 28963 CRC32 0x5d3644c5 	Xid = 1957
COMMIT/*!*/;
# at 28963
#250430 10:19:48 server id 1  end_log_pos 29042 CRC32 0x5fbfe12f 	Anonymous_GTID	last_committed=58	sequence_number=59	rbr_only=yes	original_committed_timestamp=1745975988364537	immediate_commit_timestamp=1745975988364537	transaction_length=448
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745975988364537 (2025-04-30 10:19:48.364537 KST)
# immediate_commit_timestamp=1745975988364537 (2025-04-30 10:19:48.364537 KST)
/*!80001 SET @@session.original_commit_timestamp=1745975988364537*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 29042
#250430 10:19:48 server id 1  end_log_pos 29132 CRC32 0x2a3dca1f 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745975988/*!*/;
BEGIN
/*!*/;
# at 29132
#250430 10:19:48 server id 1  end_log_pos 29214 CRC32 0xc24e8da4 	Table_map: `schooldb`.`student` mapped to number 155
# has_generated_invisible_primary_key=0
# at 29214
#250430 10:19:48 server id 1  end_log_pos 29380 CRC32 0x16b6639d 	Update_rows: table id 155 flags: STMT_END_F

BINLOG '
tHoRaBMBAAAAUgAAAB5yAAAAAJsAAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgpI1Owg==
tHoRaB8BAAAApgAAAMRyAAAAAJsAAAAAAAEAAgAK/////wACCQAAAGgRdvJoEXbyCeq5gOyYpOyI
mAgxOTk5MDUyMwIACzAxMDEyMzQwMDA1DgBraW01QGdtYWlsLmNvbQAAAgcAAABoEXbyaBF6tAnq
uYDsmKTsiJgIMTk5OTA1MjMCAAswMTAxMjM0MDAwNQ4Aa2ltNUBnbWFpbC5jb20AnWO2Fg==
'/*!*/;
# at 29380
#250430 10:19:48 server id 1  end_log_pos 29411 CRC32 0x722a9a0f 	Xid = 1980
COMMIT/*!*/;
# at 29411
#250430 10:20:39 server id 1  end_log_pos 29488 CRC32 0xfe4e6098 	Anonymous_GTID	last_committed=59	sequence_number=60	rbr_only=no	original_committed_timestamp=1745976039027428	immediate_commit_timestamp=1745976039027428	transaction_length=225
# original_commit_timestamp=1745976039027428 (2025-04-30 10:20:39.027428 KST)
# immediate_commit_timestamp=1745976039027428 (2025-04-30 10:20:39.027428 KST)
/*!80001 SET @@session.original_commit_timestamp=1745976039027428*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 29488
#250430 10:20:39 server id 1  end_log_pos 29636 CRC32 0xf474b79b 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2006
SET TIMESTAMP=1745976039/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Student` 
AUTO_INCREMENT = 8
/*!*/;
# at 29636
#250430 10:20:45 server id 1  end_log_pos 29715 CRC32 0xe41a579e 	Anonymous_GTID	last_committed=60	sequence_number=61	rbr_only=yes	original_committed_timestamp=1745976045411433	immediate_commit_timestamp=1745976045411433	transaction_length=373
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745976045411433 (2025-04-30 10:20:45.411433 KST)
# immediate_commit_timestamp=1745976045411433 (2025-04-30 10:20:45.411433 KST)
/*!80001 SET @@session.original_commit_timestamp=1745976045411433*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 29715
#250430 10:20:45 server id 1  end_log_pos 29796 CRC32 0x77e86d60 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745976045/*!*/;
BEGIN
/*!*/;
# at 29796
#250430 10:20:45 server id 1  end_log_pos 29878 CRC32 0x31d95bcf 	Table_map: `schooldb`.`student` mapped to number 157
# has_generated_invisible_primary_key=0
# at 29878
#250430 10:20:45 server id 1  end_log_pos 29978 CRC32 0x9ecc2da7 	Write_rows: table id 157 flags: STMT_END_F

BINLOG '
7XoRaBMBAAAAUgAAALZ0AAAAAJ0AAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgz1vZMQ==
7XoRaB4BAAAAZAAAABp1AAAAAJ0AAAAAAAEAAgAK//8AAggAAABoEXrtaBF67QnquYDsnKHsiJgI
MTk5OTA2MjMEAAswMTAxMjM0MDAwNg4Aa2ltNkBnbWFpbC5jb20Apy3Mng==
'/*!*/;
# at 29978
#250430 10:20:45 server id 1  end_log_pos 30009 CRC32 0xba865579 	Xid = 2026
COMMIT/*!*/;
# at 30009
#250430 10:25:14 server id 1  end_log_pos 30088 CRC32 0x92bd2f43 	Anonymous_GTID	last_committed=61	sequence_number=62	rbr_only=yes	original_committed_timestamp=1745976314174825	immediate_commit_timestamp=1745976314174825	transaction_length=944
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745976314174825 (2025-04-30 10:25:14.174825 KST)
# immediate_commit_timestamp=1745976314174825 (2025-04-30 10:25:14.174825 KST)
/*!80001 SET @@session.original_commit_timestamp=1745976314174825*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 30088
#250430 10:25:14 server id 1  end_log_pos 30178 CRC32 0x11069154 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745976314/*!*/;
BEGIN
/*!*/;
# at 30178
#250430 10:25:14 server id 1  end_log_pos 30260 CRC32 0x0298d1f8 	Table_map: `schooldb`.`student` mapped to number 157
# has_generated_invisible_primary_key=0
# at 30260
#250430 10:25:14 server id 1  end_log_pos 30426 CRC32 0x3055cd8f 	Update_rows: table id 157 flags: STMT_END_F

BINLOG '
+nsRaBMBAAAAUgAAADR2AAAAAJ0AAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHg+NGYAg==
+nsRaB8BAAAApgAAANp2AAAAAJ0AAAAAAAEAAgAK/////wACAwAAAGgRaxdoEXlpCeq5gOyCvOyI
mAgxOTk5MDMyMwMACzAxMDEyMzQwMDAzDgBraW0zQGdtYWlsLmNvbQAAAgMAAABoEWsXaBF7+gns
nbTsgrzsiJgIMTk5OTAzMjMDAAswMTAxMjM0MDAwMw4Aa2ltM0BnbWFpbC5jb20Aj81VMA==
'/*!*/;
# at 30426
#250430 10:25:14 server id 1  end_log_pos 30508 CRC32 0x32417df6 	Table_map: `schooldb`.`student` mapped to number 157
# has_generated_invisible_primary_key=0
# at 30508
#250430 10:25:14 server id 1  end_log_pos 30674 CRC32 0x12f3025d 	Update_rows: table id 157 flags: STMT_END_F

BINLOG '
+nsRaBMBAAAAUgAAACx3AAAAAJ0AAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHg9n1BMg==
+nsRaB8BAAAApgAAANJ3AAAAAJ0AAAAAAAEAAgAK/////wACBwAAAGgRdvJoEXq0Ceq5gOyYpOyI
mAgxOTk5MDUyMwIACzAxMDEyMzQwMDA1DgBraW01QGdtYWlsLmNvbQAAAgcAAABoEXbyaBF7+gns
tZzsmKTsiJgIMTk5OTA1MjMCAAswMTAxMjM0MDAwNQ4Aa2ltNUBnbWFpbC5jb20AXQLzEg==
'/*!*/;
# at 30674
#250430 10:25:14 server id 1  end_log_pos 30756 CRC32 0x57d34a07 	Table_map: `schooldb`.`student` mapped to number 157
# has_generated_invisible_primary_key=0
# at 30756
#250430 10:25:14 server id 1  end_log_pos 30922 CRC32 0x10a02c18 	Update_rows: table id 157 flags: STMT_END_F

BINLOG '
+nsRaBMBAAAAUgAAACR4AAAAAJ0AAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgB0rTVw==
+nsRaB8BAAAApgAAAMp4AAAAAJ0AAAAAAAEAAgAK/////wACAgAAAGgRaxdoEWsXCeq5gOydtOyI
mAgxOTk5MDIyMwEACzAxMDEyMzQwMDAyDgBraW0yQGdtYWlsLmNvbQAAAgIAAABoEWsXaBF7+gnr
sJXsnbTsiJgIMTk5OTAyMjMBAAswMTAxMjM0MDAwMg4Aa2ltMkBnbWFpbC5jb20AGCygEA==
'/*!*/;
# at 30922
#250430 10:25:14 server id 1  end_log_pos 30953 CRC32 0xa1cf76c9 	Xid = 2083
COMMIT/*!*/;
# at 30953
#250430 10:38:54 server id 1  end_log_pos 31030 CRC32 0x68c8004e 	Anonymous_GTID	last_committed=62	sequence_number=63	rbr_only=no	original_committed_timestamp=1745977134185980	immediate_commit_timestamp=1745977134185980	transaction_length=240
# original_commit_timestamp=1745977134185980 (2025-04-30 10:38:54.185980 KST)
# immediate_commit_timestamp=1745977134185980 (2025-04-30 10:38:54.185980 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977134185980*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 31030
#250430 10:38:54 server id 1  end_log_pos 31193 CRC32 0x6abf3ef1 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2253
SET TIMESTAMP=1745977134/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Subject` 
DROP FOREIGN KEY `subject_ibfk_1`
/*!*/;
# at 31193
#250430 10:38:54 server id 1  end_log_pos 31270 CRC32 0x040a0b59 	Anonymous_GTID	last_committed=63	sequence_number=64	rbr_only=no	original_committed_timestamp=1745977134193138	immediate_commit_timestamp=1745977134193138	transaction_length=240
# original_commit_timestamp=1745977134193138 (2025-04-30 10:38:54.193138 KST)
# immediate_commit_timestamp=1745977134193138 (2025-04-30 10:38:54.193138 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977134193138*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 31270
#250430 10:38:54 server id 1  end_log_pos 31433 CRC32 0xce1cc0e9 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2254
SET TIMESTAMP=1745977134/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Subject` 
DROP INDEX `fk_Subject_prof_Prof`
/*!*/;
# at 31433
#250430 10:39:05 server id 1  end_log_pos 31512 CRC32 0x12f65039 	Anonymous_GTID	last_committed=64	sequence_number=65	rbr_only=no	original_committed_timestamp=1745977146010464	immediate_commit_timestamp=1745977146010464	transaction_length=294
# original_commit_timestamp=1745977146010464 (2025-04-30 10:39:06.010464 KST)
# immediate_commit_timestamp=1745977146010464 (2025-04-30 10:39:06.010464 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977146010464*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 31512
#250430 10:39:05 server id 1  end_log_pos 31727 CRC32 0xa112f4cb 	Query	thread_id=34	exec_time=1	error_code=0	Xid = 2274
SET TIMESTAMP=1745977145/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Prof` 
CHANGE COLUMN `id` `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '교수번호'
/*!*/;
# at 31727
#250430 10:41:42 server id 1  end_log_pos 31806 CRC32 0x72c0d670 	Anonymous_GTID	last_committed=65	sequence_number=66	rbr_only=no	original_committed_timestamp=1745977302157802	immediate_commit_timestamp=1745977302157802	transaction_length=261
# original_commit_timestamp=1745977302157802 (2025-04-30 10:41:42.157802 KST)
# immediate_commit_timestamp=1745977302157802 (2025-04-30 10:41:42.157802 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977302157802*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 31806
#250430 10:41:42 server id 1  end_log_pos 31988 CRC32 0xedc38bae 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2299
SET TIMESTAMP=1745977302/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Subject` 
ADD INDEX `fk_Subject_prof_idx` (`prof` ASC) VISIBLE
/*!*/;
# at 31988
#250430 10:41:42 server id 1  end_log_pos 32067 CRC32 0x15e717ac 	Anonymous_GTID	last_committed=66	sequence_number=67	rbr_only=no	original_committed_timestamp=1745977302175054	immediate_commit_timestamp=1745977302175054	transaction_length=343
# original_commit_timestamp=1745977302175054 (2025-04-30 10:41:42.175054 KST)
# immediate_commit_timestamp=1745977302175054 (2025-04-30 10:41:42.175054 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977302175054*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 32067
#250430 10:41:42 server id 1  end_log_pos 32331 CRC32 0x76865693 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2300
SET TIMESTAMP=1745977302/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Subject` 
ADD CONSTRAINT `fk_Subject_prof`
  FOREIGN KEY (`prof`)
  REFERENCES `schooldb`.`Prof` (`id`)
  ON DELETE SET NULL
  ON UPDATE CASCADE
/*!*/;
# at 32331
#250430 10:43:39 server id 1  end_log_pos 32410 CRC32 0x2a845ff2 	Anonymous_GTID	last_committed=67	sequence_number=68	rbr_only=yes	original_committed_timestamp=1745977419473125	immediate_commit_timestamp=1745977419473125	transaction_length=338
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745977419473125 (2025-04-30 10:43:39.473125 KST)
# immediate_commit_timestamp=1745977419473125 (2025-04-30 10:43:39.473125 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977419473125*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 32410
#250430 10:43:39 server id 1  end_log_pos 32491 CRC32 0x7f944d21 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745977419/*!*/;
BEGIN
/*!*/;
# at 32491
#250430 10:43:39 server id 1  end_log_pos 32552 CRC32 0xe119a89b 	Table_map: `schooldb`.`prof` mapped to number 166
# has_generated_invisible_primary_key=0
# at 32552
#250430 10:43:39 server id 1  end_log_pos 32638 CRC32 0xe07441a1 	Write_rows: table id 166 flags: STMT_END_F

BINLOG '
S4ARaBMBAAAAPQAAACh/AAAAAKYAAAAAAAMACHNjaG9vbGRiAARwcm9mAAMCDwMCfAAAAQGAAgHg
m6gZ4Q==
S4ARaB4BAAAAVgAAAH5/AAAAAKYAAAAAAAEAAgAD/wABAAnrsJXqtZDsiJgCAAAAAAIACeydtOq1
kOyImAMAAAAAAwAJ7LWc6rWQ7IiYBwAAAKFBdOA=
'/*!*/;
# at 32638
#250430 10:43:39 server id 1  end_log_pos 32669 CRC32 0x154b3d51 	Xid = 2330
COMMIT/*!*/;
# at 32669
#250430 10:48:19 server id 1  end_log_pos 32746 CRC32 0x545d05e0 	Anonymous_GTID	last_committed=68	sequence_number=69	rbr_only=no	original_committed_timestamp=1745977699118128	immediate_commit_timestamp=1745977699118128	transaction_length=238
# original_commit_timestamp=1745977699118128 (2025-04-30 10:48:19.118128 KST)
# immediate_commit_timestamp=1745977699118128 (2025-04-30 10:48:19.118128 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977699118128*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 32746
#250430 10:48:19 server id 1  end_log_pos 32907 CRC32 0xaf7b2c16 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2450
SET TIMESTAMP=1745977699/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Enroll` 
DROP FOREIGN KEY `enroll_ibfk_1`
/*!*/;
# at 32907
#250430 10:48:19 server id 1  end_log_pos 32984 CRC32 0x35820b09 	Anonymous_GTID	last_committed=69	sequence_number=70	rbr_only=no	original_committed_timestamp=1745977699135738	immediate_commit_timestamp=1745977699135738	transaction_length=236
# original_commit_timestamp=1745977699135738 (2025-04-30 10:48:19.135738 KST)
# immediate_commit_timestamp=1745977699135738 (2025-04-30 10:48:19.135738 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977699135738*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 32984
#250430 10:48:19 server id 1  end_log_pos 33143 CRC32 0xf738b771 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2451
SET TIMESTAMP=1745977699/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Enroll` 
DROP INDEX `fk_Enroll_subject`
/*!*/;
# at 33143
#250430 10:48:26 server id 1  end_log_pos 33222 CRC32 0x2528f69d 	Anonymous_GTID	last_committed=70	sequence_number=71	rbr_only=no	original_committed_timestamp=1745977706051941	immediate_commit_timestamp=1745977706051941	transaction_length=274
# original_commit_timestamp=1745977706051941 (2025-04-30 10:48:26.051941 KST)
# immediate_commit_timestamp=1745977706051941 (2025-04-30 10:48:26.051941 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977706051941*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 33222
#250430 10:48:26 server id 1  end_log_pos 33417 CRC32 0x7038c0c3 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2481
SET TIMESTAMP=1745977706/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Subject` 
CHANGE COLUMN `id` `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT
/*!*/;
# at 33417
#250430 10:49:08 server id 1  end_log_pos 33496 CRC32 0xeab6a9fe 	Anonymous_GTID	last_committed=71	sequence_number=72	rbr_only=no	original_committed_timestamp=1745977748762097	immediate_commit_timestamp=1745977748762097	transaction_length=265
# original_commit_timestamp=1745977748762097 (2025-04-30 10:49:08.762097 KST)
# immediate_commit_timestamp=1745977748762097 (2025-04-30 10:49:08.762097 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977748762097*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 33496
#250430 10:49:08 server id 1  end_log_pos 33682 CRC32 0xf4062584 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2506
SET TIMESTAMP=1745977748/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Enroll` 
ADD INDEX `fk_Enroll_subject_idx` (`subject` ASC) VISIBLE
/*!*/;
# at 33682
#250430 10:49:08 server id 1  end_log_pos 33761 CRC32 0xa97a98f0 	Anonymous_GTID	last_committed=72	sequence_number=73	rbr_only=no	original_committed_timestamp=1745977748781462	immediate_commit_timestamp=1745977748781462	transaction_length=349
# original_commit_timestamp=1745977748781462 (2025-04-30 10:49:08.781462 KST)
# immediate_commit_timestamp=1745977748781462 (2025-04-30 10:49:08.781462 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977748781462*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 33761
#250430 10:49:08 server id 1  end_log_pos 34031 CRC32 0x65a71556 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2507
SET TIMESTAMP=1745977748/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Enroll` 
ADD CONSTRAINT `fk_Enroll_subject`
  FOREIGN KEY (`subject`)
  REFERENCES `schooldb`.`Subject` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE
/*!*/;
# at 34031
#250430 10:49:17 server id 1  end_log_pos 34110 CRC32 0x0cffb69b 	Anonymous_GTID	last_committed=73	sequence_number=74	rbr_only=yes	original_committed_timestamp=1745977757876991	immediate_commit_timestamp=1745977757876991	transaction_length=329
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745977757876991 (2025-04-30 10:49:17.876991 KST)
# immediate_commit_timestamp=1745977757876991 (2025-04-30 10:49:17.876991 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977757876991*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 34110
#250430 10:49:17 server id 1  end_log_pos 34191 CRC32 0xe9f02b2a 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745977757/*!*/;
BEGIN
/*!*/;
# at 34191
#250430 10:49:17 server id 1  end_log_pos 34255 CRC32 0x62d4fabc 	Table_map: `schooldb`.`subject` mapped to number 174
# has_generated_invisible_primary_key=0
# at 34255
#250430 10:49:17 server id 1  end_log_pos 34329 CRC32 0xfacbe689 	Write_rows: table id 174 flags: STMT_END_F

BINLOG '
nYERaBMBAAAAQAAAAM+FAAAAAK4AAAAAAAMACHNjaG9vbGRiAAdzdWJqZWN0AAMCDwICfAAEAQHA
AgHgvPrUYg==
nYERaB4BAAAASgAAABmGAAAAAK4AAAAAAAEAAgAD/wABAAfqs7zrqqkzAwAAAgAH6rO866qpMQEA
AAMAB+qzvOuqqTICAInmy/o=
'/*!*/;
# at 34329
#250430 10:49:17 server id 1  end_log_pos 34360 CRC32 0x0ab52faf 	Xid = 2537
COMMIT/*!*/;
# at 34360
#250430 10:51:55 server id 1  end_log_pos 34439 CRC32 0x34ca5d9f 	Anonymous_GTID	last_committed=74	sequence_number=75	rbr_only=no	original_committed_timestamp=1745977915334073	immediate_commit_timestamp=1745977915334073	transaction_length=268
# original_commit_timestamp=1745977915334073 (2025-04-30 10:51:55.334073 KST)
# immediate_commit_timestamp=1745977915334073 (2025-04-30 10:51:55.334073 KST)
/*!80001 SET @@session.original_commit_timestamp=1745977915334073*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 34439
#250430 10:51:55 server id 1  end_log_pos 34628 CRC32 0x6ce12d69 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 2647
SET TIMESTAMP=1745977915/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Enroll` 
CHANGE COLUMN `id` `id` INT UNSIGNED NOT NULL AUTO_INCREMENT
/*!*/;
# at 34628
#250430 10:53:28 server id 1  end_log_pos 34707 CRC32 0xdc5fbe01 	Anonymous_GTID	last_committed=75	sequence_number=76	rbr_only=yes	original_committed_timestamp=1745978008430503	immediate_commit_timestamp=1745978008430503	transaction_length=317
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745978008430503 (2025-04-30 10:53:28.430503 KST)
# immediate_commit_timestamp=1745978008430503 (2025-04-30 10:53:28.430503 KST)
/*!80001 SET @@session.original_commit_timestamp=1745978008430503*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 34707
#250430 10:53:28 server id 1  end_log_pos 34788 CRC32 0x6ab3397d 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745978008/*!*/;
BEGIN
/*!*/;
# at 34788
#250430 10:53:28 server id 1  end_log_pos 34846 CRC32 0x2b972860 	Table_map: `schooldb`.`enroll` mapped to number 175
# has_generated_invisible_primary_key=0
# at 34846
#250430 10:53:28 server id 1  end_log_pos 34914 CRC32 0x6a50013d 	Write_rows: table id 175 flags: STMT_END_F

BINLOG '
mIIRaBMBAAAAOgAAAB6IAAAAAK8AAAAAAAMACHNjaG9vbGRiAAZlbnJvbGwAAwMCAwAAAQHgYCiX
Kw==
mIIRaB4BAAAARAAAAGKIAAAAAK8AAAAAAAEAAgAD/wABAAAAAgACAAAAAAIAAAADAAIAAAAAAwAA
AAEABwAAAD0BUGo=
'/*!*/;
# at 34914
#250430 10:53:28 server id 1  end_log_pos 34945 CRC32 0x1dc03566 	Xid = 2730
COMMIT/*!*/;
# at 34945
#250430 11:23:36 server id 1  end_log_pos 35024 CRC32 0x8d57eb80 	Anonymous_GTID	last_committed=76	sequence_number=77	rbr_only=yes	original_committed_timestamp=1745979816959903	immediate_commit_timestamp=1745979816959903	transaction_length=457
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745979816959903 (2025-04-30 11:23:36.959903 KST)
# immediate_commit_timestamp=1745979816959903 (2025-04-30 11:23:36.959903 KST)
/*!80001 SET @@session.original_commit_timestamp=1745979816959903*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 35024
#250430 11:23:36 server id 1  end_log_pos 35122 CRC32 0xa6853ae0 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745979816/*!*/;
BEGIN
/*!*/;
# at 35122
#250430 11:23:36 server id 1  end_log_pos 35204 CRC32 0x2498bb10 	Table_map: `schooldb`.`student` mapped to number 157
# has_generated_invisible_primary_key=0
# at 35204
#250430 11:23:36 server id 1  end_log_pos 35371 CRC32 0xbbdb1890 	Update_rows: table id 157 flags: STMT_END_F

BINLOG '
qIkRaBMBAAAAUgAAAISJAAAAAJ0AAAAAAAMACHNjaG9vbGRiAAdzdHVkZW50AAoDEREPDwIPDxAK
DAAAZAAoACwA/AEBAAYCAQHAAgHgELuYJA==
qIkRaB8BAAAApwAAACuKAAAAAJ0AAAAAAAEAAgAK/////wACAQAAAGgRathoEWrYCeq5gOydvOyI
mAgxOTk5MDEyMwEACzAxMDEyMzQwMDAxDQBraW1AZ21haWwuY29tAAAAAQAAAGgRathoEYmoCeq5
gOydvOyImAgxOTk5MDEyMwEACzAxMDEyMzQwMDAxDQBraW1AZ21haWwuY29tAJ7SD5AY27s=
'/*!*/;
# at 35371
#250430 11:23:36 server id 1  end_log_pos 35402 CRC32 0x13fa95dc 	Xid = 2986
COMMIT/*!*/;
# at 35402
#250430 13:31:34 server id 1  end_log_pos 35481 CRC32 0x892224bf 	Anonymous_GTID	last_committed=77	sequence_number=78	rbr_only=yes	original_committed_timestamp=1745987494710559	immediate_commit_timestamp=1745987494710559	transaction_length=588
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745987494710559 (2025-04-30 13:31:34.710559 KST)
# immediate_commit_timestamp=1745987494710559 (2025-04-30 13:31:34.710559 KST)
/*!80001 SET @@session.original_commit_timestamp=1745987494710559*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 35481
#250430 13:31:34 server id 1  end_log_pos 35569 CRC32 0xc4883dd8 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1745987494/*!*/;
BEGIN
/*!*/;
# at 35569
#250430 13:31:34 server id 1  end_log_pos 35629 CRC32 0xaa800baf 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 35629
#250430 13:31:34 server id 1  end_log_pos 35959 CRC32 0x4f900561 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
pqcRaBMBAAAAPAAAAC2LAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeCv
C4Cq
pqcRaB8BAAAASgEAAHeMAAAAAJEAAAAAAAEAAgAF//8AEgAAAAnsoITqta3ssKwDCYQDAAAAEgAA
AAnsoITqta3ssKwDCYUDAAAALwAAAAnsnbTsi6DtnawGCYQDAAAALwAAAAnsnbTsi6DtnawGCYUD
AAAAUAAAAAnsp4DsooXrnbwECYQDAAAAUAAAAAnsp4DsooXrnbwECYUDAAAAYQAAAAnstZzsi6Ds
hLgCCYQDAAAAYQAAAAnstZzsi6DshLgCCYUDAAAAgAAAAAnsnbTsnKTrsJQHCYQDAAAAgAAAAAns
nbTsnKTrsJQHCYUDAAAAhQAAAAnsm5DqsrDrsJQFCYQDAAAAhQAAAAnsm5DqsrDrsJQFCYUDAAAA
mAAAAAnrsJXshLHsooUBCYQDAAAAmAAAAAnrsJXshLHsooUBCYUDAABhBZBP
'/*!*/;
# at 35959
#250430 13:31:34 server id 1  end_log_pos 35990 CRC32 0xee4db6c1 	Xid = 3265
COMMIT/*!*/;
# at 35990
#250430 14:20:56 server id 1  end_log_pos 36069 CRC32 0x1ac87f31 	Anonymous_GTID	last_committed=78	sequence_number=79	rbr_only=no	original_committed_timestamp=1745990456911019	immediate_commit_timestamp=1745990456911019	transaction_length=277
# original_commit_timestamp=1745990456911019 (2025-04-30 14:20:56.911019 KST)
# immediate_commit_timestamp=1745990456911019 (2025-04-30 14:20:56.911019 KST)
/*!80001 SET @@session.original_commit_timestamp=1745990456911019*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 36069
#250430 14:20:56 server id 1  end_log_pos 36267 CRC32 0xe17a452c 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 3712
SET TIMESTAMP=1745990456/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Student` 
ADD INDEX `idx_Student_major_name` (`major` ASC, `name` ASC) VISIBLE
/*!*/;
# at 36267
#250430 14:33:20 server id 1  end_log_pos 36346 CRC32 0xbbf66b55 	Anonymous_GTID	last_committed=79	sequence_number=80	rbr_only=yes	original_committed_timestamp=1745991200144927	immediate_commit_timestamp=1745991200144927	transaction_length=588
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745991200144927 (2025-04-30 14:33:20.144927 KST)
# immediate_commit_timestamp=1745991200144927 (2025-04-30 14:33:20.144927 KST)
/*!80001 SET @@session.original_commit_timestamp=1745991200144927*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 36346
#250430 14:33:20 server id 1  end_log_pos 36434 CRC32 0x2d0a338e 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1745991200/*!*/;
BEGIN
/*!*/;
# at 36434
#250430 14:33:20 server id 1  end_log_pos 36494 CRC32 0xc7f384c4 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 36494
#250430 14:33:20 server id 1  end_log_pos 36824 CRC32 0xc9c587a5 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
ILYRaBMBAAAAPAAAAI6OAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeDE
hPPH
ILYRaB8BAAAASgEAANiPAAAAAJEAAAAAAAEAAgAF//8AEgAAAAnsoITqta3ssKwDCYUDAAAAEgAA
AAnsoITqta3ssKwDCYQDAAAALwAAAAnsnbTsi6DtnawGCYUDAAAALwAAAAnsnbTsi6DtnawGCYQD
AAAAUAAAAAnsp4DsooXrnbwECYUDAAAAUAAAAAnsp4DsooXrnbwECYQDAAAAYQAAAAnstZzsi6Ds
hLgCCYUDAAAAYQAAAAnstZzsi6DshLgCCYQDAAAAgAAAAAnsnbTsnKTrsJQHCYUDAAAAgAAAAAns
nbTsnKTrsJQHCYQDAAAAhQAAAAnsm5DqsrDrsJQFCYUDAAAAhQAAAAnsm5DqsrDrsJQFCYQDAAAA
mAAAAAnrsJXshLHsooUBCYUDAAAAmAAAAAnrsJXshLHsooUBCYQDAAClh8XJ
'/*!*/;
# at 36824
#250430 14:33:20 server id 1  end_log_pos 36855 CRC32 0x331dea7f 	Xid = 3921
COMMIT/*!*/;
# at 36855
#250430 15:32:56 server id 1  end_log_pos 36934 CRC32 0xe8990a21 	Anonymous_GTID	last_committed=80	sequence_number=81	rbr_only=yes	original_committed_timestamp=1745994776770011	immediate_commit_timestamp=1745994776770011	transaction_length=304
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745994776770011 (2025-04-30 15:32:56.770011 KST)
# immediate_commit_timestamp=1745994776770011 (2025-04-30 15:32:56.770011 KST)
/*!80001 SET @@session.original_commit_timestamp=1745994776770011*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 36934
#250430 15:32:56 server id 1  end_log_pos 37015 CRC32 0xb3ff27ee 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1745994776/*!*/;
BEGIN
/*!*/;
# at 37015
#250430 15:32:56 server id 1  end_log_pos 37076 CRC32 0xd68182ff 	Table_map: `schooldb`.`prof` mapped to number 166
# has_generated_invisible_primary_key=0
# at 37076
#250430 15:32:56 server id 1  end_log_pos 37128 CRC32 0xdcae4baa 	Write_rows: table id 166 flags: STMT_END_F

BINLOG '
GMQRaBMBAAAAPQAAANSQAAAAAKYAAAAAAAMACHNjaG9vbGRiAARwcm9mAAMCDwMCfAAAAQGAAgHg
/4KB1g==
GMQRaB4BAAAANAAAAAiRAAAAAKYAAAAAAAEAAgAD/wAEAAnquYDqtZDsiJgAAAAAqkuu3A==
'/*!*/;
# at 37128
#250430 15:32:56 server id 1  end_log_pos 37159 CRC32 0x00855af7 	Xid = 4280
COMMIT/*!*/;
# at 37159
#250430 16:00:16 server id 1  end_log_pos 37238 CRC32 0x69fbc1c6 	Anonymous_GTID	last_committed=81	sequence_number=82	rbr_only=yes	original_committed_timestamp=1745996416908011	immediate_commit_timestamp=1745996416908011	transaction_length=588
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745996416908011 (2025-04-30 16:00:16.908011 KST)
# immediate_commit_timestamp=1745996416908011 (2025-04-30 16:00:16.908011 KST)
/*!80001 SET @@session.original_commit_timestamp=1745996416908011*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 37238
#250430 16:00:16 server id 1  end_log_pos 37326 CRC32 0xa04bdfb3 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1745996416/*!*/;
BEGIN
/*!*/;
# at 37326
#250430 16:00:16 server id 1  end_log_pos 37386 CRC32 0xce8387df 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 37386
#250430 16:00:16 server id 1  end_log_pos 37716 CRC32 0x28031f03 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
gMoRaBMBAAAAPAAAAAqSAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeDf
h4PO
gMoRaB8BAAAASgEAAFSTAAAAAJEAAAAAAAEAAgAF//8AEgAAAAnsoITqta3ssKwDCYQDAAAAEgAA
AAnsoITqta3ssKwDCYUDAAAALwAAAAnsnbTsi6DtnawGCYQDAAAALwAAAAnsnbTsi6DtnawGCYUD
AAAAUAAAAAnsp4DsooXrnbwECYQDAAAAUAAAAAnsp4DsooXrnbwECYUDAAAAYQAAAAnstZzsi6Ds
hLgCCYQDAAAAYQAAAAnstZzsi6DshLgCCYUDAAAAgAAAAAnsnbTsnKTrsJQHCYQDAAAAgAAAAAns
nbTsnKTrsJQHCYUDAAAAhQAAAAnsm5DqsrDrsJQFCYQDAAAAhQAAAAnsm5DqsrDrsJQFCYUDAAAA
mAAAAAnrsJXshLHsooUBCYQDAAAAmAAAAAnrsJXshLHsooUBCYUDAAADHwMo
'/*!*/;
# at 37716
#250430 16:00:16 server id 1  end_log_pos 37747 CRC32 0x78569dc6 	Xid = 4378
COMMIT/*!*/;
# at 37747
#250430 16:05:12 server id 1  end_log_pos 37826 CRC32 0x28887576 	Anonymous_GTID	last_committed=82	sequence_number=83	rbr_only=yes	original_committed_timestamp=1745996712637994	immediate_commit_timestamp=1745996712637994	transaction_length=504
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745996712637994 (2025-04-30 16:05:12.637994 KST)
# immediate_commit_timestamp=1745996712637994 (2025-04-30 16:05:12.637994 KST)
/*!80001 SET @@session.original_commit_timestamp=1745996712637994*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 37826
#250430 16:05:12 server id 1  end_log_pos 37914 CRC32 0x3b5a94c8 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1745996712/*!*/;
BEGIN
/*!*/;
# at 37914
#250430 16:05:12 server id 1  end_log_pos 37974 CRC32 0x89c23268 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 37974
#250430 16:05:12 server id 1  end_log_pos 38220 CRC32 0x85f0aff9 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
qMsRaBMBAAAAPAAAAFaUAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeBo
MsKJ
qMsRaB8BAAAA9gAAAEyVAAAAAJEAAAAAAAEAAgAF//8ACQAAAAnsoITrsJTssKwGCYQDAAAACQAA
AAnsoITrsJTssKwGCYUDAAAAaAAAAAnsnbTsi6DssKwECYQDAAAAaAAAAAnsnbTsi6DssKwECYUD
AAAACwAAAAnsoITssKjqsIABCYQDAAAACwAAAAnsoITssKjqsIABCYUDAAAA7wAAAAnrp4jssKzs
lYQFCYQDAAAA7wAAAAnrp4jssKzslYQFCYUDAAAAcwAAAAnstZzsiJzsi6ACCYQDAAAAcwAAAAns
tZzsiJzsi6ACCYUDAAD5r/CF
'/*!*/;
# at 38220
#250430 16:05:12 server id 1  end_log_pos 38251 CRC32 0x15a91b71 	Xid = 4398
COMMIT/*!*/;
# at 38251
#250430 16:09:04 server id 1  end_log_pos 38330 CRC32 0x69e31d47 	Anonymous_GTID	last_committed=83	sequence_number=84	rbr_only=yes	original_committed_timestamp=1745996944262754	immediate_commit_timestamp=1745996944262754	transaction_length=798
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745996944262754 (2025-04-30 16:09:04.262754 KST)
# immediate_commit_timestamp=1745996944262754 (2025-04-30 16:09:04.262754 KST)
/*!80001 SET @@session.original_commit_timestamp=1745996944262754*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 38330
#250430 16:09:04 server id 1  end_log_pos 38418 CRC32 0x7bda0942 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1745996944/*!*/;
BEGIN
/*!*/;
# at 38418
#250430 16:09:04 server id 1  end_log_pos 38478 CRC32 0xeb173043 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 38478
#250430 16:09:04 server id 1  end_log_pos 39018 CRC32 0x68a39bbc 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
kMwRaBMBAAAAPAAAAE6WAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeBD
MBfr
kMwRaB8BAAAAHAIAAGqYAAAAAJEAAAAAAAEAAgAF//8ACQAAAAnsoITrsJTssKwGCYUDAAAACQAA
AAnsoITrsJTssKwGCYsDAAAACwAAAAnsoITssKjqsIABCYUDAAAACwAAAAnsoITssKjqsIABCYYD
AAAAEgAAAAnsoITqta3ssKwDCYUDAAAAEgAAAAnsoITqta3ssKwDCYgDAAAALwAAAAnsnbTsi6Dt
nawGCYUDAAAALwAAAAnsnbTsi6DtnawGCYsDAAAAUAAAAAnsp4DsooXrnbwECYUDAAAAUAAAAAns
p4DsooXrnbwECYkDAAAAYQAAAAnstZzsi6DshLgCCYUDAAAAYQAAAAnstZzsi6DshLgCCYcDAAAA
aAAAAAnsnbTsi6DssKwECYUDAAAAaAAAAAnsnbTsi6DssKwECYkDAAAAcwAAAAnstZzsiJzsi6AC
CYUDAAAAcwAAAAnstZzsiJzsi6ACCYcDAAAAgAAAAAnsnbTsnKTrsJQHCYUDAAAAgAAAAAnsnbTs
nKTrsJQHCYwDAAAAhQAAAAnsm5DqsrDrsJQFCYUDAAAAhQAAAAnsm5DqsrDrsJQFCYoDAAAAmAAA
AAnrsJXshLHsooUBCYUDAAAAmAAAAAnrsJXshLHsooUBCYYDAAAA7wAAAAnrp4jssKzslYQFCYUD
AAAA7wAAAAnrp4jssKzslYQFCYoDAAC8m6No
'/*!*/;
# at 39018
#250430 16:09:04 server id 1  end_log_pos 39049 CRC32 0x47973434 	Xid = 4422
COMMIT/*!*/;
# at 39049
#250430 16:10:16 server id 1  end_log_pos 39128 CRC32 0x7189e420 	Anonymous_GTID	last_committed=84	sequence_number=85	rbr_only=yes	original_committed_timestamp=1745997016585452	immediate_commit_timestamp=1745997016585452	transaction_length=588
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745997016585452 (2025-04-30 16:10:16.585452 KST)
# immediate_commit_timestamp=1745997016585452 (2025-04-30 16:10:16.585452 KST)
/*!80001 SET @@session.original_commit_timestamp=1745997016585452*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 39128
#250430 16:10:16 server id 1  end_log_pos 39216 CRC32 0xf00e08e9 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1745997016/*!*/;
BEGIN
/*!*/;
# at 39216
#250430 16:10:16 server id 1  end_log_pos 39276 CRC32 0xd68efb5b 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 39276
#250430 16:10:16 server id 1  end_log_pos 39606 CRC32 0x24fe8383 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
2MwRaBMBAAAAPAAAAGyZAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeBb
+47W
2MwRaB8BAAAASgEAALaaAAAAAJEAAAAAAAEAAgAF//8AEgAAAAnsoITqta3ssKwDCYgDAAAAEgAA
AAnsoITqta3ssKwDCYQDAAAALwAAAAnsnbTsi6DtnawGCYsDAAAALwAAAAnsnbTsi6DtnawGCYQD
AAAAUAAAAAnsp4DsooXrnbwECYkDAAAAUAAAAAnsp4DsooXrnbwECYQDAAAAYQAAAAnstZzsi6Ds
hLgCCYcDAAAAYQAAAAnstZzsi6DshLgCCYQDAAAAgAAAAAnsnbTsnKTrsJQHCYwDAAAAgAAAAAns
nbTsnKTrsJQHCYQDAAAAhQAAAAnsm5DqsrDrsJQFCYoDAAAAhQAAAAnsm5DqsrDrsJQFCYQDAAAA
mAAAAAnrsJXshLHsooUBCYYDAAAAmAAAAAnrsJXshLHsooUBCYQDAACDg/4k
'/*!*/;
# at 39606
#250430 16:10:16 server id 1  end_log_pos 39637 CRC32 0x3c6a9e62 	Xid = 4433
COMMIT/*!*/;
# at 39637
#250430 16:10:20 server id 1  end_log_pos 39716 CRC32 0xc7053e1e 	Anonymous_GTID	last_committed=85	sequence_number=86	rbr_only=yes	original_committed_timestamp=1745997020453697	immediate_commit_timestamp=1745997020453697	transaction_length=588
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745997020453697 (2025-04-30 16:10:20.453697 KST)
# immediate_commit_timestamp=1745997020453697 (2025-04-30 16:10:20.453697 KST)
/*!80001 SET @@session.original_commit_timestamp=1745997020453697*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 39716
#250430 16:10:20 server id 1  end_log_pos 39804 CRC32 0xc5fe2ecf 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1745997020/*!*/;
BEGIN
/*!*/;
# at 39804
#250430 16:10:20 server id 1  end_log_pos 39864 CRC32 0xc1953c6d 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 39864
#250430 16:10:20 server id 1  end_log_pos 40194 CRC32 0x4332e4e0 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
3MwRaBMBAAAAPAAAALibAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeBt
PJXB
3MwRaB8BAAAASgEAAAKdAAAAAJEAAAAAAAEAAgAF//8AEgAAAAnsoITqta3ssKwDCYQDAAAAEgAA
AAnsoITqta3ssKwDCYgDAAAALwAAAAnsnbTsi6DtnawGCYQDAAAALwAAAAnsnbTsi6DtnawGCYsD
AAAAUAAAAAnsp4DsooXrnbwECYQDAAAAUAAAAAnsp4DsooXrnbwECYkDAAAAYQAAAAnstZzsi6Ds
hLgCCYQDAAAAYQAAAAnstZzsi6DshLgCCYcDAAAAgAAAAAnsnbTsnKTrsJQHCYQDAAAAgAAAAAns
nbTsnKTrsJQHCYwDAAAAhQAAAAnsm5DqsrDrsJQFCYQDAAAAhQAAAAnsm5DqsrDrsJQFCYoDAAAA
mAAAAAnrsJXshLHsooUBCYQDAAAAmAAAAAnrsJXshLHsooUBCYYDAADg5DJD
'/*!*/;
# at 40194
#250430 16:10:20 server id 1  end_log_pos 40225 CRC32 0x12cd27be 	Xid = 4435
COMMIT/*!*/;
# at 40225
#250430 16:12:49 server id 1  end_log_pos 40304 CRC32 0x1fa0c5ae 	Anonymous_GTID	last_committed=86	sequence_number=87	rbr_only=yes	original_committed_timestamp=1745997169275177	immediate_commit_timestamp=1745997169275177	transaction_length=798
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745997169275177 (2025-04-30 16:12:49.275177 KST)
# immediate_commit_timestamp=1745997169275177 (2025-04-30 16:12:49.275177 KST)
/*!80001 SET @@session.original_commit_timestamp=1745997169275177*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 40304
#250430 16:12:49 server id 1  end_log_pos 40392 CRC32 0x94a5083b 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1745997169/*!*/;
BEGIN
/*!*/;
# at 40392
#250430 16:12:49 server id 1  end_log_pos 40452 CRC32 0xde0655eb 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 40452
#250430 16:12:49 server id 1  end_log_pos 40992 CRC32 0x001bf7a2 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
cc0RaBMBAAAAPAAAAASeAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeDr
VQbe
cc0RaB8BAAAAHAIAACCgAAAAAJEAAAAAAAEAAgAF//8ACQAAAAnsoITrsJTssKwGCYsDAAAACQAA
AAnsoITrsJTssKwGCYQDAAAACwAAAAnsoITssKjqsIABCYYDAAAACwAAAAnsoITssKjqsIABCYQD
AAAAEgAAAAnsoITqta3ssKwDCYgDAAAAEgAAAAnsoITqta3ssKwDCYQDAAAALwAAAAnsnbTsi6Dt
nawGCYsDAAAALwAAAAnsnbTsi6DtnawGCYQDAAAAUAAAAAnsp4DsooXrnbwECYkDAAAAUAAAAAns
p4DsooXrnbwECYQDAAAAYQAAAAnstZzsi6DshLgCCYcDAAAAYQAAAAnstZzsi6DshLgCCYQDAAAA
aAAAAAnsnbTsi6DssKwECYkDAAAAaAAAAAnsnbTsi6DssKwECYQDAAAAcwAAAAnstZzsiJzsi6AC
CYcDAAAAcwAAAAnstZzsiJzsi6ACCYQDAAAAgAAAAAnsnbTsnKTrsJQHCYwDAAAAgAAAAAnsnbTs
nKTrsJQHCYQDAAAAhQAAAAnsm5DqsrDrsJQFCYoDAAAAhQAAAAnsm5DqsrDrsJQFCYQDAAAAmAAA
AAnrsJXshLHsooUBCYYDAAAAmAAAAAnrsJXshLHsooUBCYQDAAAA7wAAAAnrp4jssKzslYQFCYoD
AAAA7wAAAAnrp4jssKzslYQFCYQDAACi9xsA
'/*!*/;
# at 40992
#250430 16:12:49 server id 1  end_log_pos 41023 CRC32 0xa68ea688 	Xid = 4495
COMMIT/*!*/;
# at 41023
#250430 16:13:03 server id 1  end_log_pos 41102 CRC32 0x55cd1abf 	Anonymous_GTID	last_committed=87	sequence_number=88	rbr_only=yes	original_committed_timestamp=1745997183362209	immediate_commit_timestamp=1745997183362209	transaction_length=588
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1745997183362209 (2025-04-30 16:13:03.362209 KST)
# immediate_commit_timestamp=1745997183362209 (2025-04-30 16:13:03.362209 KST)
/*!80001 SET @@session.original_commit_timestamp=1745997183362209*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 41102
#250430 16:13:03 server id 1  end_log_pos 41190 CRC32 0x9eb0ed45 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1745997183/*!*/;
BEGIN
/*!*/;
# at 41190
#250430 16:13:03 server id 1  end_log_pos 41250 CRC32 0x54057cda 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 41250
#250430 16:13:03 server id 1  end_log_pos 41580 CRC32 0x253f1520 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
f80RaBMBAAAAPAAAACKhAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeDa
fAVU
f80RaB8BAAAASgEAAGyiAAAAAJEAAAAAAAEAAgAF//8AEgAAAAnsoITqta3ssKwDCYQDAAAAEgAA
AAnsoITqta3ssKwDCYgDAAAALwAAAAnsnbTsi6DtnawGCYQDAAAALwAAAAnsnbTsi6DtnawGCYsD
AAAAUAAAAAnsp4DsooXrnbwECYQDAAAAUAAAAAnsp4DsooXrnbwECYkDAAAAYQAAAAnstZzsi6Ds
hLgCCYQDAAAAYQAAAAnstZzsi6DshLgCCYcDAAAAgAAAAAnsnbTsnKTrsJQHCYQDAAAAgAAAAAns
nbTsnKTrsJQHCYwDAAAAhQAAAAnsm5DqsrDrsJQFCYQDAAAAhQAAAAnsm5DqsrDrsJQFCYoDAAAA
mAAAAAnrsJXshLHsooUBCYQDAAAAmAAAAAnrsJXshLHsooUBCYYDAAAgFT8l
'/*!*/;
# at 41580
#250430 16:13:03 server id 1  end_log_pos 41611 CRC32 0xbd5b838c 	Xid = 4506
COMMIT/*!*/;
# at 41611
#250430 17:05:54 server id 1  end_log_pos 41690 CRC32 0xbcdd9324 	Anonymous_GTID	last_committed=88	sequence_number=89	rbr_only=yes	original_committed_timestamp=1746000354706137	immediate_commit_timestamp=1746000354706137	transaction_length=336
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746000354706137 (2025-04-30 17:05:54.706137 KST)
# immediate_commit_timestamp=1746000354706137 (2025-04-30 17:05:54.706137 KST)
/*!80001 SET @@session.original_commit_timestamp=1746000354706137*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 41690
#250430 17:05:54 server id 1  end_log_pos 41778 CRC32 0xa07c1136 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746000354/*!*/;
BEGIN
/*!*/;
# at 41778
#250430 17:05:54 server id 1  end_log_pos 41838 CRC32 0xcb2d26e3 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 41838
#250430 17:05:54 server id 1  end_log_pos 41916 CRC32 0xff738f1d 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
4tkRaBMBAAAAPAAAAG6jAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeDj
Ji3L
4tkRaB8BAAAATgAAALyjAAAAAJEAAAAAAAEAAgAF//8AJAAAAAnrp4jri6TrnbwDCYQDAAAAJAAA
AAnrp4jri6TrnbwDCYgDAAAdj3P/
'/*!*/;
# at 41916
#250430 17:05:54 server id 1  end_log_pos 41947 CRC32 0xa7085ace 	Xid = 4773
COMMIT/*!*/;
# at 41947
#250430 17:07:52 server id 1  end_log_pos 42026 CRC32 0xf4c0f710 	Anonymous_GTID	last_committed=89	sequence_number=90	rbr_only=yes	original_committed_timestamp=1746000472350946	immediate_commit_timestamp=1746000472350946	transaction_length=336
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746000472350946 (2025-04-30 17:07:52.350946 KST)
# immediate_commit_timestamp=1746000472350946 (2025-04-30 17:07:52.350946 KST)
/*!80001 SET @@session.original_commit_timestamp=1746000472350946*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 42026
#250430 17:07:52 server id 1  end_log_pos 42114 CRC32 0x87adaa6c 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746000472/*!*/;
BEGIN
/*!*/;
# at 42114
#250430 17:07:52 server id 1  end_log_pos 42174 CRC32 0x83f7164c 	Table_map: `testdb`.`emp` mapped to number 145
# has_generated_invisible_primary_key=0
# at 42174
#250430 17:07:52 server id 1  end_log_pos 42252 CRC32 0x3f0bb7a6 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
WNoRaBMBAAAAPAAAAL6kAAAAAJEAAAAAAAMABnRlc3RkYgADZW1wAAUDDwEBAwJ8AAABAeACAeBM
FveD
WNoRaB8BAAAATgAAAAylAAAAAJEAAAAAAAEAAgAF//8ArAAAAAnrsKnrgpjsnpACCYQDAAAArAAA
AAnrsKnrgpjsnpACCYkDAACmtws/
'/*!*/;
# at 42252
#250430 17:07:52 server id 1  end_log_pos 42283 CRC32 0x9eeab559 	Xid = 4832
COMMIT/*!*/;
# at 42283
#250430 17:15:37 server id 1  end_log_pos 42362 CRC32 0xa48fa6a3 	Anonymous_GTID	last_committed=90	sequence_number=91	rbr_only=no	original_committed_timestamp=1746000937195712	immediate_commit_timestamp=1746000937195712	transaction_length=293
# original_commit_timestamp=1746000937195712 (2025-04-30 17:15:37.195712 KST)
# immediate_commit_timestamp=1746000937195712 (2025-04-30 17:15:37.195712 KST)
/*!80001 SET @@session.original_commit_timestamp=1746000937195712*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 42362
#250430 17:15:37 server id 1  end_log_pos 42576 CRC32 0x6dff261a 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 4994
SET TIMESTAMP=1746000937/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
ALTER TABLE `schooldb`.`Enroll` 
ADD UNIQUE INDEX `uniq_Enroll_subject_student` (`subject` ASC, `student` ASC) VISIBLE
/*!*/;
# at 42576
#250430 17:17:57 server id 1  end_log_pos 42655 CRC32 0xb7d36f40 	Anonymous_GTID	last_committed=91	sequence_number=92	rbr_only=yes	original_committed_timestamp=1746001077157296	immediate_commit_timestamp=1746001077157296	transaction_length=339
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746001077157296 (2025-04-30 17:17:57.157296 KST)
# immediate_commit_timestamp=1746001077157296 (2025-04-30 17:17:57.157296 KST)
/*!80001 SET @@session.original_commit_timestamp=1746001077157296*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 42655
#250430 17:17:57 server id 1  end_log_pos 42736 CRC32 0x5abbc37d 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1746001077/*!*/;
BEGIN
/*!*/;
# at 42736
#250430 17:17:57 server id 1  end_log_pos 42794 CRC32 0xedbcc2ab 	Table_map: `schooldb`.`enroll` mapped to number 178
# has_generated_invisible_primary_key=0
# at 42794
#250430 17:17:57 server id 1  end_log_pos 42884 CRC32 0x1cf9b8e9 	Write_rows: table id 178 flags: STMT_END_F

BINLOG '
tdwRaBMBAAAAOgAAACqnAAAAALIAAAAAAAMACHNjaG9vbGRiAAZlbnJvbGwAAwMCAwAAAQHgq8K8
7Q==
tdwRaB4BAAAAWgAAAISnAAAAALIAAAAAAAEAAgAD/wALAAAAAQAGAAAAAAwAAAABAAEAAAAADQAA
AAEAAgAAAAAOAAAAAQADAAAAAA8AAAABAAgAAADpuPkc
'/*!*/;
# at 42884
#250430 17:17:57 server id 1  end_log_pos 42915 CRC32 0x87c0d13b 	Xid = 5045
COMMIT/*!*/;
# at 42915
#250430 17:18:08 server id 1  end_log_pos 42994 CRC32 0xf480c6b3 	Anonymous_GTID	last_committed=92	sequence_number=93	rbr_only=yes	original_committed_timestamp=1746001088181828	immediate_commit_timestamp=1746001088181828	transaction_length=339
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746001088181828 (2025-04-30 17:18:08.181828 KST)
# immediate_commit_timestamp=1746001088181828 (2025-04-30 17:18:08.181828 KST)
/*!80001 SET @@session.original_commit_timestamp=1746001088181828*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 42994
#250430 17:18:08 server id 1  end_log_pos 43075 CRC32 0x0d056542 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1746001088/*!*/;
BEGIN
/*!*/;
# at 43075
#250430 17:18:08 server id 1  end_log_pos 43133 CRC32 0x32f558d0 	Table_map: `schooldb`.`enroll` mapped to number 178
# has_generated_invisible_primary_key=0
# at 43133
#250430 17:18:08 server id 1  end_log_pos 43223 CRC32 0x726eaef0 	Write_rows: table id 178 flags: STMT_END_F

BINLOG '
wNwRaBMBAAAAOgAAAH2oAAAAALIAAAAAAAMACHNjaG9vbGRiAAZlbnJvbGwAAwMCAwAAAQHg0Fj1
Mg==
wNwRaB4BAAAAWgAAANeoAAAAALIAAAAAAAEAAgAD/wASAAAAAgAGAAAAABMAAAACAAEAAAAAFAAA
AAIABwAAAAAVAAAAAgADAAAAABYAAAACAAgAAADwrm5y
'/*!*/;
# at 43223
#250430 17:18:08 server id 1  end_log_pos 43254 CRC32 0x1b44925f 	Xid = 5049
COMMIT/*!*/;
# at 43254
#250430 17:18:13 server id 1  end_log_pos 43333 CRC32 0x88997142 	Anonymous_GTID	last_committed=93	sequence_number=94	rbr_only=yes	original_committed_timestamp=1746001093366281	immediate_commit_timestamp=1746001093366281	transaction_length=339
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746001093366281 (2025-04-30 17:18:13.366281 KST)
# immediate_commit_timestamp=1746001093366281 (2025-04-30 17:18:13.366281 KST)
/*!80001 SET @@session.original_commit_timestamp=1746001093366281*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 43333
#250430 17:18:13 server id 1  end_log_pos 43414 CRC32 0x516e2aa8 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1746001093/*!*/;
BEGIN
/*!*/;
# at 43414
#250430 17:18:13 server id 1  end_log_pos 43472 CRC32 0x46a93d61 	Table_map: `schooldb`.`enroll` mapped to number 178
# has_generated_invisible_primary_key=0
# at 43472
#250430 17:18:13 server id 1  end_log_pos 43562 CRC32 0x5ee71b7b 	Write_rows: table id 178 flags: STMT_END_F

BINLOG '
xdwRaBMBAAAAOgAAANCpAAAAALIAAAAAAAMACHNjaG9vbGRiAAZlbnJvbGwAAwMCAwAAAQHgYT2p
Rg==
xdwRaB4BAAAAWgAAACqqAAAAALIAAAAAAAEAAgAD/wAZAAAAAwAGAAAAABoAAAADAAEAAAAAGwAA
AAMABwAAAAAcAAAAAwADAAAAAB0AAAADAAgAAAB7G+de
'/*!*/;
# at 43562
#250430 17:18:13 server id 1  end_log_pos 43593 CRC32 0x48c14fcd 	Xid = 5051
COMMIT/*!*/;
# at 43593
#250430 17:25:25 server id 1  end_log_pos 43672 CRC32 0xb48aae80 	Anonymous_GTID	last_committed=94	sequence_number=95	rbr_only=no	original_committed_timestamp=1746001525191986	immediate_commit_timestamp=1746001525191986	transaction_length=255
# original_commit_timestamp=1746001525191986 (2025-04-30 17:25:25.191986 KST)
# immediate_commit_timestamp=1746001525191986 (2025-04-30 17:25:25.191986 KST)
/*!80001 SET @@session.original_commit_timestamp=1746001525191986*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 43672
#250430 17:25:25 server id 1  end_log_pos 43848 CRC32 0x8df6e940 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 5107
SET TIMESTAMP=1746001525/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Enroll add column iscaptain boolean default 0 comment '반장여부'
/*!*/;
# at 43848
#250430 17:37:58 server id 1  end_log_pos 43927 CRC32 0x5612d980 	Anonymous_GTID	last_committed=95	sequence_number=96	rbr_only=yes	original_committed_timestamp=1746002278040634	immediate_commit_timestamp=1746002278040634	transaction_length=367
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746002278040634 (2025-04-30 17:37:58.040634 KST)
# immediate_commit_timestamp=1746002278040634 (2025-04-30 17:37:58.040634 KST)
/*!80001 SET @@session.original_commit_timestamp=1746002278040634*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 43927
#250430 17:37:58 server id 1  end_log_pos 44017 CRC32 0x4bcca5dc 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1746002278/*!*/;
BEGIN
/*!*/;
# at 44017
#250430 17:37:58 server id 1  end_log_pos 44076 CRC32 0x96adc0f9 	Table_map: `schooldb`.`enroll` mapped to number 179
# has_generated_invisible_primary_key=0
# at 44076
#250430 17:37:58 server id 1  end_log_pos 44184 CRC32 0x07c8f36e 	Update_rows: table id 179 flags: STMT_END_F

BINLOG '
ZuERaBMBAAAAOwAAACysAAAAALMAAAAAAAMACHNjaG9vbGRiAAZlbnJvbGwABAMCAwEACAEB4PnA
rZY=
ZuERaB8BAAAAbAAAAJisAAAAALMAAAAAAAEAAgAE//8ADwAAAAEACAAAAAAADwAAAAEACAAAAAEA
EwAAAAIAAQAAAAAAEwAAAAIAAQAAAAEAGQAAAAMABgAAAAAAGQAAAAMABgAAAAFu88gH
'/*!*/;
# at 44184
#250430 17:37:58 server id 1  end_log_pos 44215 CRC32 0x0db10d9e 	Xid = 5271
COMMIT/*!*/;
# at 44215
#250501  8:59:28 server id 1  end_log_pos 44292 CRC32 0x5bbcab23 	Anonymous_GTID	last_committed=96	sequence_number=97	rbr_only=no	original_committed_timestamp=1746057568431381	immediate_commit_timestamp=1746057568431381	transaction_length=206
# original_commit_timestamp=1746057568431381 (2025-05-01 08:59:28.431381 KST)
# immediate_commit_timestamp=1746057568431381 (2025-05-01 08:59:28.431381 KST)
/*!80001 SET @@session.original_commit_timestamp=1746057568431381*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 44292
#250501  8:59:28 server id 1  end_log_pos 44421 CRC32 0x01eee704 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 5609
use `testdb`/*!*/;
SET TIMESTAMP=1746057568/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp add column outdt date
/*!*/;
# at 44421
#250501  9:00:06 server id 1  end_log_pos 44498 CRC32 0xfc832569 	Anonymous_GTID	last_committed=97	sequence_number=98	rbr_only=no	original_committed_timestamp=1746057606119497	immediate_commit_timestamp=1746057606119497	transaction_length=214
# original_commit_timestamp=1746057606119497 (2025-05-01 09:00:06.119497 KST)
# immediate_commit_timestamp=1746057606119497 (2025-05-01 09:00:06.119497 KST)
/*!80001 SET @@session.original_commit_timestamp=1746057606119497*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 44498
#250501  9:00:06 server id 1  end_log_pos 44635 CRC32 0xa6561514 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 5633
SET TIMESTAMP=1746057606/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp add column outdt2 varchar(10)
/*!*/;
# at 44635
#250501  9:35:52 server id 1  end_log_pos 44714 CRC32 0x493797a8 	Anonymous_GTID	last_committed=98	sequence_number=99	rbr_only=yes	original_committed_timestamp=1746059752723645	immediate_commit_timestamp=1746059752723645	transaction_length=340
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746059752723645 (2025-05-01 09:35:52.723645 KST)
# immediate_commit_timestamp=1746059752723645 (2025-05-01 09:35:52.723645 KST)
/*!80001 SET @@session.original_commit_timestamp=1746059752723645*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 44714
#250501  9:35:52 server id 1  end_log_pos 44802 CRC32 0xed07c9a4 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746059752/*!*/;
BEGIN
/*!*/;
# at 44802
#250501  9:35:52 server id 1  end_log_pos 44866 CRC32 0x6af7a991 	Table_map: `testdb`.`emp` mapped to number 181
# has_generated_invisible_primary_key=0
# at 44866
#250501  9:35:52 server id 1  end_log_pos 44944 CRC32 0xfaa61dbc 	Update_rows: table id 181 flags: STMT_END_F

BINLOG '
6MESaBMBAAAAQAAAAEKvAAAAALUAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgkan3ag==
6MESaB8BAAAATgAAAJCvAAAAALUAAAAAAAEAAgAH//9gzwAAAAnquYDtlZjshLgBCcgAAABgzwAA
AAnquYDrsJTsiJwBCcgAAAC8Hab6
'/*!*/;
# at 44944
#250501  9:35:52 server id 1  end_log_pos 44975 CRC32 0xdd7492b4 	Xid = 5728
COMMIT/*!*/;
# at 44975
#250501  9:45:37 server id 1  end_log_pos 45054 CRC32 0x19a754d4 	Anonymous_GTID	last_committed=99	sequence_number=100	rbr_only=yes	original_committed_timestamp=1746060337532270	immediate_commit_timestamp=1746060337532270	transaction_length=528
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746060337532270 (2025-05-01 09:45:37.532270 KST)
# immediate_commit_timestamp=1746060337532270 (2025-05-01 09:45:37.532270 KST)
/*!80001 SET @@session.original_commit_timestamp=1746060337532270*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 45054
#250501  9:45:37 server id 1  end_log_pos 45142 CRC32 0xa26579bf 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746060337/*!*/;
BEGIN
/*!*/;
# at 45142
#250501  9:45:37 server id 1  end_log_pos 45202 CRC32 0xc3d195c4 	Table_map: `testdb`.`dept` mapped to number 182
# has_generated_invisible_primary_key=0
# at 45202
#250501  9:45:37 server id 1  end_log_pos 45472 CRC32 0x8e7ad7ec 	Update_rows: table id 182 flags: STMT_END_F

BINLOG '
McQSaBMBAAAAPAAAAJKwAAAAALYAAAAAAAMABnRlc3RkYgAEZGVwdAAEAQEPAwJ8AAgBAeACAeDE
ldHD
McQSaB8BAAAADgEAAKCxAAAAALYAAAAAAAEAAgAE//8IAQAJ7JiB7JeF67aAAAEACeyYgeyXheu2
gBoAAAAIAgAJ6rCc67Cc67aAAAIACeqwnOuwnOu2gB4AAAAIAwEK7JiB7JeFMe2MgAADAQrsmIHs
l4Ux7YyATgAAAAgEAQrsmIHsl4Uy7YyAAAQBCuyYgeyXhTLtjIAzAAAACAUBCuyYgeyXhTPtjIAA
BQEK7JiB7JeFM+2MgKkAAAAIBgIJ7ISc67KE7YyAAAYCCeyEnOuyhO2MgG0AAAAIBwIS7YG06528
7J207Ja47Yq47YyAAAcCEu2BtOudvOydtOyWuO2KuO2MgJYAAADs13qO
'/*!*/;
# at 45472
#250501  9:45:37 server id 1  end_log_pos 45503 CRC32 0x7ed3d8e4 	Xid = 5811
COMMIT/*!*/;
# at 45503
#250501  9:55:33 server id 1  end_log_pos 45580 CRC32 0x1c4a34f6 	Anonymous_GTID	last_committed=100	sequence_number=101	rbr_only=no	original_committed_timestamp=1746060933353284	immediate_commit_timestamp=1746060933353284	transaction_length=202
# original_commit_timestamp=1746060933353284 (2025-05-01 09:55:33.353284 KST)
# immediate_commit_timestamp=1746060933353284 (2025-05-01 09:55:33.353284 KST)
/*!80001 SET @@session.original_commit_timestamp=1746060933353284*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 45580
#250501  9:55:33 server id 1  end_log_pos 45705 CRC32 0x4f7115b0 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 5992
SET TIMESTAMP=1746060933/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp drop column outdt
/*!*/;
# at 45705
#250501  9:55:40 server id 1  end_log_pos 45782 CRC32 0x43f9e9d0 	Anonymous_GTID	last_committed=101	sequence_number=102	rbr_only=no	original_committed_timestamp=1746060940713223	immediate_commit_timestamp=1746060940713223	transaction_length=203
# original_commit_timestamp=1746060940713223 (2025-05-01 09:55:40.713223 KST)
# immediate_commit_timestamp=1746060940713223 (2025-05-01 09:55:40.713223 KST)
/*!80001 SET @@session.original_commit_timestamp=1746060940713223*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 45782
#250501  9:55:40 server id 1  end_log_pos 45908 CRC32 0xaf1b5490 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 6003
SET TIMESTAMP=1746060940/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp drop column outdt2
/*!*/;
# at 45908
#250501  9:55:46 server id 1  end_log_pos 45985 CRC32 0x58742a9e 	Anonymous_GTID	last_committed=102	sequence_number=103	rbr_only=no	original_committed_timestamp=1746060946159253	immediate_commit_timestamp=1746060946159253	transaction_length=206
# original_commit_timestamp=1746060946159253 (2025-05-01 09:55:46.159253 KST)
# immediate_commit_timestamp=1746060946159253 (2025-05-01 09:55:46.159253 KST)
/*!80001 SET @@session.original_commit_timestamp=1746060946159253*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 45985
#250501  9:55:46 server id 1  end_log_pos 46114 CRC32 0x235bf910 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 6014
SET TIMESTAMP=1746060946/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp add column outdt date
/*!*/;
# at 46114
#250501  9:55:47 server id 1  end_log_pos 46191 CRC32 0x35be4e66 	Anonymous_GTID	last_committed=103	sequence_number=104	rbr_only=no	original_committed_timestamp=1746060947249905	immediate_commit_timestamp=1746060947249905	transaction_length=214
# original_commit_timestamp=1746060947249905 (2025-05-01 09:55:47.249905 KST)
# immediate_commit_timestamp=1746060947249905 (2025-05-01 09:55:47.249905 KST)
/*!80001 SET @@session.original_commit_timestamp=1746060947249905*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 46191
#250501  9:55:47 server id 1  end_log_pos 46328 CRC32 0xec77ee70 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 6016
SET TIMESTAMP=1746060947/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp add column outdt2 varchar(10)
/*!*/;
# at 46328
#250501  9:56:58 server id 1  end_log_pos 46407 CRC32 0xa55f5acc 	Anonymous_GTID	last_committed=104	sequence_number=105	rbr_only=yes	original_committed_timestamp=1746061018142191	immediate_commit_timestamp=1746061018142191	transaction_length=418
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746061018142191 (2025-05-01 09:56:58.142191 KST)
# immediate_commit_timestamp=1746061018142191 (2025-05-01 09:56:58.142191 KST)
/*!80001 SET @@session.original_commit_timestamp=1746061018142191*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 46407
#250501  9:56:58 server id 1  end_log_pos 46503 CRC32 0xa64b28fd 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746061018/*!*/;
BEGIN
/*!*/;
# at 46503
#250501  9:56:58 server id 1  end_log_pos 46567 CRC32 0xa824aac3 	Table_map: `testdb`.`emp` mapped to number 188
# has_generated_invisible_primary_key=0
# at 46567
#250501  9:56:58 server id 1  end_log_pos 46715 CRC32 0x139195fe 	Update_rows: table id 188 flags: STMT_END_F

BINLOG '
2sYSaBMBAAAAQAAAAOe1AAAAALwAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgw6okqA==
2sYSaB8BAAAAlAAAAHu2AAAAALwAAAAAAAEAAgAH//9gAwAAAAnsm5DsgqzslYQECWQAAAAAAwAA
AAnsm5DsgqzslYQECWQAAACh0g8KMjAyNS0wNS0wMWAFAAAACeyngOyEuOq1rQcJkAEAAAAFAAAA
CeyngOyEuOq1rQcJkAEAAKHSDwoyMDI1LTA1LTAx/pWREw==
'/*!*/;
# at 46715
#250501  9:56:58 server id 1  end_log_pos 46746 CRC32 0xc51d8356 	Xid = 6022
COMMIT/*!*/;
# at 46746
#250501  9:58:23 server id 1  end_log_pos 46825 CRC32 0x70b212ab 	Anonymous_GTID	last_committed=105	sequence_number=106	rbr_only=yes	original_committed_timestamp=1746061103517173	immediate_commit_timestamp=1746061103517173	transaction_length=438
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746061103517173 (2025-05-01 09:58:23.517173 KST)
# immediate_commit_timestamp=1746061103517173 (2025-05-01 09:58:23.517173 KST)
/*!80001 SET @@session.original_commit_timestamp=1746061103517173*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 46825
#250501  9:58:23 server id 1  end_log_pos 46913 CRC32 0x42f4bed3 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746061103/*!*/;
BEGIN
/*!*/;
# at 46913
#250501  9:58:23 server id 1  end_log_pos 46977 CRC32 0x9bcb5a3d 	Table_map: `testdb`.`emp` mapped to number 188
# has_generated_invisible_primary_key=0
# at 46977
#250501  9:58:23 server id 1  end_log_pos 47153 CRC32 0xc62fcd32 	Update_rows: table id 188 flags: STMT_END_F

BINLOG '
L8cSaBMBAAAAQAAAAIG3AAAAALwAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgPVrLmw==
L8cSaB8BAAAAsAAAADG4AAAAALwAAAAAAAEAAgAH//8AAwAAAAnsm5DsgqzslYQECWQAAACh0g8K
MjAyNS0wNS0wMQADAAAACeybkOyCrOyVhAQJZAAAAJnQDwoyMDI0LTA0LTI1AAUAAAAJ7KeA7IS4
6rWtBwmQAQAAodIPCjIwMjUtMDUtMDEABQAAAAnsp4DshLjqta0HCZABAACZ0A8KMjAyNC0wNC0y
NTLNL8Y=
'/*!*/;
# at 47153
#250501  9:58:23 server id 1  end_log_pos 47184 CRC32 0x32cab918 	Xid = 6042
COMMIT/*!*/;
# at 47184
#250501  9:58:43 server id 1  end_log_pos 47263 CRC32 0xae66027e 	Anonymous_GTID	last_committed=106	sequence_number=107	rbr_only=yes	original_committed_timestamp=1746061123948789	immediate_commit_timestamp=1746061123948789	transaction_length=446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746061123948789 (2025-05-01 09:58:43.948789 KST)
# immediate_commit_timestamp=1746061123948789 (2025-05-01 09:58:43.948789 KST)
/*!80001 SET @@session.original_commit_timestamp=1746061123948789*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 47263
#250501  9:58:43 server id 1  end_log_pos 47359 CRC32 0x6e6a4799 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746061123/*!*/;
BEGIN
/*!*/;
# at 47359
#250501  9:58:43 server id 1  end_log_pos 47423 CRC32 0xcf93b776 	Table_map: `testdb`.`emp` mapped to number 188
# has_generated_invisible_primary_key=0
# at 47423
#250501  9:58:43 server id 1  end_log_pos 47599 CRC32 0x5a1b90e7 	Update_rows: table id 188 flags: STMT_END_F

BINLOG '
Q8cSaBMBAAAAQAAAAD+5AAAAALwAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgdreTzw==
Q8cSaB8BAAAAsAAAAO+5AAAAALwAAAAAAAEAAgAH//8AAwAAAAnsm5DsgqzslYQECWQAAACZ0A8K
MjAyNC0wNC0yNQADAAAACeybkOyCrOyVhAQJZAAAAJrQDwoyMDI0LTA0LTI1AAUAAAAJ7KeA7IS4
6rWtBwmQAQAAmdAPCjIwMjQtMDQtMjUABQAAAAnsp4DshLjqta0HCZABAACa0A8KMjAyNC0wNC0y
NeeQG1o=
'/*!*/;
# at 47599
#250501  9:58:43 server id 1  end_log_pos 47630 CRC32 0x1d479492 	Xid = 6055
COMMIT/*!*/;
# at 47630
#250501 10:04:22 server id 1  end_log_pos 47709 CRC32 0x89d9d204 	Anonymous_GTID	last_committed=107	sequence_number=108	rbr_only=yes	original_committed_timestamp=1746061462529274	immediate_commit_timestamp=1746061462529274	transaction_length=544
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746061462529274 (2025-05-01 10:04:22.529274 KST)
# immediate_commit_timestamp=1746061462529274 (2025-05-01 10:04:22.529274 KST)
/*!80001 SET @@session.original_commit_timestamp=1746061462529274*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 47709
#250501 10:04:22 server id 1  end_log_pos 47805 CRC32 0xaf3d8c4b 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746061462/*!*/;
BEGIN
/*!*/;
# at 47805
#250501 10:04:22 server id 1  end_log_pos 47869 CRC32 0x0b2b7216 	Table_map: `testdb`.`emp` mapped to number 188
# has_generated_invisible_primary_key=0
# at 47869
#250501 10:04:22 server id 1  end_log_pos 47929 CRC32 0x3199a81c 	Table_map: `testdb`.`dept` mapped to number 189
# has_generated_invisible_primary_key=0
# at 47929
#250501 10:04:22 server id 1  end_log_pos 48077 CRC32 0xdd5fa09b 	Update_rows: table id 188
# at 48077
#250501 10:04:22 server id 1  end_log_pos 48143 CRC32 0x3cbf39f1 	Update_rows: table id 189 flags: STMT_END_F

BINLOG '
lsgSaBMBAAAAQAAAAP26AAAAALwAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgFnIrCw==
lsgSaBMBAAAAPAAAADm7AAAAAL0AAAAAAAMABnRlc3RkYgAEZGVwdAAEAQEPAwJ8AAgBAeACAeAc
qJkx
lsgSaB8BAAAAlAAAAM27AAAAALwAAAAAAAAAAgAH//9gDgAAAAnrp4jrp4jsiJwBCbwCAAAADgAA
AAnrp4jrp4jsiJwBCbwCAACh0g8KMjAyNS0wNS0wMWAaAAAACeq5gOuCmOuCmAEJIAMAAAAaAAAA
Ceq5gOuCmOuCmAEJIAMAAKHSDwoyMDI1LTA1LTAxm6Bf3Q==
lsgSaB8BAAAAQgAAAA+8AAAAAL0AAAAAAAEAAgAE//8AAQAJ7JiB7JeF67aAGgAAAAgBAAnsmIHs
l4XrtoDxOb88
'/*!*/;
# at 48143
#250501 10:04:22 server id 1  end_log_pos 48174 CRC32 0xdbeef048 	Xid = 6090
COMMIT/*!*/;
# at 48174
#250501 10:04:52 server id 1  end_log_pos 48253 CRC32 0x8247cf3e 	Anonymous_GTID	last_committed=108	sequence_number=109	rbr_only=yes	original_committed_timestamp=1746061492577437	immediate_commit_timestamp=1746061492577437	transaction_length=324
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746061492577437 (2025-05-01 10:04:52.577437 KST)
# immediate_commit_timestamp=1746061492577437 (2025-05-01 10:04:52.577437 KST)
/*!80001 SET @@session.original_commit_timestamp=1746061492577437*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 48253
#250501 10:04:52 server id 1  end_log_pos 48341 CRC32 0x0e5c9660 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746061492/*!*/;
BEGIN
/*!*/;
# at 48341
#250501 10:04:52 server id 1  end_log_pos 48401 CRC32 0xa4cba000 	Table_map: `testdb`.`dept` mapped to number 189
# has_generated_invisible_primary_key=0
# at 48401
#250501 10:04:52 server id 1  end_log_pos 48467 CRC32 0x40135db3 	Update_rows: table id 189 flags: STMT_END_F

BINLOG '
tMgSaBMBAAAAPAAAABG9AAAAAL0AAAAAAAMABnRlc3RkYgAEZGVwdAAEAQEPAwJ8AAgBAeACAeAA
oMuk
tMgSaB8BAAAAQgAAAFO9AAAAAL0AAAAAAAEAAgAE//8IAQAJ7JiB7JeF67aAAAEACeyYgeyXheu2
gBoAAACzXRNA
'/*!*/;
# at 48467
#250501 10:04:52 server id 1  end_log_pos 48498 CRC32 0x1d8e76e0 	Xid = 6121
COMMIT/*!*/;
# at 48498
#250501 10:05:50 server id 1  end_log_pos 48575 CRC32 0x08549768 	Anonymous_GTID	last_committed=109	sequence_number=110	rbr_only=no	original_committed_timestamp=1746061550130524	immediate_commit_timestamp=1746061550130524	transaction_length=203
# original_commit_timestamp=1746061550130524 (2025-05-01 10:05:50.130524 KST)
# immediate_commit_timestamp=1746061550130524 (2025-05-01 10:05:50.130524 KST)
/*!80001 SET @@session.original_commit_timestamp=1746061550130524*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 48575
#250501 10:05:50 server id 1  end_log_pos 48701 CRC32 0x34878876 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 6136
SET TIMESTAMP=1746061550/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp drop column outdt2
/*!*/;
# at 48701
#250501 10:05:51 server id 1  end_log_pos 48778 CRC32 0x294b4869 	Anonymous_GTID	last_committed=110	sequence_number=111	rbr_only=no	original_committed_timestamp=1746061551642066	immediate_commit_timestamp=1746061551642066	transaction_length=202
# original_commit_timestamp=1746061551642066 (2025-05-01 10:05:51.642066 KST)
# immediate_commit_timestamp=1746061551642066 (2025-05-01 10:05:51.642066 KST)
/*!80001 SET @@session.original_commit_timestamp=1746061551642066*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 48778
#250501 10:05:51 server id 1  end_log_pos 48903 CRC32 0x9cc6f264 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 6138
SET TIMESTAMP=1746061551/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp drop column outdt
/*!*/;
# at 48903
#250501 10:14:01 server id 1  end_log_pos 48980 CRC32 0x3353f760 	Anonymous_GTID	last_committed=111	sequence_number=112	rbr_only=no	original_committed_timestamp=1746062041758363	immediate_commit_timestamp=1746062041758363	transaction_length=226
# original_commit_timestamp=1746062041758363 (2025-05-01 10:14:01.758363 KST)
# immediate_commit_timestamp=1746062041758363 (2025-05-01 10:14:01.758363 KST)
/*!80001 SET @@session.original_commit_timestamp=1746062041758363*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 48980
#250501 10:14:01 server id 1  end_log_pos 49129 CRC32 0xe2ff451f 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 6144
SET TIMESTAMP=1746062041/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp add column outdt date comment '퇴사일'
/*!*/;
# at 49129
#250501 10:19:35 server id 1  end_log_pos 49206 CRC32 0xeee394a6 	Anonymous_GTID	last_committed=112	sequence_number=113	rbr_only=no	original_committed_timestamp=1746062375244275	immediate_commit_timestamp=1746062375244275	transaction_length=235
# original_commit_timestamp=1746062375244275 (2025-05-01 10:19:35.244275 KST)
# immediate_commit_timestamp=1746062375244275 (2025-05-01 10:19:35.244275 KST)
/*!80001 SET @@session.original_commit_timestamp=1746062375244275*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 49206
#250501 10:19:35 server id 1  end_log_pos 49364 CRC32 0xdafcc11c 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 6197
SET TIMESTAMP=1746062375/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Emp add column outdt2 varchar(10) comment '퇴사일2'
/*!*/;
# at 49364
#250501 10:19:40 server id 1  end_log_pos 49443 CRC32 0x02d4191f 	Anonymous_GTID	last_committed=113	sequence_number=114	rbr_only=yes	original_committed_timestamp=1746062380874603	immediate_commit_timestamp=1746062380874603	transaction_length=418
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746062380874603 (2025-05-01 10:19:40.874603 KST)
# immediate_commit_timestamp=1746062380874603 (2025-05-01 10:19:40.874603 KST)
/*!80001 SET @@session.original_commit_timestamp=1746062380874603*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 49443
#250501 10:19:40 server id 1  end_log_pos 49539 CRC32 0x345ea3b1 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746062380/*!*/;
BEGIN
/*!*/;
# at 49539
#250501 10:19:40 server id 1  end_log_pos 49603 CRC32 0xfa76384f 	Table_map: `testdb`.`emp` mapped to number 194
# has_generated_invisible_primary_key=0
# at 49603
#250501 10:19:40 server id 1  end_log_pos 49751 CRC32 0x9bde031f 	Update_rows: table id 194 flags: STMT_END_F

BINLOG '
LMwSaBMBAAAAQAAAAMPBAAAAAMIAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgTzh2+g==
LMwSaB8BAAAAlAAAAFfCAAAAAMIAAAAAAAEAAgAH//9gAwAAAAnsm5DsgqzslYQECWQAAAAAAwAA
AAnsm5DsgqzslYQECWQAAACZ0g8KMjAyNS0wNC0yNWAFAAAACeyngOyEuOq1rQcJkAEAAAAFAAAA
CeyngOyEuOq1rQcJkAEAAJnSDwoyMDI1LTA0LTI1HwPemw==
'/*!*/;
# at 49751
#250501 10:19:40 server id 1  end_log_pos 49782 CRC32 0xf2b8676e 	Xid = 6208
COMMIT/*!*/;
# at 49782
#250501 10:20:16 server id 1  end_log_pos 49861 CRC32 0x6a3606c9 	Anonymous_GTID	last_committed=114	sequence_number=115	rbr_only=yes	original_committed_timestamp=1746062416078294	immediate_commit_timestamp=1746062416078294	transaction_length=438
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746062416078294 (2025-05-01 10:20:16.078294 KST)
# immediate_commit_timestamp=1746062416078294 (2025-05-01 10:20:16.078294 KST)
/*!80001 SET @@session.original_commit_timestamp=1746062416078294*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 49861
#250501 10:20:16 server id 1  end_log_pos 49949 CRC32 0x5cae5f1c 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746062416/*!*/;
BEGIN
/*!*/;
# at 49949
#250501 10:20:16 server id 1  end_log_pos 50013 CRC32 0x9bbfef02 	Table_map: `testdb`.`emp` mapped to number 194
# has_generated_invisible_primary_key=0
# at 50013
#250501 10:20:16 server id 1  end_log_pos 50189 CRC32 0x171fc826 	Update_rows: table id 194 flags: STMT_END_F

BINLOG '
UMwSaBMBAAAAQAAAAF3DAAAAAMIAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgAu+/mw==
UMwSaB8BAAAAsAAAAA3EAAAAAMIAAAAAAAEAAgAH//8AAwAAAAnsm5DsgqzslYQECWQAAACZ0g8K
MjAyNS0wNC0yNQADAAAACeybkOyCrOyVhAQJZAAAAJrSDwoyMDI1LTA0LTI1AAUAAAAJ7KeA7IS4
6rWtBwmQAQAAmdIPCjIwMjUtMDQtMjUABQAAAAnsp4DshLjqta0HCZABAACa0g8KMjAyNS0wNC0y
NSbIHxc=
'/*!*/;
# at 50189
#250501 10:20:16 server id 1  end_log_pos 50220 CRC32 0x9dbc503c 	Xid = 6223
COMMIT/*!*/;
# at 50220
#250501 10:24:59 server id 1  end_log_pos 50299 CRC32 0xc6705206 	Anonymous_GTID	last_committed=115	sequence_number=116	rbr_only=yes	original_committed_timestamp=1746062699518632	immediate_commit_timestamp=1746062699518632	transaction_length=544
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746062699518632 (2025-05-01 10:24:59.518632 KST)
# immediate_commit_timestamp=1746062699518632 (2025-05-01 10:24:59.518632 KST)
/*!80001 SET @@session.original_commit_timestamp=1746062699518632*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 50299
#250501 10:24:59 server id 1  end_log_pos 50395 CRC32 0x6b19c8d0 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746062699/*!*/;
BEGIN
/*!*/;
# at 50395
#250501 10:24:59 server id 1  end_log_pos 50459 CRC32 0x488ea233 	Table_map: `testdb`.`emp` mapped to number 194
# has_generated_invisible_primary_key=0
# at 50459
#250501 10:24:59 server id 1  end_log_pos 50519 CRC32 0xc8738e81 	Table_map: `testdb`.`dept` mapped to number 195
# has_generated_invisible_primary_key=0
# at 50519
#250501 10:24:59 server id 1  end_log_pos 50667 CRC32 0x283565bc 	Update_rows: table id 194
# at 50667
#250501 10:24:59 server id 1  end_log_pos 50733 CRC32 0xd8ae1c1d 	Update_rows: table id 195 flags: STMT_END_F

BINLOG '
a80SaBMBAAAAQAAAABvFAAAAAMIAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgM6KOSA==
a80SaBMBAAAAPAAAAFfFAAAAAMMAAAAAAAMABnRlc3RkYgAEZGVwdAAEAQEPAwJ8AAgBAeACAeCB
jnPI
a80SaB8BAAAAlAAAAOvFAAAAAMIAAAAAAAAAAgAH//9gDgAAAAnrp4jrp4jsiJwBCbwCAAAADgAA
AAnrp4jrp4jsiJwBCbwCAACh0g8KMjAyNS0wNS0wMWAaAAAACeq5gOuCmOuCmAEJIAMAAAAaAAAA
Ceq5gOuCmOuCmAEJIAMAAKHSDwoyMDI1LTA1LTAxvGU1KA==
a80SaB8BAAAAQgAAAC3GAAAAAMMAAAAAAAEAAgAE//8AAQAJ7JiB7JeF67aAGgAAAAgBAAnsmIHs
l4XrtoAdHK7Y
'/*!*/;
# at 50733
#250501 10:24:59 server id 1  end_log_pos 50764 CRC32 0x11a685ca 	Xid = 6261
COMMIT/*!*/;
# at 50764
#250501 10:27:03 server id 1  end_log_pos 50843 CRC32 0xcc94e785 	Anonymous_GTID	last_committed=116	sequence_number=117	rbr_only=yes	original_committed_timestamp=1746062823255690	immediate_commit_timestamp=1746062823255690	transaction_length=324
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746062823255690 (2025-05-01 10:27:03.255690 KST)
# immediate_commit_timestamp=1746062823255690 (2025-05-01 10:27:03.255690 KST)
/*!80001 SET @@session.original_commit_timestamp=1746062823255690*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 50843
#250501 10:27:03 server id 1  end_log_pos 50931 CRC32 0x0408ac73 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746062823/*!*/;
BEGIN
/*!*/;
# at 50931
#250501 10:27:03 server id 1  end_log_pos 50991 CRC32 0x6f2c5e6b 	Table_map: `testdb`.`dept` mapped to number 195
# has_generated_invisible_primary_key=0
# at 50991
#250501 10:27:03 server id 1  end_log_pos 51057 CRC32 0x6add4bda 	Update_rows: table id 195 flags: STMT_END_F

BINLOG '
580SaBMBAAAAPAAAAC/HAAAAAMMAAAAAAAMABnRlc3RkYgAEZGVwdAAEAQEPAwJ8AAgBAeACAeBr
Xixv
580SaB8BAAAAQgAAAHHHAAAAAMMAAAAAAAEAAgAE//8IAQAJ7JiB7JeF67aAAAEACeyYgeyXheu2
gBoAAADaS91q
'/*!*/;
# at 51057
#250501 10:27:03 server id 1  end_log_pos 51088 CRC32 0x886fff63 	Xid = 6366
COMMIT/*!*/;
# at 51088
#250501 10:27:47 server id 1  end_log_pos 51167 CRC32 0x65c23da1 	Anonymous_GTID	last_committed=117	sequence_number=118	rbr_only=yes	original_committed_timestamp=1746062867549336	immediate_commit_timestamp=1746062867549336	transaction_length=410
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746062867549336 (2025-05-01 10:27:47.549336 KST)
# immediate_commit_timestamp=1746062867549336 (2025-05-01 10:27:47.549336 KST)
/*!80001 SET @@session.original_commit_timestamp=1746062867549336*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 51167
#250501 10:27:47 server id 1  end_log_pos 51255 CRC32 0x519d1549 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746062867/*!*/;
BEGIN
/*!*/;
# at 51255
#250501 10:27:47 server id 1  end_log_pos 51319 CRC32 0x04ca5e39 	Table_map: `testdb`.`emp` mapped to number 194
# has_generated_invisible_primary_key=0
# at 51319
#250501 10:27:47 server id 1  end_log_pos 51467 CRC32 0xea2463a4 	Update_rows: table id 194 flags: STMT_END_F

BINLOG '
E84SaBMBAAAAQAAAAHfIAAAAAMIAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgOV7KBA==
E84SaB8BAAAAlAAAAAvJAAAAAMIAAAAAAAEAAgAH//8ADgAAAAnrp4jrp4jsiJwBCbwCAACh0g8K
MjAyNS0wNS0wMWAOAAAACeuniOuniOyInAEJvAIAAAAaAAAACeq5gOuCmOuCmAEJIAMAAKHSDwoy
MDI1LTA1LTAxYBoAAAAJ6rmA64KY64KYAQkgAwAApGMk6g==
'/*!*/;
# at 51467
#250501 10:27:47 server id 1  end_log_pos 51498 CRC32 0x4a0d5846 	Xid = 6377
COMMIT/*!*/;
# at 51498
#250501 10:28:41 server id 1  end_log_pos 51577 CRC32 0x73743e97 	Anonymous_GTID	last_committed=118	sequence_number=119	rbr_only=yes	original_committed_timestamp=1746062921966703	immediate_commit_timestamp=1746062921966703	transaction_length=544
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746062921966703 (2025-05-01 10:28:41.966703 KST)
# immediate_commit_timestamp=1746062921966703 (2025-05-01 10:28:41.966703 KST)
/*!80001 SET @@session.original_commit_timestamp=1746062921966703*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 51577
#250501 10:28:13 server id 1  end_log_pos 51673 CRC32 0xe79265e2 	Query	thread_id=32	exec_time=0	error_code=0
SET TIMESTAMP=1746062893/*!*/;
BEGIN
/*!*/;
# at 51673
#250501 10:28:13 server id 1  end_log_pos 51737 CRC32 0x72fec345 	Table_map: `testdb`.`emp` mapped to number 194
# has_generated_invisible_primary_key=0
# at 51737
#250501 10:28:13 server id 1  end_log_pos 51797 CRC32 0xbd7b94ce 	Table_map: `testdb`.`dept` mapped to number 195
# has_generated_invisible_primary_key=0
# at 51797
#250501 10:28:13 server id 1  end_log_pos 51945 CRC32 0x2922ac05 	Update_rows: table id 194
# at 51945
#250501 10:28:13 server id 1  end_log_pos 52011 CRC32 0xb0eec6e4 	Update_rows: table id 195 flags: STMT_END_F

BINLOG '
Lc4SaBMBAAAAQAAAABnKAAAAAMIAAAAAAAMABnRlc3RkYgADZW1wAAcDDwEBAwoPBHwAKABgAQHg
AgHgRcP+cg==
Lc4SaBMBAAAAPAAAAFXKAAAAAMMAAAAAAAMABnRlc3RkYgAEZGVwdAAEAQEPAwJ8AAgBAeACAeDO
lHu9
Lc4SaB8BAAAAlAAAAOnKAAAAAMIAAAAAAAAAAgAH//9gDgAAAAnrp4jrp4jsiJwBCbwCAAAADgAA
AAnrp4jrp4jsiJwBCbwCAACh0g8KMjAyNS0wNS0wMWAaAAAACeq5gOuCmOuCmAEJIAMAAAAaAAAA
Ceq5gOuCmOuCmAEJIAMAAKHSDwoyMDI1LTA1LTAxBawiKQ==
Lc4SaB8BAAAAQgAAACvLAAAAAMMAAAAAAAEAAgAE//8AAQAJ7JiB7JeF67aAGgAAAAgBAAnsmIHs
l4XrtoDkxu6w
'/*!*/;
# at 52011
#250501 10:28:41 server id 1  end_log_pos 52042 CRC32 0x83ae8beb 	Xid = 6383
COMMIT/*!*/;
# at 52042
#250501 11:34:46 server id 1  end_log_pos 52121 CRC32 0x7c5b0767 	Anonymous_GTID	last_committed=119	sequence_number=120	rbr_only=no	original_committed_timestamp=1746066886020863	immediate_commit_timestamp=1746066886020863	transaction_length=409
# original_commit_timestamp=1746066886020863 (2025-05-01 11:34:46.020863 KST)
# immediate_commit_timestamp=1746066886020863 (2025-05-01 11:34:46.020863 KST)
/*!80001 SET @@session.original_commit_timestamp=1746066886020863*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 52121
#250501 11:34:46 server id 1  end_log_pos 52451 CRC32 0xfd1a1a21 	Query	thread_id=32	exec_time=0	error_code=0	Xid = 7264
SET TIMESTAMP=1746066886/*!*/;
CREATE OR REPLACE ALGORITHM=UNDEFINED DEFINER=`tester`@`%` SQL SECURITY DEFINER VIEW `v_emp_groupby_dept` AS select dept, min(ename) minName, max(ename) maxName, 
    sum(salary) totsal, avg(salary) avgsal
  from Emp group by dept
/*!*/;
# at 52451
#250501 12:55:50 server id 1  end_log_pos 52530 CRC32 0xf39ee637 	Anonymous_GTID	last_committed=120	sequence_number=121	rbr_only=yes	original_committed_timestamp=1746071750016261	immediate_commit_timestamp=1746071750016261	transaction_length=324
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746071750016261 (2025-05-01 12:55:50.016261 KST)
# immediate_commit_timestamp=1746071750016261 (2025-05-01 12:55:50.016261 KST)
/*!80001 SET @@session.original_commit_timestamp=1746071750016261*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 52530
#250501 12:55:50 server id 1  end_log_pos 52620 CRC32 0xeac8b2a4 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1746071750/*!*/;
BEGIN
/*!*/;
# at 52620
#250501 12:55:50 server id 1  end_log_pos 52684 CRC32 0xf3db07cf 	Table_map: `schooldb`.`subject` mapped to number 174
# has_generated_invisible_primary_key=0
# at 52684
#250501 12:55:50 server id 1  end_log_pos 52744 CRC32 0xae10e1fa 	Update_rows: table id 174 flags: STMT_END_F

BINLOG '
xvASaBMBAAAAQAAAAMzNAAAAAK4AAAAAAAMACHNjaG9vbGRiAAdzdWJqZWN0AAMCDwICfAAEAQHA
AgHgzwfb8w==
xvASaB8BAAAAPAAAAAjOAAAAAK4AAAAAAAEAAgAD//8AAgAH6rO866qpMQEABAIAB+qzvOuqqTH6
4RCu
'/*!*/;
# at 52744
#250501 12:55:50 server id 1  end_log_pos 52775 CRC32 0x917f65bd 	Xid = 7387
COMMIT/*!*/;
# at 52775
#250501 12:58:47 server id 1  end_log_pos 52854 CRC32 0x48575919 	Anonymous_GTID	last_committed=121	sequence_number=122	rbr_only=no	original_committed_timestamp=1746071927880688	immediate_commit_timestamp=1746071927880688	transaction_length=371
# original_commit_timestamp=1746071927880688 (2025-05-01 12:58:47.880688 KST)
# immediate_commit_timestamp=1746071927880688 (2025-05-01 12:58:47.880688 KST)
/*!80001 SET @@session.original_commit_timestamp=1746071927880688*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 52854
#250501 12:58:47 server id 1  end_log_pos 53146 CRC32 0x07dfb7d1 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 7435
use `schooldb`/*!*/;
SET TIMESTAMP=1746071927/*!*/;
CREATE OR REPLACE ALGORITHM=UNDEFINED DEFINER=`school`@`%` SQL SECURITY DEFINER VIEW `v_subject` AS select s.*, p.name as profName
   from Subject s left outer join Prof p on s.prof = p.id
/*!*/;
# at 53146
#250501 13:04:41 server id 1  end_log_pos 53225 CRC32 0x1822e06a 	Anonymous_GTID	last_committed=122	sequence_number=123	rbr_only=yes	original_committed_timestamp=1746072281778547	immediate_commit_timestamp=1746072281778547	transaction_length=305
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746072281778547 (2025-05-01 13:04:41.778547 KST)
# immediate_commit_timestamp=1746072281778547 (2025-05-01 13:04:41.778547 KST)
/*!80001 SET @@session.original_commit_timestamp=1746072281778547*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 53225
#250501 13:04:41 server id 1  end_log_pos 53306 CRC32 0x6921e577 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1746072281/*!*/;
BEGIN
/*!*/;
# at 53306
#250501 13:04:41 server id 1  end_log_pos 53370 CRC32 0x5cd81f3c 	Table_map: `schooldb`.`subject` mapped to number 174
# has_generated_invisible_primary_key=0
# at 53370
#250501 13:04:41 server id 1  end_log_pos 53420 CRC32 0xba4cecd6 	Write_rows: table id 174 flags: STMT_END_F

BINLOG '
2fISaBMBAAAAQAAAAHrQAAAAAK4AAAAAAAMACHNjaG9vbGRiAAdzdWJqZWN0AAMCDwICfAAEAQHA
AgHgPB/YXA==
2fISaB4BAAAAMgAAAKzQAAAAAK4AAAAAAAEAAgAD/wAEAAnquYDqs7zrqqkEANbsTLo=
'/*!*/;
# at 53420
#250501 13:04:41 server id 1  end_log_pos 53451 CRC32 0xf17be3ee 	Xid = 7492
COMMIT/*!*/;
# at 53451
#250501 13:05:30 server id 1  end_log_pos 53530 CRC32 0xb5e0cc9f 	Anonymous_GTID	last_committed=123	sequence_number=124	rbr_only=yes	original_committed_timestamp=1746072330401373	immediate_commit_timestamp=1746072330401373	transaction_length=316
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746072330401373 (2025-05-01 13:05:30.401373 KST)
# immediate_commit_timestamp=1746072330401373 (2025-05-01 13:05:30.401373 KST)
/*!80001 SET @@session.original_commit_timestamp=1746072330401373*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 53530
#250501 13:05:30 server id 1  end_log_pos 53611 CRC32 0x0a01645e 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1746072330/*!*/;
BEGIN
/*!*/;
# at 53611
#250501 13:05:30 server id 1  end_log_pos 53675 CRC32 0x7e7c4d4c 	Table_map: `schooldb`.`subject` mapped to number 174
# has_generated_invisible_primary_key=0
# at 53675
#250501 13:05:30 server id 1  end_log_pos 53736 CRC32 0xa37c1ac9 	Write_rows: table id 174 flags: STMT_END_F

BINLOG '
CvMSaBMBAAAAQAAAAKvRAAAAAK4AAAAAAAMACHNjaG9vbGRiAAdzdWJqZWN0AAMCDwICfAAEAQHA
AgHgTE18fg==
CvMSaB4BAAAAPQAAAOjRAAAAAK4AAAAAAAEAAgAD/wAFAAfqs7zrqqk1BAAABgAH6rO866qpNgIA
yRp8ow==
'/*!*/;
# at 53736
#250501 13:05:30 server id 1  end_log_pos 53767 CRC32 0x121a18b2 	Xid = 7503
COMMIT/*!*/;
# at 53767
#250501 13:07:11 server id 1  end_log_pos 53844 CRC32 0x1e49a432 	Anonymous_GTID	last_committed=124	sequence_number=125	rbr_only=no	original_committed_timestamp=1746072431433327	immediate_commit_timestamp=1746072431433327	transaction_length=247
# original_commit_timestamp=1746072431433327 (2025-05-01 13:07:11.433327 KST)
# immediate_commit_timestamp=1746072431433327 (2025-05-01 13:07:11.433327 KST)
/*!80001 SET @@session.original_commit_timestamp=1746072431433327*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 53844
#250501 13:07:11 server id 1  end_log_pos 54014 CRC32 0x02a744fa 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 7518
SET TIMESTAMP=1746072431/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
alter table Prof add column subjectcnt tinyint unsigned not null default 0
/*!*/;
# at 54014
#250501 13:10:12 server id 1  end_log_pos 54093 CRC32 0x359a4401 	Anonymous_GTID	last_committed=125	sequence_number=126	rbr_only=yes	original_committed_timestamp=1746072612809829	immediate_commit_timestamp=1746072612809829	transaction_length=406
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746072612809829 (2025-05-01 13:10:12.809829 KST)
# immediate_commit_timestamp=1746072612809829 (2025-05-01 13:10:12.809829 KST)
/*!80001 SET @@session.original_commit_timestamp=1746072612809829*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 54093
#250501 13:10:12 server id 1  end_log_pos 54183 CRC32 0xa6b9649b 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1746072612/*!*/;
BEGIN
/*!*/;
# at 54183
#250501 13:10:12 server id 1  end_log_pos 54245 CRC32 0x36d7d81b 	Table_map: `schooldb`.`prof` mapped to number 200
# has_generated_invisible_primary_key=0
# at 54245
#250501 13:10:12 server id 1  end_log_pos 54389 CRC32 0x88e59084 	Update_rows: table id 200 flags: STMT_END_F

BINLOG '
JPQSaBMBAAAAPgAAAOXTAAAAAMgAAAAAAAMACHNjaG9vbGRiAARwcm9mAAQCDwMBAnwAAAEBoAIB
4BvY1zY=
JPQSaB8BAAAAkAAAAHXUAAAAAMgAAAAAAAEAAgAE//8AAgAJ7J206rWQ7IiYAwAAAAAAAgAJ7J20
6rWQ7IiYAwAAAAIAAwAJ7LWc6rWQ7IiYBwAAAAAAAwAJ7LWc6rWQ7IiYBwAAAAEABAAJ6rmA6rWQ
7IiYAAAAAAAABAAJ6rmA6rWQ7IiYAAAAAAKEkOWI
'/*!*/;
# at 54389
#250501 13:10:12 server id 1  end_log_pos 54420 CRC32 0xdac8cc04 	Xid = 7557
COMMIT/*!*/;
# at 54420
#250501 13:14:53 server id 1  end_log_pos 54497 CRC32 0x7d2e718a 	Anonymous_GTID	last_committed=126	sequence_number=127	rbr_only=no	original_committed_timestamp=1746072893591144	immediate_commit_timestamp=1746072893591144	transaction_length=207
# original_commit_timestamp=1746072893591144 (2025-05-01 13:14:53.591144 KST)
# immediate_commit_timestamp=1746072893591144 (2025-05-01 13:14:53.591144 KST)
/*!80001 SET @@session.original_commit_timestamp=1746072893591144*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 54497
#250501 13:14:53 server id 1  end_log_pos 54627 CRC32 0x251ac473 	Query	thread_id=34	exec_time=0	error_code=0
SET TIMESTAMP=1746072893/*!*/;
DROP TRIGGER IF EXISTS `schooldb`.`Subject_AFTER_INSERT`
/*!*/;
# at 54627
#250501 13:14:53 server id 1  end_log_pos 54706 CRC32 0x3ba8b68c 	Anonymous_GTID	last_committed=127	sequence_number=128	rbr_only=no	original_committed_timestamp=1746072893601784	immediate_commit_timestamp=1746072893601784	transaction_length=379
# original_commit_timestamp=1746072893601784 (2025-05-01 13:14:53.601784 KST)
# immediate_commit_timestamp=1746072893601784 (2025-05-01 13:14:53.601784 KST)
/*!80001 SET @@session.original_commit_timestamp=1746072893601784*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 54706
#250501 13:14:53 server id 1  end_log_pos 55006 CRC32 0x27f4713c 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 7592
SET TIMESTAMP=1746072893.597358/*!*/;
CREATE DEFINER=`school`@`%` TRIGGER `schooldb`.`Subject_AFTER_INSERT` AFTER INSERT ON `Subject` FOR EACH ROW
BEGIN
    update Prof set subjectcnt = subjectcnt + 1
     where id = New.prof;
END
/*!*/;
# at 55006
#250501 13:17:06 server id 1  end_log_pos 55083 CRC32 0x0ef1b472 	Anonymous_GTID	last_committed=128	sequence_number=129	rbr_only=no	original_committed_timestamp=1746073026954769	immediate_commit_timestamp=1746073026954769	transaction_length=227
# original_commit_timestamp=1746073026954769 (2025-05-01 13:17:06.954769 KST)
# immediate_commit_timestamp=1746073026954769 (2025-05-01 13:17:06.954769 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073026954769*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 55083
#250501 13:17:06 server id 1  end_log_pos 55233 CRC32 0x8eaa9da2 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 7683
SET TIMESTAMP=1746073026/*!*/;
DROP TRIGGER IF EXISTS `schooldb`.`Subject_AFTER_INSERT`
/*!*/;
# at 55233
#250501 13:17:06 server id 1  end_log_pos 55312 CRC32 0xb8db7770 	Anonymous_GTID	last_committed=129	sequence_number=130	rbr_only=no	original_committed_timestamp=1746073026967326	immediate_commit_timestamp=1746073026967326	transaction_length=379
# original_commit_timestamp=1746073026967326 (2025-05-01 13:17:06.967326 KST)
# immediate_commit_timestamp=1746073026967326 (2025-05-01 13:17:06.967326 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073026967326*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 55312
#250501 13:17:06 server id 1  end_log_pos 55612 CRC32 0xb545f688 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 7685
SET TIMESTAMP=1746073026.961779/*!*/;
CREATE DEFINER=`school`@`%` TRIGGER `schooldb`.`Subject_AFTER_INSERT` AFTER INSERT ON `Subject` FOR EACH ROW
BEGIN
    update Prof set subjectcnt = subjectcnt + 1
     where id = New.prof;
END
/*!*/;
# at 55612
#250501 13:18:14 server id 1  end_log_pos 55689 CRC32 0x9ba2ecaa 	Anonymous_GTID	last_committed=130	sequence_number=131	rbr_only=no	original_committed_timestamp=1746073094789037	immediate_commit_timestamp=1746073094789037	transaction_length=227
# original_commit_timestamp=1746073094789037 (2025-05-01 13:18:14.789037 KST)
# immediate_commit_timestamp=1746073094789037 (2025-05-01 13:18:14.789037 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073094789037*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 55689
#250501 13:18:14 server id 1  end_log_pos 55839 CRC32 0xc649a0dd 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 7764
SET TIMESTAMP=1746073094/*!*/;
DROP TRIGGER IF EXISTS `schooldb`.`Subject_AFTER_INSERT`
/*!*/;
# at 55839
#250501 13:18:14 server id 1  end_log_pos 55918 CRC32 0x1623e5ca 	Anonymous_GTID	last_committed=131	sequence_number=132	rbr_only=no	original_committed_timestamp=1746073094800168	immediate_commit_timestamp=1746073094800168	transaction_length=379
# original_commit_timestamp=1746073094800168 (2025-05-01 13:18:14.800168 KST)
# immediate_commit_timestamp=1746073094800168 (2025-05-01 13:18:14.800168 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073094800168*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 55918
#250501 13:18:14 server id 1  end_log_pos 56218 CRC32 0xd4daa0da 	Query	thread_id=34	exec_time=0	error_code=0	Xid = 7766
SET TIMESTAMP=1746073094.795381/*!*/;
CREATE DEFINER=`school`@`%` TRIGGER `schooldb`.`Subject_AFTER_INSERT` AFTER INSERT ON `Subject` FOR EACH ROW
BEGIN
    update Prof set subjectcnt = subjectcnt + 1
     where id = New.prof;
END
/*!*/;
# at 56218
#250501 13:21:15 server id 1  end_log_pos 56297 CRC32 0x94997247 	Anonymous_GTID	last_committed=132	sequence_number=133	rbr_only=yes	original_committed_timestamp=1746073275659952	immediate_commit_timestamp=1746073275659952	transaction_length=437
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746073275659952 (2025-05-01 13:21:15.659952 KST)
# immediate_commit_timestamp=1746073275659952 (2025-05-01 13:21:15.659952 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073275659952*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 56297
#250501 13:21:15 server id 1  end_log_pos 56378 CRC32 0xfe02b0ae 	Query	thread_id=40	exec_time=0	error_code=0
SET TIMESTAMP=1746073275/*!*/;
BEGIN
/*!*/;
# at 56378
#250501 13:21:15 server id 1  end_log_pos 56442 CRC32 0x5f29db7a 	Table_map: `schooldb`.`subject` mapped to number 206
# has_generated_invisible_primary_key=0
# at 56442
#250501 13:21:15 server id 1  end_log_pos 56504 CRC32 0xb6a337a5 	Table_map: `schooldb`.`prof` mapped to number 200
# has_generated_invisible_primary_key=0
# at 56504
#250501 13:21:15 server id 1  end_log_pos 56552 CRC32 0x8d15a7aa 	Write_rows: table id 206
# at 56552
#250501 13:21:15 server id 1  end_log_pos 56624 CRC32 0xc0efb041 	Update_rows: table id 200 flags: STMT_END_F

BINLOG '
u/YSaBMBAAAAQAAAAHrcAAAAAM4AAAAAAAMACHNjaG9vbGRiAAdzdWJqZWN0AAMCDwICfAAEAQHA
AgHgetspXw==
u/YSaBMBAAAAPgAAALjcAAAAAMgAAAAAAAMACHNjaG9vbGRiAARwcm9mAAQCDwMBAnwAAAEBoAIB
4KU3o7Y=
u/YSaB4BAAAAMAAAAOjcAAAAAM4AAAAAAAAAAgAD/wAHAAfqs7zrqqk3AwCqpxWN
u/YSaB8BAAAASAAAADDdAAAAAMgAAAAAAAEAAgAE//8AAwAJ7LWc6rWQ7IiYBwAAAAEAAwAJ7LWc
6rWQ7IiYBwAAAAJBsO/A
'/*!*/;
# at 56624
#250501 13:21:15 server id 1  end_log_pos 56655 CRC32 0x26267118 	Xid = 7951
COMMIT/*!*/;
# at 56655
#250501 13:23:06 server id 1  end_log_pos 56732 CRC32 0xfcf97c35 	Anonymous_GTID	last_committed=133	sequence_number=134	rbr_only=no	original_committed_timestamp=1746073386714681	immediate_commit_timestamp=1746073386714681	transaction_length=207
# original_commit_timestamp=1746073386714681 (2025-05-01 13:23:06.714681 KST)
# immediate_commit_timestamp=1746073386714681 (2025-05-01 13:23:06.714681 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073386714681*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 56732
#250501 13:23:06 server id 1  end_log_pos 56862 CRC32 0xd0ce4b00 	Query	thread_id=40	exec_time=0	error_code=0
SET TIMESTAMP=1746073386/*!*/;
DROP TRIGGER IF EXISTS `schooldb`.`Subject_AFTER_DELETE`
/*!*/;
# at 56862
#250501 13:23:06 server id 1  end_log_pos 56941 CRC32 0x22e25f4d 	Anonymous_GTID	last_committed=134	sequence_number=135	rbr_only=no	original_committed_timestamp=1746073386729578	immediate_commit_timestamp=1746073386729578	transaction_length=379
# original_commit_timestamp=1746073386729578 (2025-05-01 13:23:06.729578 KST)
# immediate_commit_timestamp=1746073386729578 (2025-05-01 13:23:06.729578 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073386729578*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 56941
#250501 13:23:06 server id 1  end_log_pos 57241 CRC32 0x5746867b 	Query	thread_id=40	exec_time=0	error_code=0	Xid = 7985
SET TIMESTAMP=1746073386.723487/*!*/;
CREATE DEFINER=`school`@`%` TRIGGER `schooldb`.`Subject_AFTER_DELETE` AFTER DELETE ON `Subject` FOR EACH ROW
BEGIN
    update Prof set subjectcnt = subjectcnt - 1
     where id = OLD.prof;
END
/*!*/;
# at 57241
#250501 13:24:26 server id 1  end_log_pos 57320 CRC32 0x396a5b60 	Anonymous_GTID	last_committed=135	sequence_number=136	rbr_only=yes	original_committed_timestamp=1746073466883255	immediate_commit_timestamp=1746073466883255	transaction_length=437
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746073466883255 (2025-05-01 13:24:26.883255 KST)
# immediate_commit_timestamp=1746073466883255 (2025-05-01 13:24:26.883255 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073466883255*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 57320
#250501 13:24:26 server id 1  end_log_pos 57401 CRC32 0x1e9e6a9f 	Query	thread_id=40	exec_time=0	error_code=0
SET TIMESTAMP=1746073466/*!*/;
BEGIN
/*!*/;
# at 57401
#250501 13:24:26 server id 1  end_log_pos 57465 CRC32 0x1ed54234 	Table_map: `schooldb`.`subject` mapped to number 207
# has_generated_invisible_primary_key=0
# at 57465
#250501 13:24:26 server id 1  end_log_pos 57527 CRC32 0x86870485 	Table_map: `schooldb`.`prof` mapped to number 200
# has_generated_invisible_primary_key=0
# at 57527
#250501 13:24:26 server id 1  end_log_pos 57575 CRC32 0xef2f565a 	Delete_rows: table id 207
# at 57575
#250501 13:24:26 server id 1  end_log_pos 57647 CRC32 0x3aa66aa8 	Update_rows: table id 200 flags: STMT_END_F

BINLOG '
evcSaBMBAAAAQAAAAHngAAAAAM8AAAAAAAMACHNjaG9vbGRiAAdzdWJqZWN0AAMCDwICfAAEAQHA
AgHgNELVHg==
evcSaBMBAAAAPgAAALfgAAAAAMgAAAAAAAMACHNjaG9vbGRiAARwcm9mAAQCDwMBAnwAAAEBoAIB
4IUEh4Y=
evcSaCABAAAAMAAAAOfgAAAAAM8AAAAAAAAAAgAD/wAHAAfqs7zrqqk3AwBaVi/v
evcSaB8BAAAASAAAAC/hAAAAAMgAAAAAAAEAAgAE//8AAwAJ7LWc6rWQ7IiYBwAAAAIAAwAJ7LWc
6rWQ7IiYBwAAAAGoaqY6
'/*!*/;
# at 57647
#250501 13:24:26 server id 1  end_log_pos 57678 CRC32 0xe69e012e 	Xid = 8048
COMMIT/*!*/;
# at 57678
#250501 13:27:20 server id 1  end_log_pos 57755 CRC32 0xf3baa5cb 	Anonymous_GTID	last_committed=136	sequence_number=137	rbr_only=no	original_committed_timestamp=1746073640518349	immediate_commit_timestamp=1746073640518349	transaction_length=207
# original_commit_timestamp=1746073640518349 (2025-05-01 13:27:20.518349 KST)
# immediate_commit_timestamp=1746073640518349 (2025-05-01 13:27:20.518349 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073640518349*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 57755
#250501 13:27:20 server id 1  end_log_pos 57885 CRC32 0x00e0afad 	Query	thread_id=40	exec_time=0	error_code=0
SET TIMESTAMP=1746073640/*!*/;
DROP TRIGGER IF EXISTS `schooldb`.`Subject_AFTER_UPDATE`
/*!*/;
# at 57885
#250501 13:27:20 server id 1  end_log_pos 57964 CRC32 0x9fcf5376 	Anonymous_GTID	last_committed=137	sequence_number=138	rbr_only=no	original_committed_timestamp=1746073640528810	immediate_commit_timestamp=1746073640528810	transaction_length=460
# original_commit_timestamp=1746073640528810 (2025-05-01 13:27:20.528810 KST)
# immediate_commit_timestamp=1746073640528810 (2025-05-01 13:27:20.528810 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073640528810*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 57964
#250501 13:27:20 server id 1  end_log_pos 58345 CRC32 0xbc7ac923 	Query	thread_id=40	exec_time=0	error_code=0	Xid = 8080
SET TIMESTAMP=1746073640.523830/*!*/;
CREATE DEFINER=`school`@`%` TRIGGER `schooldb`.`Subject_AFTER_UPDATE` AFTER UPDATE ON `Subject` FOR EACH ROW
BEGIN
    update Prof set subjectcnt = subjectcnt + 1
     where id = New.prof;
     
    update Prof set subjectcnt = subjectcnt - 1
     where id = OLd.prof; 
END
/*!*/;
# at 58345
#250501 13:27:53 server id 1  end_log_pos 58424 CRC32 0xffdc5569 	Anonymous_GTID	last_committed=138	sequence_number=139	rbr_only=yes	original_committed_timestamp=1746073673950234	immediate_commit_timestamp=1746073673950234	transaction_length=496
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746073673950234 (2025-05-01 13:27:53.950234 KST)
# immediate_commit_timestamp=1746073673950234 (2025-05-01 13:27:53.950234 KST)
/*!80001 SET @@session.original_commit_timestamp=1746073673950234*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 58424
#250501 13:27:53 server id 1  end_log_pos 58514 CRC32 0x64edff2d 	Query	thread_id=40	exec_time=0	error_code=0
SET TIMESTAMP=1746073673/*!*/;
BEGIN
/*!*/;
# at 58514
#250501 13:27:53 server id 1  end_log_pos 58578 CRC32 0x1d774fec 	Table_map: `schooldb`.`subject` mapped to number 211
# has_generated_invisible_primary_key=0
# at 58578
#250501 13:27:53 server id 1  end_log_pos 58640 CRC32 0x7632dbd7 	Table_map: `schooldb`.`prof` mapped to number 200
# has_generated_invisible_primary_key=0
# at 58640
#250501 13:27:53 server id 1  end_log_pos 58702 CRC32 0xfb7a9777 	Update_rows: table id 211
# at 58702
#250501 13:27:53 server id 1  end_log_pos 58810 CRC32 0x918baac4 	Update_rows: table id 200 flags: STMT_END_F

BINLOG '
SfgSaBMBAAAAQAAAANLkAAAAANMAAAAAAAMACHNjaG9vbGRiAAdzdWJqZWN0AAMCDwICfAAEAQHA
AgHg7E93HQ==
SfgSaBMBAAAAPgAAABDlAAAAAMgAAAAAAAMACHNjaG9vbGRiAARwcm9mAAQCDwMBAnwAAAEBoAIB
4NfbMnY=
SfgSaB8BAAAAPgAAAE7lAAAAANMAAAAAAAAAAgAD//8ABQAH6rO866qpNQQAAAUAB+qzvOuqqTUC
AHeXevs=
SfgSaB8BAAAAbAAAALrlAAAAAMgAAAAAAAEAAgAE//8AAgAJ7J206rWQ7IiYAwAAAAIAAgAJ7J20
6rWQ7IiYAwAAAAMABAAJ6rmA6rWQ7IiYAAAAAAIABAAJ6rmA6rWQ7IiYAAAAAAHEqouR
'/*!*/;
# at 58810
#250501 13:27:53 server id 1  end_log_pos 58841 CRC32 0x006ed367 	Xid = 8112
COMMIT/*!*/;
# at 58841
#250501 13:53:29 server id 1  end_log_pos 58920 CRC32 0x8e802187 	Anonymous_GTID	last_committed=139	sequence_number=140	rbr_only=no	original_committed_timestamp=1746075209603122	immediate_commit_timestamp=1746075209603122	transaction_length=337
# original_commit_timestamp=1746075209603122 (2025-05-01 13:53:29.603122 KST)
# immediate_commit_timestamp=1746075209603122 (2025-05-01 13:53:29.603122 KST)
/*!80001 SET @@session.original_commit_timestamp=1746075209603122*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 58920
#250501 13:53:29 server id 1  end_log_pos 59178 CRC32 0x20990c03 	Query	thread_id=40	exec_time=0	error_code=0	Xid = 8274
SET TIMESTAMP=1746075209/*!*/;
CREATE DEFINER=`school`@`%` PROCEDURE `sp_t`(IN a int, OUT b int)
begin 
    set @x = a;

    while @x < 10 do
        set @x = @x + 1;
    end while;
end
/*!*/;
# at 59178
#250501 13:55:01 server id 1  end_log_pos 59255 CRC32 0xc4560056 	Anonymous_GTID	last_committed=140	sequence_number=141	rbr_only=no	original_committed_timestamp=1746075301266986	immediate_commit_timestamp=1746075301266986	transaction_length=200
# original_commit_timestamp=1746075301266986 (2025-05-01 13:55:01.266986 KST)
# immediate_commit_timestamp=1746075301266986 (2025-05-01 13:55:01.266986 KST)
/*!80001 SET @@session.original_commit_timestamp=1746075301266986*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 59255
#250501 13:55:01 server id 1  end_log_pos 59378 CRC32 0x5beb719c 	Query	thread_id=40	exec_time=0	error_code=0	Xid = 8332
SET TIMESTAMP=1746075301/*!*/;
drop procedure if exists sp_t
/*!*/;
# at 59378
#250501 13:55:01 server id 1  end_log_pos 59457 CRC32 0xc3ed3060 	Anonymous_GTID	last_committed=141	sequence_number=142	rbr_only=no	original_committed_timestamp=1746075301274899	immediate_commit_timestamp=1746075301274899	transaction_length=358
# original_commit_timestamp=1746075301274899 (2025-05-01 13:55:01.274899 KST)
# immediate_commit_timestamp=1746075301274899 (2025-05-01 13:55:01.274899 KST)
/*!80001 SET @@session.original_commit_timestamp=1746075301274899*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 59457
#250501 13:55:01 server id 1  end_log_pos 59736 CRC32 0x5154b479 	Query	thread_id=40	exec_time=0	error_code=0	Xid = 8333
SET TIMESTAMP=1746075301/*!*/;
CREATE DEFINER=`school`@`%` PROCEDURE `sp_t`(IN a int, OUT b int)
begin 
    set @x = a;

    while @x < 10 do
        set @x = @x + 1;
    end while;
    
    set b = @x;
end
/*!*/;
# at 59736
#250501 14:07:50 server id 1  end_log_pos 59759 CRC32 0x8fec0357 	Stop
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
