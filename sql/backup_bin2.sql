# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 157
#250508 17:05:03 server id 1  end_log_pos 126 CRC32 0x76c0ffe1 	Start: binlog v 4, server v 8.0.34 created 250508 17:05:03
# Warning: this binlog is either in use or was not closed properly.
BINLOG '
r2UcaA8BAAAAegAAAH4AAAABAAQAOC4wLjM0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAeH/wHY=
'/*!*/;
# at 372
#250508 17:06:16 server id 1  end_log_pos 427 CRC32 0xfa0918f4 	Write_rows: table id 145 flags: STMT_END_F

BINLOG '
+GUcaB4BAAAANwAAAKsBAAAAAJEAAAAAAAEAAgAD/wAGAAAAA2JiYgUABwAAAANjY2MG9BgJ+g==
'/*!*/;
# at 427
#250508 17:06:16 server id 1  end_log_pos 458 CRC32 0xb8f9fd02 	Xid = 1326
COMMIT/*!*/;
# at 458
#250508 17:06:30 server id 1  end_log_pos 537 CRC32 0xbba28f32 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=yes	original_committed_timestamp=1746691590718106	immediate_commit_timestamp=1746691590718106	transaction_length=311
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746691590718106 (2025-05-08 17:06:30.718106 KST)
# immediate_commit_timestamp=1746691590718106 (2025-05-08 17:06:30.718106 KST)
/*!80001 SET @@session.original_commit_timestamp=1746691590718106*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 537
#250508 17:06:30 server id 1  end_log_pos 623 CRC32 0x5a79718f 	Query	thread_id=15	exec_time=0	error_code=0
SET TIMESTAMP=1746691590/*!*/;
SET @@session.pseudo_thread_id=15/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=224/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 623
#250508 17:06:30 server id 1  end_log_pos 682 CRC32 0x04df3309 	Table_map: `testdb`.`test` mapped to number 145
# has_generated_invisible_primary_key=0
# at 682
#250508 17:06:30 server id 1  end_log_pos 738 CRC32 0x17615816 	Update_rows: table id 145 flags: STMT_END_F

BINLOG '
BmYcaBMBAAAAOwAAAKoCAAAAAJEAAAAAAAEABnRlc3RkYgAEdGVzdAADAw8BAnwAAAEBwAIB4Akz
3wQ=
BmYcaB8BAAAAOAAAAOICAAAAAJEAAAAAAAEAAgAD//8ABwAAAANjY2MGAAcAAAADQ0NDBhZYYRc=
'/*!*/;
# at 738
#250508 17:06:30 server id 1  end_log_pos 769 CRC32 0x338834cc 	Xid = 1339
COMMIT/*!*/;
# at 769
#250508 17:07:19 server id 1  end_log_pos 848 CRC32 0x4a966792 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=yes	original_committed_timestamp=1746691639381938	immediate_commit_timestamp=1746691639381938	transaction_length=323
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1746691639381938 (2025-05-08 17:07:19.381938 KST)
# immediate_commit_timestamp=1746691639381938 (2025-05-08 17:07:19.381938 KST)
/*!80001 SET @@session.original_commit_timestamp=1746691639381938*//*!*/;
/*!80014 SET @@session.original_server_version=80034*//*!*/;
/*!80014 SET @@session.immediate_server_version=80034*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 848
#250508 17:07:19 server id 1  end_log_pos 925 CRC32 0xecc249a8 	Query	thread_id=15	exec_time=0	error_code=0
SET TIMESTAMP=1746691639/*!*/;
BEGIN
/*!*/;
ROLLBACK /* added by mysqlbinlog */ /*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
