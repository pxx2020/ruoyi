-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: ry
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (2,'sch_student','学生信息表',NULL,NULL,'SchStudent','crud','com.ruoyi.school','school','student','学生信息','ruoyi','0','/','{}','admin','2023-08-07 17:28:39','','2023-08-08 09:46:08',NULL),(7,'sch_class','学生班级表',NULL,NULL,'SchClass','crud','com.ruoyi.school','school','classes','学生班级','ruoyi','0','/','{\"parentMenuId\":\"2000\"}','admin','2023-08-14 14:17:02','','2023-08-14 14:27:32',NULL),(8,'sch_grades','班级年级表',NULL,NULL,'SchGrades','crud','com.ruoyi.school','school','grades','班级年级','ruoyi','0','/','{\"parentMenuId\":2000}','admin','2023-08-14 14:17:02','','2023-08-14 14:38:24',NULL),(9,'sch_teacher','教师信息表',NULL,NULL,'SchTeacher','crud','com.ruoyi.school','school','teacher','教师管理','ruoyi','0','/','{\"parentMenuId\":\"2000\"}','admin','2023-08-15 09:00:36','','2023-08-15 09:02:55',NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (12,2,'student_id','学生ID','bigint','Long','studentId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(13,2,'student_name','学生姓名','varchar(30)','String','studentName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(14,2,'student_sex','学生性别','char(1)','String','studentSex','0','0',NULL,'1','1','1','1','EQ','select','sys_user_sex',3,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(15,2,'student_birthday','出生日期','datetime','Date','studentBirthday','0','0',NULL,'1','1','1','1','EQ','datetime','',4,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(16,2,'student_phone','联系电话','varchar(11)','String','studentPhone','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(17,2,'student_address','联系地址','varchar(30)','String','studentAddress','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(18,2,'create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',8,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(19,2,'create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',9,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(20,2,'update_by','修改者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',10,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(21,2,'update_time','修改时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',11,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(22,2,'remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',12,'admin','2023-08-07 17:28:39','','2023-08-09 15:07:20'),(41,2,'class_id','所在班级','bigint','Long','classId','0','0',NULL,'1','1','1','1','EQ','input','',7,'','2023-08-09 15:07:20','',NULL),(59,7,'class_id','班级ID','bigint','Long','classId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-08-14 14:17:02','','2023-08-14 14:27:32'),(60,7,'grade_id','年级','bigint','Long','gradeId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2023-08-14 14:17:02','','2023-08-14 14:27:32'),(61,7,'class_name','班级名称','varchar(30)','String','className','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2023-08-14 14:17:02','','2023-08-14 14:27:32'),(62,7,'capacity','班级容量','bigint','Long','capacity','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2023-08-14 14:17:02','','2023-08-14 14:27:32'),(63,7,'create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',5,'admin','2023-08-14 14:17:02','','2023-08-14 14:27:32'),(64,7,'create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',6,'admin','2023-08-14 14:17:02','','2023-08-14 14:27:32'),(65,7,'update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',7,'admin','2023-08-14 14:17:02','','2023-08-14 14:27:32'),(66,7,'update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',8,'admin','2023-08-14 14:17:02','','2023-08-14 14:27:32'),(67,7,'remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','0',NULL,'EQ','textarea','',9,'admin','2023-08-14 14:17:02','','2023-08-14 14:27:32'),(68,8,'grade_id','年级id','bigint','Long','gradeId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-08-14 14:17:02','','2023-08-14 14:38:24'),(69,8,'grade_name','年级名称','varchar(30)','String','gradeName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2023-08-14 14:17:02','','2023-08-14 14:38:24'),(70,8,'create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',3,'admin','2023-08-14 14:17:02','','2023-08-14 14:38:24'),(71,8,'create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',4,'admin','2023-08-14 14:17:02','','2023-08-14 14:38:24'),(72,8,'update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',5,'admin','2023-08-14 14:17:02','','2023-08-14 14:38:24'),(73,8,'update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',6,'admin','2023-08-14 14:17:02','','2023-08-14 14:38:24'),(74,8,'remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','0',NULL,'EQ','textarea','',7,'admin','2023-08-14 14:17:02','','2023-08-14 14:38:24'),(75,9,'teacher_id','老师ID','bigint','Long','teacherId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-08-15 09:00:36','','2023-08-15 09:02:55'),(76,9,'teacher_name','老师姓名','varchar(30)','String','teacherName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2023-08-15 09:00:36','','2023-08-15 09:02:55'),(77,9,'teacher_phone','老师电话','varchar(11)','String','teacherPhone','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2023-08-15 09:00:36','','2023-08-15 09:02:55'),(78,9,'create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',4,'admin','2023-08-15 09:00:36','','2023-08-15 09:02:55'),(79,9,'create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',5,'admin','2023-08-15 09:00:36','','2023-08-15 09:02:55'),(80,9,'update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',6,'admin','2023-08-15 09:00:36','','2023-08-15 09:02:55'),(81,9,'update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',7,'admin','2023-08-15 09:00:36','','2023-08-15 09:02:55'),(82,9,'remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',8,'admin','2023-08-15 09:00:36','','2023-08-15 09:02:55');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sch_class`
--

DROP TABLE IF EXISTS `sch_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sch_class` (
  `class_id` bigint NOT NULL AUTO_INCREMENT COMMENT '班级ID',
  `grade_id` bigint NOT NULL COMMENT '年级ID',
  `class_name` varchar(30) NOT NULL COMMENT '班级名称',
  `capacity` bigint DEFAULT NULL COMMENT '班级容量',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学生班级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sch_class`
--

LOCK TABLES `sch_class` WRITE;
/*!40000 ALTER TABLE `sch_class` DISABLE KEYS */;
INSERT INTO `sch_class` VALUES (3,1,'三年级一班',50,NULL,'2023-08-14 15:12:25',NULL,'2023-08-14 16:19:13','班级'),(4,2,'菜鸟班级',10,NULL,'2023-08-14 17:53:23',NULL,NULL,NULL),(5,1,'精英班级',11,NULL,'2023-08-14 17:53:38',NULL,NULL,NULL),(6,2,'王者班级',31,NULL,'2023-08-14 17:53:51',NULL,NULL,NULL),(7,1,'普通01班级',122,NULL,'2023-08-17 09:42:05',NULL,NULL,NULL),(8,1,'普通02班级',24,NULL,'2023-08-17 09:42:24',NULL,NULL,NULL),(9,2,'普通03班级',1212,NULL,'2023-08-17 09:42:30',NULL,NULL,NULL),(10,2,'普通04班级',NULL,NULL,'2023-08-17 09:42:38',NULL,NULL,NULL),(11,2,'普通05班级',NULL,NULL,'2023-08-17 09:42:50',NULL,NULL,NULL),(12,2,'普通06班级',123,NULL,'2023-08-17 09:42:58',NULL,NULL,NULL),(13,2,'普通07班级',12,NULL,'2023-08-17 09:43:07',NULL,'2023-08-17 09:43:22',NULL),(14,2,'普通08班级',NULL,NULL,'2023-08-17 09:43:37',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sch_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sch_grades`
--

DROP TABLE IF EXISTS `sch_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sch_grades` (
  `grade_id` bigint NOT NULL AUTO_INCREMENT COMMENT '年级id',
  `grade_name` varchar(30) DEFAULT NULL COMMENT '年级名称',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='班级年级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sch_grades`
--

LOCK TABLES `sch_grades` WRITE;
/*!40000 ALTER TABLE `sch_grades` DISABLE KEYS */;
INSERT INTO `sch_grades` VALUES (1,'三年级',NULL,'2023-08-14 15:11:10',NULL,NULL,NULL),(2,'四年级',NULL,'2023-08-14 17:52:38',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sch_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sch_student`
--

DROP TABLE IF EXISTS `sch_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sch_student` (
  `student_id` bigint NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `student_name` varchar(30) DEFAULT NULL COMMENT '学生姓名',
  `student_sex` char(1) DEFAULT NULL COMMENT '学生性别',
  `student_birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `student_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系电话',
  `student_address` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系地址',
  `class_id` bigint DEFAULT NULL COMMENT '所在班级',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '修改者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学生信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sch_student`
--

LOCK TABLES `sch_student` WRITE;
/*!40000 ALTER TABLE `sch_student` DISABLE KEYS */;
INSERT INTO `sch_student` VALUES (11,'赵四',NULL,NULL,NULL,NULL,3,NULL,'2023-08-11 14:36:48',NULL,'2023-08-17 11:18:42',NULL),(12,'李克','0',NULL,NULL,NULL,3,NULL,'2023-08-14 17:17:11',NULL,NULL,NULL),(14,'李青','1','2023-08-02 00:00:00','1231312322','手动阀手动阀阿斯蒂芬',4,NULL,'2023-08-14 17:57:59',NULL,NULL,NULL),(15,'张师傅','1','2023-08-24 00:00:00',NULL,NULL,5,NULL,'2023-08-14 17:58:21',NULL,NULL,NULL),(16,'流川枫','0','2023-08-21 00:00:00',NULL,NULL,7,NULL,'2023-08-14 17:58:37',NULL,'2023-08-17 11:16:47',NULL),(17,'佐佑','0','2023-08-05 00:00:00',NULL,NULL,4,NULL,'2023-08-14 17:58:59',NULL,NULL,NULL),(18,'郭麒麟','0',NULL,NULL,NULL,6,NULL,'2023-08-14 17:59:12',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sch_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sch_teacher`
--

DROP TABLE IF EXISTS `sch_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sch_teacher` (
  `teacher_id` bigint NOT NULL AUTO_INCREMENT COMMENT '老师ID',
  `teacher_name` varchar(30) NOT NULL COMMENT '老师姓名',
  `teacher_phone` varchar(11) DEFAULT NULL COMMENT '老师电话',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='教师信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sch_teacher`
--

LOCK TABLES `sch_teacher` WRITE;
/*!40000 ALTER TABLE `sch_teacher` DISABLE KEYS */;
INSERT INTO `sch_teacher` VALUES (2,'李老师',NULL,NULL,'2023-08-15 13:26:40',NULL,NULL,NULL),(7,'周老师',NULL,NULL,'2023-08-16 17:58:02',NULL,'2023-08-16 18:04:58',NULL),(8,'吴老师',NULL,NULL,'2023-08-17 10:36:03',NULL,NULL,NULL),(9,' 成老师',NULL,NULL,'2023-08-17 10:36:13',NULL,NULL,NULL),(10,'杨老师',NULL,NULL,'2023-08-17 10:36:20',NULL,NULL,NULL),(11,'马老师',NULL,NULL,'2023-08-17 10:36:26',NULL,NULL,NULL),(12,'何老师',NULL,NULL,'2023-08-17 10:36:40',NULL,NULL,NULL),(13,'敏老师',NULL,NULL,'2023-08-17 10:36:49',NULL,NULL,NULL),(14,'齐老师',NULL,NULL,'2023-08-17 10:36:57',NULL,NULL,NULL),(15,'南老师',NULL,NULL,'2023-08-17 10:37:06',NULL,NULL,NULL),(16,'黑老师',NULL,NULL,'2023-08-17 10:37:11',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sch_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sch_teacher_class`
--

DROP TABLE IF EXISTS `sch_teacher_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sch_teacher_class` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `teacher_id` bigint DEFAULT NULL COMMENT '老师ID',
  `class_id` bigint DEFAULT NULL COMMENT '班级ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='教师和班级的连接表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sch_teacher_class`
--

LOCK TABLES `sch_teacher_class` WRITE;
/*!40000 ALTER TABLE `sch_teacher_class` DISABLE KEYS */;
INSERT INTO `sch_teacher_class` VALUES (48,2,3),(49,2,4),(50,2,5),(51,2,6),(52,2,7),(53,2,8),(54,2,9),(55,2,10),(56,2,11),(57,2,12),(58,2,13),(59,2,14),(78,8,13),(79,8,14),(80,12,3),(81,12,4),(82,12,5),(83,12,6),(84,12,7),(85,12,8),(86,12,9),(87,12,10),(88,12,11),(89,12,12),(90,14,3),(91,14,4),(92,14,5),(93,14,6),(94,14,7),(95,14,8),(96,14,9),(97,14,10),(98,14,11),(99,14,12),(100,15,14),(101,15,13),(128,7,3),(129,7,4),(130,7,5),(131,7,6),(132,7,7),(133,7,8),(134,7,9),(135,7,10),(136,7,11),(137,7,12),(138,7,13),(139,7,14),(140,13,3);
/*!40000 ALTER TABLE `sch_teacher_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2023-08-05 09:39:42','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2023-08-05 09:39:42','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2023-08-05 09:39:42','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2023-08-05 09:39:42','',NULL,'是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2023-08-05 09:39:42','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2023-08-05 09:39:42','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-08-05 09:39:37','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2023-08-05 09:39:42','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2023-08-05 09:39:42','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2023-08-05 09:39:42','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2023-08-05 09:39:42','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2023-08-05 09:39:42','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2023-08-05 09:39:42','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2023-08-05 09:39:42','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2023-08-05 09:39:42','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2023-08-05 09:39:42','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2023-08-05 09:39:42','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2023-08-05 09:39:42','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2023-08-05 09:39:42','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2023-08-05 09:39:42','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2023-08-05 09:39:42','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2023-08-05 09:39:42','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2023-08-05 09:39:42','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2023-08-05 09:39:42','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2023-08-05 09:39:42','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2023-08-05 09:39:42','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2023-08-05 09:39:42','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2023-08-05 09:39:42','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2023-08-05 09:39:42','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2023-08-05 09:39:42','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2023-08-05 09:39:42','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2023-08-05 09:39:42','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2023-08-05 09:39:42','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2023-08-05 09:39:42','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2023-08-05 09:39:42','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2023-08-05 09:39:42','',NULL,'停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2023-08-05 09:39:41','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2023-08-05 09:39:41','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2023-08-05 09:39:41','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2023-08-05 09:39:41','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2023-08-05 09:39:41','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2023-08-05 09:39:41','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2023-08-05 09:39:41','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2023-08-05 09:39:41','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2023-08-05 09:39:41','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2023-08-05 09:39:41','',NULL,'登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2023-08-05 09:39:43','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2023-08-05 09:39:43','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2023-08-05 09:39:43','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'ruoyi','127.0.0.1','内网IP','Chrome 11','Windows 10','1','用户不存在/密码错误','2023-08-05 10:06:54'),(101,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','密码输入错误1次','2023-08-05 10:07:06'),(102,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','用户不存在/密码错误','2023-08-05 10:07:06'),(103,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','1','用户不存在/密码错误','2023-08-05 10:07:48'),(104,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','1','密码输入错误1次','2023-08-05 10:07:48'),(105,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码已失效','2023-08-05 10:21:36'),(106,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','1','密码输入错误1次','2023-08-05 10:21:40'),(107,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','1','用户不存在/密码错误','2023-08-05 10:21:40'),(108,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码已失效','2023-08-05 10:38:33'),(109,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-05 10:38:37'),(110,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-08-05 11:02:15'),(111,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-05 11:02:22'),(112,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-05 14:12:27'),(113,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-07 15:01:13'),(114,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-07 17:09:22'),(115,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-08 09:18:27'),(116,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-08-08 10:39:04'),(117,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-08-08 10:39:07'),(118,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-08 10:40:19'),(119,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-08 15:26:37'),(120,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-09 10:00:46'),(121,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-09 15:05:55'),(122,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-09 16:06:35'),(123,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-09 17:53:04'),(124,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-10 09:42:00'),(125,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-08-10 09:49:58'),(126,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-10 09:54:40'),(127,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-10 13:20:51'),(128,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-10 14:05:56'),(129,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码已失效','2023-08-11 14:24:52'),(130,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-08-11 14:24:58'),(131,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-11 14:25:07'),(132,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-11 16:07:19'),(133,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-14 10:11:39'),(134,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-08-14 10:59:17'),(135,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-14 10:59:21'),(136,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-14 13:48:30'),(137,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-14 15:54:36'),(138,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-15 08:33:31'),(139,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-15 10:29:08'),(140,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-15 11:10:41'),(141,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-15 12:15:56'),(142,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-15 13:26:15'),(143,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-15 16:21:32'),(144,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-08-15 16:53:43'),(145,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-08-15 16:53:49'),(146,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-15 16:53:56'),(147,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-15 17:50:52'),(148,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-16 08:48:13'),(149,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-16 11:31:29'),(150,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-08-16 13:40:43'),(151,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-16 13:40:47'),(152,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-16 13:46:12'),(153,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-08-16 15:02:32'),(154,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-16 15:02:36'),(155,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-16 16:19:24'),(156,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-16 16:50:58'),(157,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-16 17:53:45'),(158,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-17 08:33:03'),(159,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-17 09:22:36'),(160,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-17 10:34:05'),(161,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-17 11:04:47'),(162,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-08-17 13:34:55'),(163,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-08-17 13:34:59');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2032 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,'',1,0,'M','0','0','','system','admin','2023-08-05 09:39:39','',NULL,'系统管理目录'),(2,'系统监控',0,2,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2023-08-05 09:39:39','',NULL,'系统监控目录'),(3,'系统工具',0,3,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2023-08-05 09:39:39','',NULL,'系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip',NULL,'',0,0,'M','0','0','','guide','admin','2023-08-05 09:39:39','',NULL,'若依官网地址'),(100,'用户管理',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2023-08-05 09:39:39','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2023-08-05 09:39:39','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2023-08-05 09:39:39','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','',1,0,'C','0','0','system:dept:list','tree','admin','2023-08-05 09:39:39','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','',1,0,'C','0','0','system:post:list','post','admin','2023-08-05 09:39:39','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','',1,0,'C','0','0','system:dict:list','dict','admin','2023-08-05 09:39:39','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2023-08-05 09:39:39','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2023-08-05 09:39:39','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','','',1,0,'M','0','0','','log','admin','2023-08-05 09:39:39','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2023-08-05 09:39:39','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2023-08-05 09:39:39','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index','',1,0,'C','0','0','monitor:druid:list','druid','admin','2023-08-05 09:39:39','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index','',1,0,'C','0','0','monitor:server:list','server','admin','2023-08-05 09:39:39','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index','',1,0,'C','0','0','monitor:cache:list','redis','admin','2023-08-05 09:39:39','',NULL,'缓存监控菜单'),(114,'缓存列表',2,6,'cacheList','monitor/cache/list','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2023-08-05 09:39:39','',NULL,'缓存列表菜单'),(115,'表单构建',3,1,'build','tool/build/index','',1,0,'C','0','0','tool:build:list','build','admin','2023-08-05 09:39:39','',NULL,'表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2023-08-05 09:39:39','',NULL,'代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2023-08-05 09:39:39','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2023-08-05 09:39:39','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2023-08-05 09:39:39','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1001,'用户新增',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2023-08-05 09:39:39','',NULL,''),(1002,'用户修改',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1003,'用户删除',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1004,'用户导出',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2023-08-05 09:39:39','',NULL,''),(1005,'用户导入',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2023-08-05 09:39:39','',NULL,''),(1006,'重置密码',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2023-08-05 09:39:39','',NULL,''),(1007,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1008,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2023-08-05 09:39:39','',NULL,''),(1009,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1010,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1011,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2023-08-05 09:39:39','',NULL,''),(1012,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1013,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2023-08-05 09:39:39','',NULL,''),(1014,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1015,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1016,'部门查询',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1017,'部门新增',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2023-08-05 09:39:39','',NULL,''),(1018,'部门修改',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1019,'部门删除',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1020,'岗位查询',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1021,'岗位新增',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2023-08-05 09:39:39','',NULL,''),(1022,'岗位修改',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1023,'岗位删除',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1024,'岗位导出',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2023-08-05 09:39:39','',NULL,''),(1025,'字典查询',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1026,'字典新增',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2023-08-05 09:39:39','',NULL,''),(1027,'字典修改',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1028,'字典删除',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1029,'字典导出',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2023-08-05 09:39:39','',NULL,''),(1030,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1031,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2023-08-05 09:39:39','',NULL,''),(1032,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1033,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1034,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2023-08-05 09:39:39','',NULL,''),(1035,'公告查询',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1036,'公告新增',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2023-08-05 09:39:39','',NULL,''),(1037,'公告修改',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1038,'公告删除',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1039,'操作查询',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1040,'操作删除',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1041,'日志导出',500,3,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2023-08-05 09:39:39','',NULL,''),(1042,'登录查询',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1043,'登录删除',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1044,'日志导出',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2023-08-05 09:39:39','',NULL,''),(1045,'账户解锁',501,4,'#','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2023-08-05 09:39:39','',NULL,''),(1046,'在线查询',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1047,'批量强退',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2023-08-05 09:39:39','',NULL,''),(1048,'单条强退',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2023-08-05 09:39:39','',NULL,''),(1049,'任务查询',110,1,'#','','',1,0,'F','0','0','monitor:job:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1050,'任务新增',110,2,'#','','',1,0,'F','0','0','monitor:job:add','#','admin','2023-08-05 09:39:39','',NULL,''),(1051,'任务修改',110,3,'#','','',1,0,'F','0','0','monitor:job:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1052,'任务删除',110,4,'#','','',1,0,'F','0','0','monitor:job:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1053,'状态修改',110,5,'#','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2023-08-05 09:39:39','',NULL,''),(1054,'任务导出',110,6,'#','','',1,0,'F','0','0','monitor:job:export','#','admin','2023-08-05 09:39:39','',NULL,''),(1055,'生成查询',116,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2023-08-05 09:39:39','',NULL,''),(1056,'生成修改',116,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2023-08-05 09:39:39','',NULL,''),(1057,'生成删除',116,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2023-08-05 09:39:39','',NULL,''),(1058,'导入代码',116,4,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2023-08-05 09:39:39','',NULL,''),(1059,'预览代码',116,5,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2023-08-05 09:39:39','',NULL,''),(1060,'生成代码',116,6,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2023-08-05 09:39:39','',NULL,''),(2000,'学校管理',0,2,'school',NULL,NULL,1,0,'M','0','0','','tree','admin','2023-08-08 09:19:33','admin','2023-08-08 09:19:58',''),(2001,'学生管理',2000,1,'students','school/student/index',NULL,1,0,'C','0','0','','color','admin','2023-08-08 09:21:10','admin','2023-08-08 09:25:33',''),(2003,'班级管理',2000,1,'classes','school/classes/index',NULL,1,0,'C','0','0','school:classes:list','color','admin','2023-08-09 10:52:19','admin','2023-08-17 11:21:27','学生班级菜单'),(2004,'学生班级查询',2003,1,'#','',NULL,1,0,'F','0','0','school:classes:query','#','admin','2023-08-09 10:52:19','',NULL,''),(2005,'学生班级新增',2003,2,'#','',NULL,1,0,'F','0','0','school:classes:add','#','admin','2023-08-09 10:52:19','',NULL,''),(2006,'学生班级修改',2003,3,'#','',NULL,1,0,'F','0','0','school:classes:edit','#','admin','2023-08-09 10:52:19','',NULL,''),(2007,'学生班级删除',2003,4,'#','',NULL,1,0,'F','0','0','school:classes:remove','#','admin','2023-08-09 10:52:19','',NULL,''),(2008,'学生班级导出',2003,5,'#','',NULL,1,0,'F','0','0','school:classes:export','#','admin','2023-08-09 10:52:19','',NULL,''),(2015,'年级管理',2000,1,'grades','school/grades/index',NULL,1,0,'C','0','0','school:grades:list','color','admin','2023-08-14 10:20:47','admin','2023-08-17 11:21:36','学生年级菜单'),(2016,'学生年级查询',2015,1,'#','',NULL,1,0,'F','0','0','school:grades:query','#','admin','2023-08-14 10:20:47','',NULL,''),(2017,'学生年级新增',2015,2,'#','',NULL,1,0,'F','0','0','school:grades:add','#','admin','2023-08-14 10:20:47','',NULL,''),(2018,'学生年级修改',2015,3,'#','',NULL,1,0,'F','0','0','school:grades:edit','#','admin','2023-08-14 10:20:47','',NULL,''),(2019,'学生年级删除',2015,4,'#','',NULL,1,0,'F','0','0','school:grades:remove','#','admin','2023-08-14 10:20:47','',NULL,''),(2020,'学生年级导出',2015,5,'#','',NULL,1,0,'F','0','0','school:grades:export','#','admin','2023-08-14 10:20:47','',NULL,''),(2021,'教师管理',2000,1,'teacher','school/teacher/index',NULL,1,0,'C','0','0','school:teacher:list','color','admin','2023-08-15 09:05:40','admin','2023-08-17 11:21:41','教师管理菜单'),(2022,'教师管理查询',2021,1,'#','',NULL,1,0,'F','0','0','school:teacher:query','#','admin','2023-08-15 09:05:40','',NULL,''),(2023,'教师管理新增',2021,2,'#','',NULL,1,0,'F','0','0','school:teacher:add','#','admin','2023-08-15 09:05:40','',NULL,''),(2024,'教师管理修改',2021,3,'#','',NULL,1,0,'F','0','0','school:teacher:edit','#','admin','2023-08-15 09:05:40','',NULL,''),(2025,'教师管理删除',2021,4,'#','',NULL,1,0,'F','0','0','school:teacher:remove','#','admin','2023-08-15 09:05:40','',NULL,''),(2026,'教师管理导出',2021,5,'#','',NULL,1,0,'F','0','0','school:teacher:export','#','admin','2023-08-15 09:05:40','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',_binary '新版本内容','0','admin','2023-08-05 09:39:44','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',_binary '维护内容','0','admin','2023-08-05 09:39:44','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sch_student\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-07 17:09:39',229),(101,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin',NULL,'/tool/gen/1','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-07 17:28:34',88),(102,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sch_student\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-07 17:28:39',80),(103,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"student\",\"className\":\"SchStudent\",\"columns\":[{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID\",\"columnId\":12,\"columnName\":\"student_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":13,\"columnName\":\"student_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentSex\",\"columnComment\":\"学生性别\",\"columnId\":14,\"columnName\":\"student_sex\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"studentSex\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentBirthday\",\"columnComment\":\"出生日期\",\"columnId\":15,\"columnName\":\"student_birthday\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"studentBir','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-07 17:37:23',84),(104,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"student\",\"className\":\"SchStudent\",\"columns\":[{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID\",\"columnId\":12,\"columnName\":\"student_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-08-07 17:37:23\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":13,\"columnName\":\"student_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-08-07 17:37:23\",\"usableColumn\":false},{\"capJavaField\":\"StudentSex\",\"columnComment\":\"学生性别\",\"columnId\":14,\"columnName\":\"student_sex\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"studentSex\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-08-07 17:37:23\",\"usableColumn\":false},{\"capJavaField\":\"StudentBirthday\",\"columnComment\":\"出生日期\",\"columnId\":15,\"columnName\":\"student_birthday\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-07 17:37:41',69),(105,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"student\",\"className\":\"SchStudent\",\"columns\":[{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID\",\"columnId\":12,\"columnName\":\"student_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-08-07 17:37:41\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":13,\"columnName\":\"student_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-08-07 17:37:41\",\"usableColumn\":false},{\"capJavaField\":\"StudentSex\",\"columnComment\":\"学生性别\",\"columnId\":14,\"columnName\":\"student_sex\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"studentSex\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-08-07 17:37:41\",\"usableColumn\":false},{\"capJavaField\":\"StudentBirthday\",\"columnComment\":\"出生日期\",\"columnId\":15,\"columnName\":\"student_birthday\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-07 17:38:18',58),(106,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_student\"}',NULL,0,NULL,'2023-08-07 17:40:28',51),(107,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学校关联\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"school\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 09:19:33',66),(108,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-08-08 09:19:33\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"学校管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"school\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 09:19:58',49),(109,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"/school/index\",\"createBy\":\"admin\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学生管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"students\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 09:21:10',66),(110,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/index\",\"createTime\":\"2023-08-08 09:21:10\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"学生管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"students\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 09:21:57',101),(111,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/index\",\"createTime\":\"2023-08-08 09:21:10\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"学生管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"school/students\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 09:23:48',54),(112,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/student/index\",\"createTime\":\"2023-08-08 09:21:10\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"学生管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"students\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 09:25:33',48),(113,'学生信息',1,'com.ruoyi.web.controller.school.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-08 09:26:14\",\"params\":{},\"remark\":\"我回家\",\"studentAddress\":\"上海\",\"studentBirthday\":\"2023-08-09\",\"studentId\":1,\"studentName\":\"张三\",\"studentPhone\":\"19339590796\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 09:26:14',55),(114,'学生信息',2,'com.ruoyi.web.controller.school.SchStudentController.edit()','PUT',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-08 09:26:15\",\"params\":{},\"remark\":\"我回家\",\"studentAddress\":\"上海\",\"studentBirthday\":\"2023-08-09\",\"studentId\":1,\"studentName\":\"张三\",\"studentPhone\":\"11011011011\",\"updateTime\":\"2023-08-08 09:38:56\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 09:38:56',50),(115,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"student\",\"className\":\"SchStudent\",\"columns\":[{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID\",\"columnId\":12,\"columnName\":\"student_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-08-07 17:38:18\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":13,\"columnName\":\"student_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-08-07 17:38:18\",\"usableColumn\":false},{\"capJavaField\":\"StudentSex\",\"columnComment\":\"学生性别\",\"columnId\":14,\"columnName\":\"student_sex\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"studentSex\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-08-07 17:38:18\",\"usableColumn\":false},{\"capJavaField\":\"StudentBirthday\",\"columnComment\":\"出生日期\",\"columnId\":15,\"columnName\":\"student_birthday\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 17:28:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"incre','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 09:46:08',104),(116,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_student\"}',NULL,0,NULL,'2023-08-08 15:26:48',251),(117,'学生信息',2,'com.ruoyi.web.controller.school.SchStudentController.edit()','PUT',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-08 09:26:15\",\"params\":{},\"remark\":\"我回家\",\"studentAddress\":\"上海\",\"studentBirthday\":\"2023-08-09\",\"studentId\":1,\"studentName\":\"张三\",\"studentPhone\":\"11011011011\",\"studentSex\":\"0\",\"updateTime\":\"2023-08-08 15:33:45\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 15:33:45',51),(118,'学生信息',1,'com.ruoyi.web.controller.school.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-08 15:34:13\",\"params\":{},\"studentBirthday\":\"2023-08-09\",\"studentId\":2,\"studentName\":\"张三\",\"studentSex\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 15:34:13',81),(119,'学生信息',1,'com.ruoyi.web.controller.school.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-08 15:34:35\",\"params\":{},\"studentBirthday\":\"2023-08-24\",\"studentId\":3,\"studentName\":\"张三\",\"studentPhone\":\"21\",\"studentSex\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 15:34:35',55),(120,'学生信息',1,'com.ruoyi.web.controller.school.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-08 15:35:55\",\"params\":{},\"studentId\":4,\"studentName\":\"张三\",\"studentSex\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-08 15:35:56',52),(121,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/class/index\",\"createBy\":\"admin\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"班级管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"class\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:02:50',65),(122,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sch_class\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:03:20',181),(123,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin',NULL,'/tool/gen/3','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:03:27',70),(124,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sch_class\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:04:19',106),(125,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classes\",\"className\":\"SchClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":32,\"columnName\":\"class_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"班级名称\",\"columnId\":33,\"columnName\":\"class_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeacherId\",\"columnComment\":\"班级任ID\",\"columnId\":34,\"columnName\":\"teacher_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"teacherId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Capacity\",\"columnComment\":\"班级容量\",\"columnId\":35,\"columnName\":\"capacity\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"capacity\",\"javaType\":\"Long\",\"list','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:10:06',69),(126,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_class\"}',NULL,0,NULL,'2023-08-09 10:10:10',63),(127,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classes\",\"className\":\"SchClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":32,\"columnName\":\"class_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-09 10:10:06\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"班级名称\",\"columnId\":33,\"columnName\":\"class_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-09 10:10:06\",\"usableColumn\":false},{\"capJavaField\":\"TeacherId\",\"columnComment\":\"班级任ID\",\"columnId\":34,\"columnName\":\"teacher_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"teacherId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-09 10:10:06\",\"usableColumn\":false},{\"capJavaField\":\"Capacity\",\"columnComment\":\"班级容量\",\"columnId\":35,\"columnName\":\"capacity\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:21:44',99),(128,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_class\"}',NULL,0,NULL,'2023-08-09 10:25:05',183),(129,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/classes/index\",\"createTime\":\"2023-08-09 10:02:50\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"班级管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"class\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:30:49',68),(130,'学生班级',1,'com.ruoyi.web.controller.school.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":12,\"classId\":1,\"className\":\"测试班级\",\"createTime\":\"2023-08-09 10:34:23\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:34:23',51),(131,'学生班级',2,'com.ruoyi.web.controller.school.SchClassController.edit()','PUT',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":124,\"classId\":1,\"className\":\"测试班级\",\"createTime\":\"2023-08-09 10:34:23\",\"params\":{},\"updateTime\":\"2023-08-09 10:34:32\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:34:32',36),(132,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2003','127.0.0.1','内网IP','{}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2023-08-09 10:55:24',6),(133,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2002','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:57:48',77),(134,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2009','127.0.0.1','内网IP','{}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2023-08-09 10:57:57',3),(135,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2010','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:58:05',55),(136,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2011','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:58:07',33),(137,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2012','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:58:11',50),(138,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2014','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:58:13',51),(139,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2013','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:58:16',51),(140,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2009','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 10:58:19',57),(141,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_class\"}',NULL,0,NULL,'2023-08-09 15:06:50',272),(142,'代码生成',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin',NULL,'/tool/gen/synchDb/sch_student','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 15:07:20',180),(143,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classes\",\"className\":\"SchClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":32,\"columnName\":\"class_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-09 10:21:44\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"班级名称\",\"columnId\":33,\"columnName\":\"class_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-09 10:21:44\",\"usableColumn\":false},{\"capJavaField\":\"TeacherId\",\"columnComment\":\"班级任ID\",\"columnId\":34,\"columnName\":\"teacher_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"teacherId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-09 10:21:44\",\"usableColumn\":false},{\"capJavaField\":\"Capacity\",\"columnComment\":\"班级容量\",\"columnId\":35,\"columnName\":\"capacity\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 15:12:24',111),(144,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_student\"}',NULL,0,NULL,'2023-08-09 15:12:27',42),(145,'学生班级',1,'com.ruoyi.web.controller.school.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":31,\"classId\":2,\"className\":\"计算机信息管理一班\",\"createTime\":\"2023-08-09 15:17:59\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 15:18:00',70),(146,'学生信息',1,'com.ruoyi.web.controller.school.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":2,\"createTime\":\"2023-08-09 15:18:47\",\"params\":{},\"studentAddress\":\"上海\",\"studentBirthday\":\"2023-08-09\",\"studentId\":5,\"studentName\":\"刘德华\",\"studentPhone\":\"110112\",\"studentSex\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 15:18:47',46),(147,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":2,\"createTime\":\"2023-08-09 17:54:21\",\"params\":{},\"studentBirthday\":\"2023-08-17\",\"studentId\":6,\"studentName\":\"赵四\",\"studentPhone\":\"130\",\"studentSex\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-09 17:54:21',75),(148,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-11 14:36:14\",\"params\":{},\"studentId\":7,\"studentName\":\"宙斯\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-11 14:36:14',59),(149,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-11 14:36:22\",\"params\":{},\"studentId\":8,\"studentName\":\"李克\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-11 14:36:22',107),(150,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-11 14:36:28\",\"params\":{},\"studentId\":9,\"studentName\":\"刘禅\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-11 14:36:28',69),(151,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-11 14:36:38\",\"params\":{},\"studentId\":10,\"studentName\":\"李宁\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-11 14:36:38',42),(152,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-11 14:36:48\",\"params\":{},\"studentId\":11,\"studentName\":\"赵四\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-11 14:36:48',44),(153,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sch_grades\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 10:12:11',127),(154,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"grades\",\"className\":\"SchGrades\",\"columns\":[{\"capJavaField\":\"GradeId\",\"columnComment\":\"年级id\",\"columnId\":42,\"columnName\":\"grade_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 10:12:11\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"gradeId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GradeName\",\"columnComment\":\"年级名称\",\"columnId\":43,\"columnName\":\"grade_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 10:12:11\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"gradeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":44,\"columnName\":\"create_by\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 10:12:11\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"javaField\":\"createBy\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":45,\"columnName\":\"create_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 10:12:11\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 10:13:27',80),(155,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_grades\"}',NULL,0,NULL,'2023-08-14 10:13:33',330),(156,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/grades/index\",\"createTime\":\"2023-08-14 10:20:47\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"年级管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"grades\",\"perms\":\"school:grades:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 11:19:26',54),(157,'代码生成',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin',NULL,'/tool/gen/synchDb/sch_class','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 11:39:14',136),(158,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classes\",\"className\":\"SchClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":32,\"columnName\":\"class_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 11:39:14\",\"usableColumn\":false},{\"capJavaField\":\"GradesId\",\"columnComment\":\"年级ID\",\"columnId\":49,\"columnName\":\"grades_id\",\"columnType\":\"bigint\",\"createBy\":\"\",\"createTime\":\"2023-08-14 11:39:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"gradesId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"班级名称\",\"columnId\":33,\"columnName\":\"class_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 11:39:14\",\"usableColumn\":false},{\"capJavaField\":\"Capacity\",\"columnComment\":\"班级容量\",\"columnId\":35,\"columnName\":\"capacity\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 11:40:26',90),(159,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_class\"}',NULL,0,NULL,'2023-08-14 11:40:37',224),(160,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classes\",\"className\":\"SchClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":32,\"columnName\":\"class_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 11:40:26\",\"usableColumn\":false},{\"capJavaField\":\"GradesId\",\"columnComment\":\"年级ID\",\"columnId\":49,\"columnName\":\"grades_id\",\"columnType\":\"bigint\",\"createBy\":\"\",\"createTime\":\"2023-08-14 11:39:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"gradesId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 11:40:26\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"班级名称\",\"columnId\":33,\"columnName\":\"class_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 11:40:26\",\"usableColumn\":false},{\"capJavaField\":\"Capacity\",\"columnComment\":\"班级容量\",\"columnId\":35,\"columnName\":\"capacity\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIn','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:10:32',97),(161,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classes\",\"className\":\"SchClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":32,\"columnName\":\"class_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 14:10:32\",\"usableColumn\":false},{\"capJavaField\":\"GradesId\",\"columnComment\":\"年级ID\",\"columnId\":49,\"columnName\":\"grades_id\",\"columnType\":\"bigint\",\"createBy\":\"\",\"createTime\":\"2023-08-14 11:39:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"gradesId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 14:10:32\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"班级名称\",\"columnId\":33,\"columnName\":\"class_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 14:10:32\",\"usableColumn\":false},{\"capJavaField\":\"Capacity\",\"columnComment\":\"班级容量\",\"columnId\":35,\"columnName\":\"capacity\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-09 10:04:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isInc','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:11:09',69),(162,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin',NULL,'/tool/gen/4','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:15:11',65),(163,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sch_class\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:15:15',103),(164,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin',NULL,'/tool/gen/5','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:16:50',74),(165,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin',NULL,'/tool/gen/6','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:16:56',74),(166,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sch_grades,sch_class\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:17:02',171),(167,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classes\",\"className\":\"SchClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":59,\"columnName\":\"class_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GradeId\",\"columnComment\":\"年级\",\"columnId\":60,\"columnName\":\"grade_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"gradeId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"班级名称\",\"columnId\":61,\"columnName\":\"class_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Capacity\",\"columnComment\":\"班级容量\",\"columnId\":62,\"columnName\":\"capacity\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"capacity\",\"javaType\":\"Long\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:18:56',65),(168,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_class\"}',NULL,0,NULL,'2023-08-14 14:18:58',45),(169,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classes\",\"className\":\"SchClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"班级ID\",\"columnId\":59,\"columnName\":\"class_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 14:18:56\",\"usableColumn\":false},{\"capJavaField\":\"GradeId\",\"columnComment\":\"年级\",\"columnId\":60,\"columnName\":\"grade_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"gradeId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 14:18:56\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"班级名称\",\"columnId\":61,\"columnName\":\"class_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-08-14 14:18:56\",\"usableColumn\":false},{\"capJavaField\":\"Capacity\",\"columnComment\":\"班级容量\",\"columnId\":62,\"columnName\":\"capacity\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isInc','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:27:32',116),(170,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_class\"}',NULL,0,NULL,'2023-08-14 14:27:34',43),(171,'学生年级',1,'com.ruoyi.school.controller.SchGradesController.add()','POST',1,'admin',NULL,'/school/grades','127.0.0.1','内网IP','{\"createTime\":\"2023-08-14 14:36:36\",\"gradeName\":\"三年级\",\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\xiangtong\\ruoyi-demo\\RuoYi-Vue\\ruoyi-school\\target\\classes\\mapper\\school\\SchGradesMapper.xml]\r\n### The error may involve com.ruoyi.school.mapper.SchGradesMapper.insertSchGrades-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sch_grades          ( grade_name,                          create_time )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value\n; Field \'grade_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value','2023-08-14 14:36:36',88),(172,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"grades\",\"className\":\"SchGrades\",\"columns\":[{\"capJavaField\":\"GradeId\",\"columnComment\":\"年级id\",\"columnId\":68,\"columnName\":\"grade_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"gradeId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GradeName\",\"columnComment\":\"年级名称\",\"columnId\":69,\"columnName\":\"grade_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"gradeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":70,\"columnName\":\"create_by\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"javaField\":\"createBy\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":71,\"columnName\":\"create_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-08-14 14:17:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 14:38:24',91),(173,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_grades\"}',NULL,0,NULL,'2023-08-14 14:38:28',29),(174,'学生年级',1,'com.ruoyi.school.controller.SchGradesController.add()','POST',1,'admin',NULL,'/school/grades','127.0.0.1','内网IP','{\"createTime\":\"2023-08-14 14:41:45\",\"gradeName\":\"三年级\",\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\xiangtong\\ruoyi-demo\\RuoYi-Vue\\ruoyi-school\\target\\classes\\mapper\\school\\SchGradesMapper.xml]\r\n### The error may involve com.ruoyi.school.mapper.SchGradesMapper.insertSchGrades-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sch_grades          ( grade_name,                          create_time )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value\n; Field \'grade_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value','2023-08-14 14:41:45',3),(175,'学生年级',1,'com.ruoyi.school.controller.SchGradesController.add()','POST',1,'admin',NULL,'/school/grades','127.0.0.1','内网IP','{\"createTime\":\"2023-08-14 14:42:19\",\"gradeName\":\"三年级\",\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\xiangtong\\ruoyi-demo\\RuoYi-Vue\\ruoyi-school\\target\\classes\\mapper\\school\\SchGradesMapper.xml]\r\n### The error may involve com.ruoyi.school.mapper.SchGradesMapper.insertSchGrades-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sch_grades          ( grade_name,                          create_time )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value\n; Field \'grade_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value','2023-08-14 14:42:20',2),(176,'班级年级',1,'com.ruoyi.school.controller.SchGradesController.add()','POST',1,'admin',NULL,'/school/grades','127.0.0.1','内网IP','{\"createTime\":\"2023-08-14 15:07:43\",\"gradeName\":\"三年级\",\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\xiangtong\\ruoyi-demo\\RuoYi-Vue\\ruoyi-school\\target\\classes\\mapper\\school\\SchGradesMapper.xml]\r\n### The error may involve com.ruoyi.school.mapper.SchGradesMapper.insertSchGrades-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sch_grades          ( grade_name,                          create_time )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value\n; Field \'grade_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'grade_id\' doesn\'t have a default value','2023-08-14 15:07:43',57),(177,'班级年级',1,'com.ruoyi.school.controller.SchGradesController.add()','POST',1,'admin',NULL,'/school/grades','127.0.0.1','内网IP','{\"createTime\":\"2023-08-14 15:11:10\",\"gradeName\":\"三年级\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 15:11:10',49),(178,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":50,\"classId\":3,\"className\":\"三年级一般\",\"createTime\":\"2023-08-14 15:12:25\",\"gradeId\":1,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 15:12:25',56),(179,'学生班级',2,'com.ruoyi.school.controller.SchClassController.edit()','PUT',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":50,\"classId\":3,\"className\":\"三年级一班\",\"createTime\":\"2023-08-14 15:12:25\",\"gradeId\":1,\"params\":{},\"remark\":\"班级\",\"updateTime\":\"2023-08-14 16:19:13\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 16:19:13',101),(180,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":3,\"createTime\":\"2023-08-14 17:17:10\",\"params\":{},\"studentId\":12,\"studentName\":\"李克\",\"studentSex\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:17:11',98),(181,'班级年级',1,'com.ruoyi.school.controller.SchGradesController.add()','POST',1,'admin',NULL,'/school/grades','127.0.0.1','内网IP','{\"createTime\":\"2023-08-14 17:52:37\",\"gradeName\":\"四年级\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:52:38',112),(182,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":10,\"classId\":4,\"className\":\"菜鸟班级\",\"createTime\":\"2023-08-14 17:53:22\",\"gradeId\":2,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:53:22',55),(183,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":11,\"classId\":5,\"className\":\"金鹰班级\",\"createTime\":\"2023-08-14 17:53:38\",\"gradeId\":1,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:53:38',42),(184,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":31,\"classId\":6,\"className\":\"王者班级\",\"createTime\":\"2023-08-14 17:53:50\",\"gradeId\":2,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:53:50',50),(185,'学生信息',3,'com.ruoyi.school.controller.SchStudentController.remove()','DELETE',1,'admin',NULL,'/school/student/1,2,3,4,5,6,7,8,9,10','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:54:09',55),(186,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"createTime\":\"2023-08-14 17:54:26\",\"params\":{},\"studentId\":13,\"studentName\":\"12213\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:54:26',45),(187,'学生信息',3,'com.ruoyi.school.controller.SchStudentController.remove()','DELETE',1,'admin',NULL,'/school/student/13','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:54:33',34),(188,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":4,\"createTime\":\"2023-08-14 17:57:59\",\"params\":{},\"studentAddress\":\"手动阀手动阀阿斯蒂芬\",\"studentBirthday\":\"2023-08-02\",\"studentId\":14,\"studentName\":\"李青\",\"studentPhone\":\"1231312322\",\"studentSex\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:57:59',50),(189,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":5,\"createTime\":\"2023-08-14 17:58:20\",\"params\":{},\"studentBirthday\":\"2023-08-24\",\"studentId\":15,\"studentName\":\"张师傅\",\"studentSex\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:58:20',69),(190,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":6,\"createTime\":\"2023-08-14 17:58:36\",\"params\":{},\"studentBirthday\":\"2023-08-21\",\"studentId\":16,\"studentName\":\"流川枫\",\"studentSex\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:58:36',40),(191,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":4,\"createTime\":\"2023-08-14 17:58:59\",\"params\":{},\"studentBirthday\":\"2023-08-05\",\"studentId\":17,\"studentName\":\"佐佑\",\"studentSex\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:58:59',47),(192,'学生信息',1,'com.ruoyi.school.controller.SchStudentController.add()','POST',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":6,\"createTime\":\"2023-08-14 17:59:12\",\"params\":{},\"studentId\":18,\"studentName\":\"郭麒麟\",\"studentSex\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-14 17:59:12',52),(193,'班级年级',5,'com.ruoyi.school.controller.SchGradesController.export()','POST',1,'admin',NULL,'/school/grades/export','127.0.0.1','内网IP','{\"pageSize\":\"10\",\"pageNum\":\"1\"}',NULL,0,NULL,'2023-08-14 18:02:33',1015),(194,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sch_teacher\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 09:00:36',167),(195,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"teacher\",\"className\":\"SchTeacher\",\"columns\":[{\"capJavaField\":\"TeacherId\",\"columnComment\":\"老师ID\",\"columnId\":75,\"columnName\":\"teacher_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-15 09:00:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"teacherId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeacherName\",\"columnComment\":\"老师姓名\",\"columnId\":76,\"columnName\":\"teacher_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-15 09:00:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeacherPhone\",\"columnComment\":\"老师电话\",\"columnId\":77,\"columnName\":\"teacher_phone\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-15 09:00:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"teacherPhone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":78,\"columnName\":\"create_by\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-15 09:00:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"javaField\":\"createBy\",\"javaType\":\"String\",\"list\":fa','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 09:02:19',112),(196,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"teacher\",\"className\":\"SchTeacher\",\"columns\":[{\"capJavaField\":\"TeacherId\",\"columnComment\":\"老师ID\",\"columnId\":75,\"columnName\":\"teacher_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-08-15 09:00:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"teacherId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2023-08-15 09:02:19\",\"usableColumn\":false},{\"capJavaField\":\"TeacherName\",\"columnComment\":\"老师姓名\",\"columnId\":76,\"columnName\":\"teacher_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-15 09:00:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2023-08-15 09:02:19\",\"usableColumn\":false},{\"capJavaField\":\"TeacherPhone\",\"columnComment\":\"老师电话\",\"columnId\":77,\"columnName\":\"teacher_phone\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-15 09:00:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"teacherPhone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2023-08-15 09:02:19\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":78,\"columnName\":\"create_by\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-08-15 09:00:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"inse','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 09:02:55',71),(197,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sch_teacher\"}',NULL,0,NULL,'2023-08-15 09:03:29',310),(198,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-15 09:09:45\",\"params\":{},\"teacherId\":1,\"teacherName\":\"皱老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 09:09:45',90),(199,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学校2\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"aa\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 12:18:40',96),(200,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学校3\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2027,\"path\":\"bb\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 12:19:06',51),(201,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学校4\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":2028,\"path\":\"cc\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 12:19:33',61),(202,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学校5\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":2029,\"path\":\"dd\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 12:20:05',45),(203,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/teacher/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"菜单6\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2030,\"path\":\"ee\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 12:21:06',43),(204,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/teacher/index\",\"createTime\":\"2023-08-15 12:21:06\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2031,\"menuName\":\"菜单6\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2030,\"path\":\"ee\",\"perms\":\"aa:bb:cc\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 12:24:07',60),(205,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-15 13:26:40\",\"params\":{},\"teacherId\":2,\"teacherName\":\"李老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 13:26:40',60),(206,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2027','127.0.0.1','内网IP','{}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2023-08-15 13:52:51',3),(207,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2031','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 13:53:04',103),(208,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2030','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 13:53:07',68),(209,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2029','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 13:53:14',37),(210,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2028','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 13:53:18',76),(211,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2027','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-15 13:53:23',55),(212,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-16 09:11:42\",\"params\":{},\"teacherId\":3,\"teacherName\":\"12\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 09:11:42',84),(213,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-16 09:11:45\",\"params\":{},\"teacherId\":4,\"teacherName\":\"333\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 09:11:45',55),(214,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.remove()','DELETE',1,'admin',NULL,'/school/teacher/3,4','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 09:11:56',74),(215,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-16 09:25:19\",\"params\":{},\"teacherId\":5,\"teacherName\":\"112\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 09:25:19',52),(216,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-16 09:25:23\",\"params\":{},\"teacherId\":6,\"teacherName\":\"3\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 09:25:23',66),(217,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.remove()','DELETE',1,'admin',NULL,'/school/teacher/5,6','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 09:25:30',58),(218,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.removeClass()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherUnboundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4],\"teacherId\":2}',NULL,0,NULL,'2023-08-16 11:45:23',5),(219,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3],\"teacherId\":2}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2023-08-16 13:40:58',5),(220,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3],\"teacherId\":2}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2023-08-16 13:43:24',0),(221,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[4],\"teacherId\":2}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2023-08-16 13:46:24',6),(222,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[4],\"teacherId\":2}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2023-08-16 14:02:11',744841),(223,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[4],\"teacherId\":2}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'in\n         (  \n            4\n         )\' at line 1\r\n### The error may exist in file [E:\\xiangtong\\ruoyi-demo\\RuoYi-Vue\\ruoyi-school\\target\\classes\\mapper\\school\\SchTeacherMapper.xml]\r\n### The error may involve com.ruoyi.school.mapper.SchTeacherMapper.deleteSchTeacherClassByTeacherIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from sch_teacher_class where teacher_id = ? and in          (               ?          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'in\n         (  \n            4\n         )\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'in\n         (  \n            4\n         )\' at line 1','2023-08-16 14:02:26',72),(224,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[4],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 14:09:51',52),(225,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":3,\"teacherId\":2}',NULL,1,'nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'classIds\'.  Return value (3) was not iterable.','2023-08-16 14:10:37',3),(226,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":3,\"teacherId\":2}',NULL,1,'nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'classIds\'.  Return value (3) was not iterable.','2023-08-16 14:15:27',1),(227,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 14:15:46',71),(228,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[4],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 16:52:04',72),(229,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[4,5,6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:02:58',67),(230,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[5],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:06:09',73),(231,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:06:11',65),(232,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[4],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:06:14',76),(233,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[4,5,6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:06:17',47),(234,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:53:57',42),(235,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:55:57',49),(236,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:56:02',47),(237,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:56:07',51),(238,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:56:14',51),(239,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:56:49',72),(240,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:56:55',48),(241,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[5,6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:57:15',51),(242,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[5],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:57:20',59),(243,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:57:22',51),(244,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:57:26',56),(245,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:57:32',40),(246,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:57:39',76),(247,'教师管理',3,'com.ruoyi.school.controller.SchTeacherController.remove()','DELETE',1,'admin',NULL,'/school/teacher/1','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:57:50',43),(248,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-16 17:58:02\",\"params\":{},\"teacherId\":7,\"teacherName\":\"周老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:58:02',52),(249,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":7}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 17:58:07',40),(250,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":7}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 18:00:24',44),(251,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":7}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 18:00:28',41),(252,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":7}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 18:00:37',46),(253,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":7}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 18:00:41',66),(254,'教师管理',2,'com.ruoyi.school.controller.SchTeacherController.edit()','PUT',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-16 17:58:02\",\"params\":{},\"teacherId\":7,\"teacherName\":\"周老师\",\"updateTime\":\"2023-08-16 18:04:58\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-16 18:04:58',57),(255,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":7}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 08:41:16',85),(256,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:22:50',49),(257,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":122,\"classId\":7,\"className\":\"普通01班级\",\"createTime\":\"2023-08-17 09:42:05\",\"gradeId\":1,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:42:05',59),(258,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":24,\"classId\":8,\"className\":\"普通02班级\",\"createTime\":\"2023-08-17 09:42:24\",\"gradeId\":1,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:42:24',79),(259,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":1212,\"classId\":9,\"className\":\"普通03班级\",\"createTime\":\"2023-08-17 09:42:30\",\"gradeId\":2,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:42:30',53),(260,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"classId\":10,\"className\":\"普通04班级\",\"createTime\":\"2023-08-17 09:42:38\",\"gradeId\":2,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:42:38',60),(261,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"classId\":11,\"className\":\"普通05班级\",\"createTime\":\"2023-08-17 09:42:49\",\"gradeId\":2,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:42:49',44),(262,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":123,\"classId\":12,\"className\":\"普通06班级\",\"createTime\":\"2023-08-17 09:42:58\",\"gradeId\":2,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:42:58',50),(263,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":12,\"classId\":13,\"className\":\"普通06班级\",\"createTime\":\"2023-08-17 09:43:07\",\"gradeId\":2,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:43:07',47),(264,'学生班级',2,'com.ruoyi.school.controller.SchClassController.edit()','PUT',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"capacity\":12,\"classId\":13,\"className\":\"普通07班级\",\"createTime\":\"2023-08-17 09:43:07\",\"gradeId\":2,\"params\":{},\"updateTime\":\"2023-08-17 09:43:21\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:43:21',49),(265,'学生班级',1,'com.ruoyi.school.controller.SchClassController.add()','POST',1,'admin',NULL,'/school/classes','127.0.0.1','内网IP','{\"classId\":14,\"className\":\"普通08班级\",\"createTime\":\"2023-08-17 09:43:37\",\"gradeId\":2,\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:43:37',59),(266,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[7,8,9,10,11,12,13,14],\"teacherId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 09:43:46',56),(267,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-17 10:36:02\",\"params\":{},\"teacherId\":8,\"teacherName\":\"吴老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:36:02',45),(268,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-17 10:36:12\",\"params\":{},\"teacherId\":9,\"teacherName\":\" 成老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:36:13',171),(269,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-17 10:36:19\",\"params\":{},\"teacherId\":10,\"teacherName\":\"杨老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:36:20',76),(270,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-17 10:36:25\",\"params\":{},\"teacherId\":11,\"teacherName\":\"马老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:36:25',42),(271,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-17 10:36:40\",\"params\":{},\"teacherId\":12,\"teacherName\":\"何老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:36:40',34),(272,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-17 10:36:49\",\"params\":{},\"teacherId\":13,\"teacherName\":\"敏老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:36:49',48),(273,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-17 10:36:56\",\"params\":{},\"teacherId\":14,\"teacherName\":\"齐老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:36:56',39),(274,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-17 10:37:05\",\"params\":{},\"teacherId\":15,\"teacherName\":\"南老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:37:05',59),(275,'教师管理',1,'com.ruoyi.school.controller.SchTeacherController.add()','POST',1,'admin',NULL,'/school/teacher','127.0.0.1','内网IP','{\"createTime\":\"2023-08-17 10:37:10\",\"params\":{},\"teacherId\":16,\"teacherName\":\"黑老师\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:37:10',66),(276,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[7,8,9,10,11,12,13,14],\"teacherId\":7}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:37:29',44),(277,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12],\"teacherId\":8}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:37:38',45),(278,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[13,14],\"teacherId\":8}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:37:44',59),(279,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12],\"teacherId\":12}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:37:49',60),(280,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12],\"teacherId\":14}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 10:37:56',34),(281,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[14,13],\"teacherId\":15}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:06:03',45),(282,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:06:20',52),(283,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:06:24',58),(284,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:06:42',41),(285,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[13,14],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:06:46',65),(286,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[13,14],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:06:55',36),(287,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[13,14],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:07:25',41),(288,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[13,14],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:07:45',101),(289,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[13,14],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:09:01',42),(290,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12,13,14],\"teacherId\":7}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:09:30',47),(291,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12,13,14],\"teacherId\":7}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:09:39',26),(292,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12],\"teacherId\":8}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:14:47',26),(293,'学生信息',2,'com.ruoyi.school.controller.SchStudentController.edit()','PUT',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":7,\"createTime\":\"2023-08-14 17:58:37\",\"params\":{},\"studentBirthday\":\"2023-08-21\",\"studentId\":16,\"studentName\":\"流川枫\",\"studentSex\":\"0\",\"updateTime\":\"2023-08-17 11:16:47\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:16:47',61),(294,'教师班级',3,'com.ruoyi.school.controller.SchTeacherController.deleteTeacherBoundClasses()','POST',1,'admin',NULL,'/school/teacher/deleteTeacherBoundClasses','127.0.0.1','内网IP','{\"classIds\":[3,4,5,6,7,8,9,10,11,12,13,14],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:18:17',52),(295,'教师班级',1,'com.ruoyi.school.controller.SchTeacherController.addTeacherBoundClass()','POST',1,'admin',NULL,'/school/teacher/addTeacherBoundClass','127.0.0.1','内网IP','{\"classIds\":[3],\"teacherId\":13}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:18:26',45),(296,'学生信息',2,'com.ruoyi.school.controller.SchStudentController.edit()','PUT',1,'admin',NULL,'/school/student','127.0.0.1','内网IP','{\"classId\":3,\"createTime\":\"2023-08-11 14:36:48\",\"params\":{},\"studentId\":11,\"studentName\":\"赵四\",\"updateTime\":\"2023-08-17 11:18:41\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:18:41',40),(297,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/classes/index\",\"createTime\":\"2023-08-09 10:52:19\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"班级管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"classes\",\"perms\":\"school:classes:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:21:27',54),(298,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/grades/index\",\"createTime\":\"2023-08-14 10:20:47\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"年级管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"grades\",\"perms\":\"school:grades:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:21:36',38),(299,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"school/teacher/index\",\"createTime\":\"2023-08-15 09:05:40\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2021,\"menuName\":\"教师管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"teacher\",\"perms\":\"school:teacher:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-08-17 11:21:41',35);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2023-08-05 09:39:37','',NULL,''),(2,'se','项目经理',2,'0','admin','2023-08-05 09:39:37','',NULL,''),(3,'hr','人力资源',3,'0','admin','2023-08-05 09:39:37','',NULL,''),(4,'user','普通员工',4,'0','admin','2023-08-05 09:39:37','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2023-08-05 09:39:38','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2023-08-05 09:39:38','',NULL,'普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,117),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2023-08-17 13:34:59','admin','2023-08-05 09:39:37','','2023-08-17 13:34:59','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2023-08-05 11:02:22','admin','2023-08-05 09:39:37','','2023-08-05 11:02:22','测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 15:11:10
