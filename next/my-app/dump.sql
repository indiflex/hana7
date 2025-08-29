-- MySQL dump 10.13  Distrib 9.3.0, for macos15.4 (arm64)
--
-- Host: 127.0.0.1    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `BATCH_JOB_EXECUTION`
--

DROP TABLE IF EXISTS `BATCH_JOB_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATCH_JOB_EXECUTION` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `VERSION` bigint DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EXIT_CODE` varchar(2500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`),
  CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `BATCH_JOB_INSTANCE` (`JOB_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATCH_JOB_EXECUTION`
--

LOCK TABLES `BATCH_JOB_EXECUTION` WRITE;
/*!40000 ALTER TABLE `BATCH_JOB_EXECUTION` DISABLE KEYS */;
INSERT INTO `BATCH_JOB_EXECUTION` VALUES (1,2,1,'2025-08-08 13:23:51.353722','2025-08-08 13:23:51.384672','2025-08-08 13:23:51.444019','FAILED','FAILED','org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:155)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.file.FlatFileItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoService.runBatch(MemoService.java:29)\n	at com.hana7.springdemo.jpa.controlle','2025-08-08 13:23:51.444679'),(2,2,2,'2025-08-08 13:24:43.431071','2025-08-08 13:24:43.453515','2025-08-08 13:24:43.499641','FAILED','FAILED','org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:155)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.file.FlatFileItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoService.runBatch(MemoService.java:29)\n	at com.hana7.springdemo.jpa.controlle','2025-08-08 13:24:43.500157'),(3,2,3,'2025-08-08 13:28:01.844408','2025-08-08 13:28:01.861172','2025-08-08 13:28:01.905648','FAILED','FAILED','org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:155)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.file.FlatFileItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoService.runBatch(MemoService.java:30)\n	at com.hana7.springdemo.jpa.controlle','2025-08-08 13:28:01.906105'),(4,2,4,'2025-08-08 13:29:16.935538','2025-08-08 13:29:16.953206','2025-08-08 13:29:17.058394','FAILED','FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement [Column \'statedAt\' cannot be null] [insert into Memo (memoText,state,statedAt) values (?,?,?)]; SQL [insert into Memo (memoText,state,statedAt) values (?,?,?)]; constraint [null]\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:294)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:256)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:241)\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:560)\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:343)\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:160)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:165)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:223)\n	at jdk.proxy4/jdk.proxy4.$Proxy204.save(Unknown Source)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.util.MethodInvoker.invoke(MethodInvoker.java:283)\n	at org.springframework.batch.item.data.RepositoryItemWriter.doInvoke(RepositoryItemWriter.java:147)\n	at org.springframework.batch.item.data.RepositoryItemWriter.doWrite(RepositoryItemWriter.java:120)\n	at org.springframework.batch.item.data.RepositoryItemWriter.write(RepositoryItemWriter.java:96)\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeIte','2025-08-08 13:29:17.058871'),(5,2,5,'2025-08-08 13:30:47.816811','2025-08-08 13:30:47.834195','2025-08-08 13:30:47.936880','COMPLETED','COMPLETED','','2025-08-08 13:30:47.937401'),(6,2,6,'2025-08-08 13:31:22.683132','2025-08-08 13:31:22.691803','2025-08-08 13:31:22.739459','COMPLETED','COMPLETED','','2025-08-08 13:31:22.740166'),(7,2,7,'2025-08-08 13:31:33.299620','2025-08-08 13:31:33.307400','2025-08-08 13:31:33.345327','COMPLETED','COMPLETED','','2025-08-08 13:31:33.345833'),(8,2,8,'2025-08-08 13:34:30.100988','2025-08-08 13:34:30.117949','2025-08-08 13:34:30.224054','COMPLETED','COMPLETED','','2025-08-08 13:34:30.224693'),(9,2,9,'2025-08-08 14:11:48.643054','2025-08-08 14:11:48.665509','2025-08-08 14:11:48.769284','COMPLETED','COMPLETED','','2025-08-08 14:11:48.769770'),(10,2,10,'2025-08-08 15:11:09.658614','2025-08-08 15:11:09.683127','2025-08-08 15:11:09.741100','FAILED','FAILED','org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:155)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.file.FlatFileItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoServiceImpl.runBatch(MemoServiceImpl.java:28)\n	at com.hana7.springdemo.jpa.c','2025-08-08 15:11:09.741878'),(11,2,11,'2025-08-08 15:12:17.099144','2025-08-08 15:12:17.118273','2025-08-08 15:12:17.233503','COMPLETED','COMPLETED','','2025-08-08 15:12:17.234099'),(12,2,12,'2025-08-08 15:48:53.292736','2025-08-08 15:48:53.308965','2025-08-08 15:48:53.406138','COMPLETED','COMPLETED','','2025-08-08 15:48:53.406628'),(13,2,13,'2025-08-08 15:50:01.297543','2025-08-08 15:50:01.313299','2025-08-08 15:50:01.418537','COMPLETED','COMPLETED','','2025-08-08 15:50:01.419024'),(14,2,14,'2025-08-08 15:51:41.467143','2025-08-08 15:51:41.484409','2025-08-08 15:51:41.575780','COMPLETED','COMPLETED','','2025-08-08 15:51:41.576244'),(15,2,15,'2025-08-08 15:55:22.862705','2025-08-08 15:55:22.881920','2025-08-08 15:55:22.977384','COMPLETED','COMPLETED','','2025-08-08 15:55:22.978048'),(16,2,16,'2025-08-08 16:29:23.437735','2025-08-08 16:29:23.457163','2025-08-08 16:29:23.581574','COMPLETED','COMPLETED','','2025-08-08 16:29:23.582699'),(17,2,17,'2025-08-08 16:31:06.757607','2025-08-08 16:31:06.774639','2025-08-08 16:31:06.902222','COMPLETED','COMPLETED','','2025-08-08 16:31:06.902815'),(18,2,18,'2025-08-08 16:32:08.379134','2025-08-08 16:32:08.393995','2025-08-08 16:32:08.456429','COMPLETED','COMPLETED','','2025-08-08 16:32:08.457132'),(19,2,19,'2025-08-08 16:32:43.159698','2025-08-08 16:32:43.176838','2025-08-08 16:32:43.283836','COMPLETED','COMPLETED','','2025-08-08 16:32:43.284931'),(20,2,20,'2025-08-08 16:34:45.333190','2025-08-08 16:34:45.351720','2025-08-08 16:34:45.470102','COMPLETED','COMPLETED','','2025-08-08 16:34:45.470879'),(21,2,21,'2025-08-08 16:41:10.346995','2025-08-08 16:41:10.364642','2025-08-08 16:41:10.501246','COMPLETED','COMPLETED','','2025-08-08 16:41:10.501957'),(22,2,22,'2025-08-08 16:45:48.858713','2025-08-08 16:45:48.876873','2025-08-08 16:45:48.979278','COMPLETED','COMPLETED','','2025-08-08 16:45:48.979862'),(23,2,23,'2025-08-08 16:47:09.931577','2025-08-08 16:47:09.940780','2025-08-08 16:47:09.990984','COMPLETED','COMPLETED','','2025-08-08 16:47:09.991360'),(24,2,24,'2025-08-08 16:47:46.752495','2025-08-08 16:47:46.772746','2025-08-08 16:47:46.865961','COMPLETED','COMPLETED','','2025-08-08 16:47:46.866433'),(25,2,25,'2025-08-08 16:55:51.295898','2025-08-08 16:55:51.316280','2025-08-08 16:55:51.432356','COMPLETED','COMPLETED','','2025-08-08 16:55:51.432998'),(26,2,26,'2025-08-11 08:26:49.329944','2025-08-11 08:26:49.378161','2025-08-11 08:26:49.493360','COMPLETED','COMPLETED','','2025-08-11 08:26:49.493841'),(27,2,27,'2025-08-11 17:14:10.662955','2025-08-11 17:14:10.681512','2025-08-11 17:14:10.799272','COMPLETED','COMPLETED','','2025-08-11 17:14:10.799743'),(28,2,28,'2025-08-11 17:18:18.196528','2025-08-11 17:18:18.218578','2025-08-11 17:18:18.259499','FAILED','FAILED','org.springframework.beans.factory.BeanCreationException: Error creating bean with name \'scopedTarget.statReader\' defined in class path resource [com/hana7/springdemo/config/OrderBatchConfig.class]: A sort is required\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1826)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:607)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:529)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$1(AbstractBeanFactory.java:378)\n	at org.springframework.batch.core.scope.StepScope.get(StepScope.java:112)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:375)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\n	at org.springframework.aop.target.SimpleBeanTargetSource.getTarget(SimpleBeanTargetSource.java:35)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:712)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoServiceImpl.runStatBatch(MemoServiceImpl.java:44)\n	at com.hana7.springdemo.jpa.controller.PublicController.runStatBatch(PublicController.java:27)\n	at java.base/jdk.internal.reflect.NativeMethodAcce','2025-08-11 17:18:18.259940'),(29,2,29,'2025-08-11 17:21:50.598993','2025-08-11 17:21:50.618519','2025-08-11 17:21:50.673213','FAILED','FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy4.$Proxy195.getTodayStat(java.lang.String,org.springframework.data.domain.PageRequest)\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:277)\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:240)\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:179)\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.read(<generated>)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\n	at org.','2025-08-11 17:21:50.673712'),(30,2,30,'2025-08-11 17:28:23.592626','2025-08-11 17:28:23.608817','2025-08-11 17:28:23.649682','FAILED','FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy7.$Proxy285.getTodayStat(java.lang.String,org.springframework.data.domain.PageRequest)\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:277)\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:240)\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:179)\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.read(<generated>)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\n	at org.','2025-08-11 17:28:23.650105'),(31,2,31,'2025-08-11 17:29:43.142063','2025-08-11 17:29:43.162586','2025-08-11 17:29:43.204747','FAILED','FAILED','org.springframework.beans.factory.BeanCreationException: Error creating bean with name \'scopedTarget.statReader\' defined in class path resource [com/hana7/springdemo/config/OrderBatchConfig.class]: A sort is required\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1826)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:607)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:529)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$1(AbstractBeanFactory.java:378)\n	at org.springframework.batch.core.scope.StepScope.get(StepScope.java:112)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:375)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\n	at org.springframework.aop.target.SimpleBeanTargetSource.getTarget(SimpleBeanTargetSource.java:35)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:712)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoServiceImpl.runStatBatch(MemoServiceImpl.java:44)\n	at com.hana7.springdemo.jpa.controller.PublicController.runStatBatch(PublicController.java:27)\n	at java.base/jdk.internal.reflect.NativeMethodAcce','2025-08-11 17:29:43.205265'),(32,2,32,'2025-08-11 17:32:23.629289','2025-08-11 17:32:23.645646','2025-08-11 17:32:23.689492','FAILED','FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy4.$Proxy195.findByCreatedAtBetween(java.time.LocalDateTime,java.time.LocalDateTime,org.springframework.data.domain.PageRequest)\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:277)\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:240)\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:179)\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.read(<generated>)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\n	at org.springframework.batch.repeat.support.RepeatTemplate.','2025-08-11 17:32:23.689964'),(33,2,33,'2025-08-11 17:34:29.346130','2025-08-11 17:34:29.365352','2025-08-11 17:34:29.417692','FAILED','FAILED','org.springframework.data.mapping.PropertyReferenceException: No property \'saledt\' found for type \'Orders\'\n	at org.springframework.data.mapping.PropertyPath.<init>(PropertyPath.java:94)\n	at org.springframework.data.mapping.PropertyPath.create(PropertyPath.java:455)\n	at org.springframework.data.mapping.PropertyPath.create(PropertyPath.java:431)\n	at org.springframework.data.mapping.PropertyPath.lambda$from$0(PropertyPath.java:384)\n	at java.base/java.util.concurrent.ConcurrentMap.computeIfAbsent(ConcurrentMap.java:330)\n	at org.springframework.data.mapping.PropertyPath.from(PropertyPath.java:366)\n	at org.springframework.data.mapping.PropertyPath.from(PropertyPath.java:344)\n	at org.springframework.data.jpa.repository.query.QueryUtils.toJpaOrder(QueryUtils.java:725)\n	at org.springframework.data.jpa.repository.query.QueryUtils.toOrders(QueryUtils.java:678)\n	at org.springframework.data.jpa.repository.query.JpaQueryCreator.complete(JpaQueryCreator.java:195)\n	at org.springframework.data.jpa.repository.query.JpaQueryCreator.complete(JpaQueryCreator.java:142)\n	at org.springframework.data.jpa.repository.query.JpaQueryCreator.complete(JpaQueryCreator.java:1)\n	at org.springframework.data.repository.query.parser.AbstractQueryCreator.createQuery(AbstractQueryCreator.java:95)\n	at org.springframework.data.jpa.repository.query.PartTreeJpaQuery$QueryPreparer.createQuery(PartTreeJpaQuery.java:239)\n	at org.springframework.data.jpa.repository.query.PartTreeJpaQuery.doCreateQuery(PartTreeJpaQuery.java:114)\n	at org.springframework.data.jpa.repository.query.AbstractJpaQuery.createQuery(AbstractJpaQuery.java:251)\n	at org.springframework.data.jpa.repository.query.JpaQueryExecution$CollectionExecution.doExecute(JpaQueryExecution.java:130)\n	at org.springframework.data.jpa.repository.query.JpaQueryExecution.execute(JpaQueryExecution.java:93)\n	at org.springframework.data.jpa.repository.query.AbstractJpaQuery.doExecute(AbstractJpaQuery.java:160)\n	at org.springframework.data.jpa.repository.query.AbstractJpaQuery.execute(AbstractJpaQuery.java:148)\n	at org.springframework.data.repository.core.support.RepositoryMethodInvoker.doInvoke(RepositoryMethodInvoker.java:170)\n	at org.springframework.data.repository.core.support.RepositoryMethodInvoker.invoke(RepositoryMethodInvoker.java:158)\n	at org.springframework.data.repository.core.support.QueryExecutorMethodInterceptor.doInvoke(QueryExecutorMethodInterceptor.java:170)\n	at org.springframework.data.repository.core.support.QueryExecutorMethodIntercept','2025-08-11 17:34:29.418289'),(34,2,34,'2025-08-12 07:55:59.777715','2025-08-12 07:55:59.794957','2025-08-12 07:55:59.883240','COMPLETED','COMPLETED','','2025-08-12 07:55:59.883679'),(35,2,35,'2025-08-12 07:58:13.951925','2025-08-12 07:58:13.972234','2025-08-12 07:58:14.119901','COMPLETED','COMPLETED','','2025-08-12 07:58:14.120329'),(36,2,36,'2025-08-12 08:07:52.210862','2025-08-12 08:07:52.237102','2025-08-12 08:07:52.377270','COMPLETED','COMPLETED','','2025-08-12 08:07:52.377725'),(37,2,37,'2025-08-12 08:11:23.981209','2025-08-12 08:11:23.999203','2025-08-12 08:11:24.124806','COMPLETED','COMPLETED','','2025-08-12 08:11:24.125354'),(38,2,38,'2025-08-12 08:12:28.556457','2025-08-12 08:12:28.565838','2025-08-12 08:12:28.609454','COMPLETED','COMPLETED','','2025-08-12 08:12:28.609918'),(39,2,39,'2025-08-12 08:43:18.124410','2025-08-12 08:43:18.143340','2025-08-12 08:43:18.275388','COMPLETED','COMPLETED','','2025-08-12 08:43:18.275868'),(40,2,40,'2025-08-12 08:44:21.746289','2025-08-12 08:44:21.754551','2025-08-12 08:44:21.794871','COMPLETED','COMPLETED','','2025-08-12 08:44:21.795344'),(41,2,41,'2025-08-12 08:45:29.904298','2025-08-12 08:45:29.920589','2025-08-12 08:45:30.054580','COMPLETED','COMPLETED','','2025-08-12 08:45:30.055090'),(42,2,42,'2025-08-12 08:48:08.620308','2025-08-12 08:48:08.638217','2025-08-12 08:48:08.823106','FAILED','FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement [Cannot add or update a child row: a foreign key constraint fails (`testdb`.`saleitemstat`, CONSTRAINT `fk_SaleItemStat_saledt_SaleStat` FOREIGN KEY (`saledt`) REFERENCES `salestat` (`saledt`) ON DELETE CASCADE)] [insert into SaleItemStat (amt,cnt,item,saledt) values (?,?,?,?)]; SQL [insert into SaleItemStat (amt,cnt,item,saledt) values (?,?,?,?)]; constraint [null]\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:294)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:256)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:241)\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:560)\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:343)\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:160)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:165)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:223)\n	at jdk.proxy4/jdk.proxy4.$Proxy196.save(Unknown Source)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.util.MethodInvoker.invoke(MethodInvoker.java:283)\n	at org.springframework.batch.item.data.RepositoryItemWriter.doInvoke(RepositoryItemWriter.java:147)\n	at org.springframework.batch.item.data.RepositoryItemWriter.doWrite(RepositoryIt','2025-08-12 08:48:08.823582'),(43,2,43,'2025-08-12 08:49:51.067928','2025-08-12 08:49:51.084858','2025-08-12 08:49:51.196635','COMPLETED','COMPLETED','','2025-08-12 08:49:51.197079'),(44,2,44,'2025-08-12 08:50:41.471788','2025-08-12 08:50:41.496404','2025-08-12 08:50:41.604363','FAILED','FAILED','org.springframework.orm.jpa.JpaSystemException: identifier of an instance of com.hana7.springdemo.jpa.entity.SaleStat was altered from 2025-08-12 to today\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:348)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:256)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:241)\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:560)\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:343)\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:160)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:136)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:223)\n	at jdk.proxy4/jdk.proxy4.$Proxy195.getTodayItemStat(Unknown Source)\n	at com.hana7.springdemo.config.OrderBatchConfig.lambda$statProcessor$1(OrderBatchConfig.java:72)\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doProcess(SimpleChunkProcessor.java:146)\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.transform(SimpleChunkProcessor.java:322)\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:220)\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:75)\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:383)\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:307)\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\n	at org.springframework.batch.','2025-08-12 08:50:41.604903'),(45,2,45,'2025-08-12 08:55:43.107871','2025-08-12 08:55:43.124305','2025-08-12 08:55:43.233896','FAILED','FAILED','org.springframework.orm.jpa.JpaSystemException: identifier of an instance of com.hana7.springdemo.jpa.entity.SaleStat was altered from 2025-08-12 to today\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:348)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:256)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:241)\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:560)\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:343)\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:160)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:136)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:223)\n	at jdk.proxy4/jdk.proxy4.$Proxy195.getTodayItemStat(Unknown Source)\n	at com.hana7.springdemo.config.OrderBatchConfig.lambda$statProcessor$1(OrderBatchConfig.java:74)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137','2025-08-12 08:55:43.234345'),(46,2,46,'2025-08-12 08:56:20.596651','2025-08-12 08:56:20.613963','2025-08-12 08:56:20.747898','COMPLETED','COMPLETED','','2025-08-12 08:56:20.748396'),(47,2,47,'2025-08-12 08:57:33.269665','2025-08-12 08:57:33.285945','2025-08-12 08:57:33.437314','COMPLETED','COMPLETED','','2025-08-12 08:57:33.437823'),(48,2,48,'2025-08-12 09:18:28.046102','2025-08-12 09:18:28.063492','2025-08-12 09:18:28.206616','COMPLETED','COMPLETED','','2025-08-12 09:18:28.207139');
/*!40000 ALTER TABLE `BATCH_JOB_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BATCH_JOB_EXECUTION_CONTEXT`
--

DROP TABLE IF EXISTS `BATCH_JOB_EXECUTION_CONTEXT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATCH_JOB_EXECUTION_CONTEXT` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `SHORT_CONTEXT` varchar(2500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SERIALIZED_CONTEXT` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_CTX_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATCH_JOB_EXECUTION_CONTEXT`
--

LOCK TABLES `BATCH_JOB_EXECUTION_CONTEXT` WRITE;
/*!40000 ALTER TABLE `BATCH_JOB_EXECUTION_CONTEXT` DISABLE KEYS */;
INSERT INTO `BATCH_JOB_EXECUTION_CONTEXT` VALUES (1,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(2,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(3,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(4,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(5,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(6,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(7,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(8,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(9,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(10,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(11,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(12,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(13,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(14,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(15,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(16,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(17,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(18,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(19,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(20,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(21,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(22,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(23,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(24,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(25,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(26,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(27,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(28,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(29,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(30,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(31,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(32,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(33,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(34,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(35,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(36,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(37,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(38,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(39,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(40,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(41,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(42,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(43,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(44,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(45,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(46,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(47,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(48,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL);
/*!40000 ALTER TABLE `BATCH_JOB_EXECUTION_CONTEXT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BATCH_JOB_EXECUTION_PARAMS`
--

DROP TABLE IF EXISTS `BATCH_JOB_EXECUTION_PARAMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATCH_JOB_EXECUTION_PARAMS` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `PARAMETER_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PARAMETER_TYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PARAMETER_VALUE` varchar(2500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IDENTIFYING` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATCH_JOB_EXECUTION_PARAMS`
--

LOCK TABLES `BATCH_JOB_EXECUTION_PARAMS` WRITE;
/*!40000 ALTER TABLE `BATCH_JOB_EXECUTION_PARAMS` DISABLE KEYS */;
INSERT INTO `BATCH_JOB_EXECUTION_PARAMS` VALUES (1,'filePath','java.lang.String','','Y'),(1,'time','java.lang.Long','1754627031281','Y'),(2,'filePath','java.lang.String','','Y'),(2,'time','java.lang.Long','1754627083380','Y'),(3,'time','java.lang.Long','1754627281796','Y'),(4,'time','java.lang.Long','1754627356888','Y'),(5,'time','java.lang.Long','1754627447764','Y'),(6,'time','java.lang.Long','1754627482653','Y'),(7,'time','java.lang.Long','1754627493269','Y'),(8,'time','java.lang.Long','1754627670063','Y'),(9,'time','java.lang.Long','1754629908591','Y'),(10,'time','java.lang.Long','1754633469580','Y'),(11,'time','java.lang.Long','1754633537045','Y'),(12,'time','java.lang.Long','1754635733231','Y'),(13,'time','java.lang.Long','1754635801243','Y'),(14,'time','java.lang.Long','1754635901417','Y'),(15,'time','java.lang.Long','1754636122816','Y'),(16,'time','java.lang.Long','1754638163387','Y'),(17,'time','java.lang.Long','1754638266703','Y'),(18,'time','java.lang.Long','1754638328338','Y'),(19,'time','java.lang.Long','1754638363110','Y'),(20,'time','java.lang.Long','1754638485284','Y'),(21,'time','java.lang.Long','1754638870281','Y'),(22,'time','java.lang.Long','1754639148787','Y'),(23,'time','java.lang.Long','1754639229884','Y'),(24,'time','java.lang.Long','1754639266709','Y'),(25,'time','java.lang.Long','1754639751260','Y'),(26,'time','java.lang.Long','1754868409258','Y'),(27,'time','java.lang.Long','1754900050633','Y'),(28,'saledt','java.lang.String','2025-08-11','Y'),(28,'time','java.lang.Long','1754900298150','Y'),(29,'saledt','java.lang.String','2025-08-11','Y'),(29,'time','java.lang.Long','1754900510550','Y'),(30,'saledt','java.lang.String','2025-08-11','Y'),(30,'time','java.lang.Long','1754900903560','Y'),(31,'saledt','java.lang.String','2025-08-11','Y'),(31,'time','java.lang.Long','1754900983095','Y'),(32,'saledt','java.lang.String','2025-08-11','Y'),(32,'time','java.lang.Long','1754901143585','Y'),(33,'saledt','java.lang.String','2025-08-11','Y'),(33,'time','java.lang.Long','1754901269296','Y'),(34,'saledt','java.lang.String','2025-08-12','Y'),(34,'time','java.lang.Long','1754952959737','Y'),(35,'saledt','java.lang.String','2025-08-12','Y'),(35,'time','java.lang.Long','1754953093900','Y'),(36,'saledt','java.lang.String','2025-08-12','Y'),(36,'time','java.lang.Long','1754953672166','Y'),(37,'saledt','java.lang.String','2025-08-12','Y'),(37,'time','java.lang.Long','1754953883933','Y'),(38,'saledt','java.lang.String','2025-08-12','Y'),(38,'time','java.lang.Long','1754953948525','Y'),(39,'saledt','java.lang.String','2025-08-12','Y'),(39,'time','java.lang.Long','1754955798071','Y'),(40,'saledt','java.lang.String','2025-08-12','Y'),(40,'time','java.lang.Long','1754955861716','Y'),(41,'saledt','java.lang.String','2025-08-12','Y'),(41,'time','java.lang.Long','1754955929853','Y'),(42,'saledt','java.lang.String','2025-08-12','Y'),(42,'time','java.lang.Long','1754956088576','Y'),(43,'saledt','java.lang.String','2025-08-12','Y'),(43,'time','java.lang.Long','1754956191017','Y'),(44,'saledt','java.lang.String','2025-08-12','Y'),(44,'time','java.lang.Long','1754956241412','Y'),(45,'saledt','java.lang.String','2025-08-12','Y'),(45,'time','java.lang.Long','1754956543053','Y'),(46,'saledt','java.lang.String','2025-08-12','Y'),(46,'time','java.lang.Long','1754956580553','Y'),(47,'saledt','java.lang.String','2025-08-12','Y'),(47,'time','java.lang.Long','1754956653226','Y'),(48,'saledt','java.lang.String','2025-08-12','Y'),(48,'time','java.lang.Long','1754957908005','Y');
/*!40000 ALTER TABLE `BATCH_JOB_EXECUTION_PARAMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BATCH_JOB_EXECUTION_SEQ`
--

DROP TABLE IF EXISTS `BATCH_JOB_EXECUTION_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATCH_JOB_EXECUTION_SEQ` (
  `ID` bigint NOT NULL,
  `UNIQUE_KEY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATCH_JOB_EXECUTION_SEQ`
--

LOCK TABLES `BATCH_JOB_EXECUTION_SEQ` WRITE;
/*!40000 ALTER TABLE `BATCH_JOB_EXECUTION_SEQ` DISABLE KEYS */;
INSERT INTO `BATCH_JOB_EXECUTION_SEQ` VALUES (48,'0');
/*!40000 ALTER TABLE `BATCH_JOB_EXECUTION_SEQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BATCH_JOB_INSTANCE`
--

DROP TABLE IF EXISTS `BATCH_JOB_INSTANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATCH_JOB_INSTANCE` (
  `JOB_INSTANCE_ID` bigint NOT NULL,
  `VERSION` bigint DEFAULT NULL,
  `JOB_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_KEY` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`JOB_INSTANCE_ID`),
  UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATCH_JOB_INSTANCE`
--

LOCK TABLES `BATCH_JOB_INSTANCE` WRITE;
/*!40000 ALTER TABLE `BATCH_JOB_INSTANCE` DISABLE KEYS */;
INSERT INTO `BATCH_JOB_INSTANCE` VALUES (1,0,'csvJob','5595a5b7559d1a84dfe624209f695d01'),(2,0,'csvJob','db444d81780adc628202a154edde84f4'),(3,0,'csvJob','874ea7cd9bdbcd9a06d388129107689b'),(4,0,'csvJob','282814b5786fb52082c88c8bdac2fe39'),(5,0,'csvJob','6ec20e247eed3466c5818656aa5e08d3'),(6,0,'csvJob','4d78fad9dd2688cac1d718e7d69ad445'),(7,0,'csvJob','5df3559c2eae57741349061dc0d2b57b'),(8,0,'csvJob','b208edd78572370e9f5dd016a00627f0'),(9,0,'csvJob','75606fddce10afec3a52caf141c6424b'),(10,0,'csvJob','946c2333ce8c9e3abfe7fcbc2003272d'),(11,0,'csvJob','47bd12164c0fb4106735309c56e5ba1c'),(12,0,'csvJob','5e0b30d2280b88cb76b1b5f757a609cf'),(13,0,'csvJob','48facd5af4b4709755fc54d2963ebb40'),(14,0,'csvJob','3b91bfda5f039a46fda92000152755f7'),(15,0,'csvJob','ca3c6cf0832c7db96f2a62ed7350087f'),(16,0,'csvJob','fba79279337b762ea86eda5ca46cdc9d'),(17,0,'csvJob','ef578d148cbe38928ad5c4dcecef429f'),(18,0,'csvJob','9ed0739df3feda66af2fdb64f2e29a5b'),(19,0,'csvJob','4007abbf58b2b8bf1f826b27a1f0d5e7'),(20,0,'csvJob','5b9f7c5844f8fd742348f52ba518de0b'),(21,0,'csvJob','ed8823d4344be2fc52d58bb39518af69'),(22,0,'csvJob','b4d0b4d4de8178bd1000dd91c2414a17'),(23,0,'csvJob','8e216e8c2062e9ca50f7b15a800b08ce'),(24,0,'csvJob','cf4a013d1d399fb1c31ff241f5841c30'),(25,0,'csvJob','547e7e5d6bbd2d8fe876873f5f99c54c'),(26,0,'csvJob','8bd7aa1b7ecd68320e8f6bf13315309b'),(27,0,'csvJob','2004f16b43f552a1efaa8f703469f4f7'),(28,0,'statJob','094c45a979e310f93ee737d3de656c14'),(29,0,'statJob','ed2171f19ef042b9b34120d8b7f2f582'),(30,0,'statJob','caaba32e063ddc8d171b117064289ec2'),(31,0,'statJob','dec786b32d91c69237008a87c96c9600'),(32,0,'statJob','e246d046bc09e0e682f5bad60cc550d7'),(33,0,'statJob','72830cb3d4b3fd32070c1e22332fc31d'),(34,0,'statJob','443f14b0a93543e257656fc6d7213cdb'),(35,0,'statJob','331ef1bd1fbbe73413633024d1d7019f'),(36,0,'statJob','6f9e91ca0fd7f65f84908fb00796df83'),(37,0,'statJob','74f352f72ba3350488168401d428d30f'),(38,0,'statJob','5cdc6aa94a3419381c359a9cbc61d6ac'),(39,0,'statJob','14cb1a0cb1630203204c9fe936b697d6'),(40,0,'statJob','c9c5f1f803dcd2be233f74610e249a45'),(41,0,'statJob','85e9a7b85b4b746dd28b4da2b817b101'),(42,0,'statJob','85c3c0788a09b85719180f8cd5639d7d'),(43,0,'statJob','8a35d2c6ae4eca342fa0a58078d8e52d'),(44,0,'statJob','8425584fc2e85e04da20b2cf95d3b08e'),(45,0,'statJob','e12cde6955d16b98288340201387c718'),(46,0,'statJob','0f9045353245a9002ac658547d5fe2a9'),(47,0,'statJob','aebeab76ef1b22b09b58454bee708626'),(48,0,'statJob','97e841e5afb846a2f7133293869ac823');
/*!40000 ALTER TABLE `BATCH_JOB_INSTANCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BATCH_JOB_SEQ`
--

DROP TABLE IF EXISTS `BATCH_JOB_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATCH_JOB_SEQ` (
  `ID` bigint NOT NULL,
  `UNIQUE_KEY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATCH_JOB_SEQ`
--

LOCK TABLES `BATCH_JOB_SEQ` WRITE;
/*!40000 ALTER TABLE `BATCH_JOB_SEQ` DISABLE KEYS */;
INSERT INTO `BATCH_JOB_SEQ` VALUES (48,'0');
/*!40000 ALTER TABLE `BATCH_JOB_SEQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BATCH_STEP_EXECUTION`
--

DROP TABLE IF EXISTS `BATCH_STEP_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATCH_STEP_EXECUTION` (
  `STEP_EXECUTION_ID` bigint NOT NULL,
  `VERSION` bigint NOT NULL,
  `STEP_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COMMIT_COUNT` bigint DEFAULT NULL,
  `READ_COUNT` bigint DEFAULT NULL,
  `FILTER_COUNT` bigint DEFAULT NULL,
  `WRITE_COUNT` bigint DEFAULT NULL,
  `READ_SKIP_COUNT` bigint DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint DEFAULT NULL,
  `ROLLBACK_COUNT` bigint DEFAULT NULL,
  `EXIT_CODE` varchar(2500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATCH_STEP_EXECUTION`
--

LOCK TABLES `BATCH_STEP_EXECUTION` WRITE;
/*!40000 ALTER TABLE `BATCH_STEP_EXECUTION` DISABLE KEYS */;
INSERT INTO `BATCH_STEP_EXECUTION` VALUES (1,2,'csvStep',1,'2025-08-08 13:23:51.400312','2025-08-08 13:23:51.408782','2025-08-08 13:23:51.428537','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:155)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.file.FlatFileItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoService.runBatch(MemoService.java:29)\n	at com.hana7.springdemo.jpa.controlle','2025-08-08 13:23:51.434906'),(2,2,'csvStep',2,'2025-08-08 13:24:43.464216','2025-08-08 13:24:43.471636','2025-08-08 13:24:43.487788','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:155)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.file.FlatFileItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoService.runBatch(MemoService.java:29)\n	at com.hana7.springdemo.jpa.controlle','2025-08-08 13:24:43.491992'),(3,2,'csvStep',3,'2025-08-08 13:28:01.872322','2025-08-08 13:28:01.879622','2025-08-08 13:28:01.894280','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:155)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.file.FlatFileItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoService.runBatch(MemoService.java:30)\n	at com.hana7.springdemo.jpa.controlle','2025-08-08 13:28:01.898503'),(4,2,'csvStep',4,'2025-08-08 13:29:16.964000','2025-08-08 13:29:16.971520','2025-08-08 13:29:17.044980','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement [Column \'statedAt\' cannot be null] [insert into Memo (memoText,state,statedAt) values (?,?,?)]; SQL [insert into Memo (memoText,state,statedAt) values (?,?,?)]; constraint [null]\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:294)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:256)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:241)\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:560)\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:343)\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:160)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:165)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:223)\n	at jdk.proxy4/jdk.proxy4.$Proxy204.save(Unknown Source)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.util.MethodInvoker.invoke(MethodInvoker.java:283)\n	at org.springframework.batch.item.data.RepositoryItemWriter.doInvoke(RepositoryItemWriter.java:147)\n	at org.springframework.batch.item.data.RepositoryItemWriter.doWrite(RepositoryItemWriter.java:120)\n	at org.springframework.batch.item.data.RepositoryItemWriter.write(RepositoryItemWriter.java:96)\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeIte','2025-08-08 13:29:17.050528'),(5,3,'csvStep',5,'2025-08-08 13:30:47.845935','2025-08-08 13:30:47.854348','2025-08-08 13:30:47.924369','COMPLETED',1,2,0,2,0,0,0,0,'COMPLETED','','2025-08-08 13:30:47.927282'),(6,3,'csvStep',6,'2025-08-08 13:31:22.700927','2025-08-08 13:31:22.708262','2025-08-08 13:31:22.730276','COMPLETED',1,2,0,2,0,0,0,0,'COMPLETED','','2025-08-08 13:31:22.733302'),(7,3,'csvStep',7,'2025-08-08 13:31:33.315652','2025-08-08 13:31:33.322674','2025-08-08 13:31:33.337147','COMPLETED',1,2,0,2,0,0,0,0,'COMPLETED','','2025-08-08 13:31:33.339679'),(8,3,'csvStep',8,'2025-08-08 13:34:30.129098','2025-08-08 13:34:30.136545','2025-08-08 13:34:30.214572','COMPLETED',1,2,0,2,0,0,0,0,'COMPLETED','','2025-08-08 13:34:30.217824'),(9,3,'csvStep',9,'2025-08-08 14:11:48.680790','2025-08-08 14:11:48.689353','2025-08-08 14:11:48.759719','COMPLETED',1,2,0,2,0,0,0,0,'COMPLETED','','2025-08-08 14:11:48.762670'),(10,2,'csvStep',10,'2025-08-08 15:11:09.697988','2025-08-08 15:11:09.707044','2025-08-08 15:11:09.725633','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:155)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.file.FlatFileItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoServiceImpl.runBatch(MemoServiceImpl.java:28)\n	at com.hana7.springdemo.jpa.c','2025-08-08 15:11:09.732262'),(11,3,'csvStep',11,'2025-08-08 15:12:17.132102','2025-08-08 15:12:17.140602','2025-08-08 15:12:17.221224','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 15:12:17.225271'),(12,3,'csvStep',12,'2025-08-08 15:48:53.319575','2025-08-08 15:48:53.326096','2025-08-08 15:48:53.396162','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 15:48:53.399046'),(13,3,'csvStep',13,'2025-08-08 15:50:01.323119','2025-08-08 15:50:01.330032','2025-08-08 15:50:01.408305','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 15:50:01.412148'),(14,3,'csvStep',14,'2025-08-08 15:51:41.494780','2025-08-08 15:51:41.502297','2025-08-08 15:51:41.566422','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 15:51:41.569504'),(15,3,'csvStep',15,'2025-08-08 15:55:22.893453','2025-08-08 15:55:22.900257','2025-08-08 15:55:22.968324','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 15:55:22.971289'),(16,3,'csvStep',16,'2025-08-08 16:29:23.471950','2025-08-08 16:29:23.488567','2025-08-08 16:29:23.569313','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:29:23.574170'),(17,3,'csvStep',17,'2025-08-08 16:31:06.797374','2025-08-08 16:31:06.806409','2025-08-08 16:31:06.889118','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:31:06.893225'),(18,3,'csvStep',18,'2025-08-08 16:32:08.406547','2025-08-08 16:32:08.416890','2025-08-08 16:32:08.445142','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:32:08.448164'),(19,3,'csvStep',19,'2025-08-08 16:32:43.188937','2025-08-08 16:32:43.197334','2025-08-08 16:32:43.272776','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:32:43.276415'),(20,3,'csvStep',20,'2025-08-08 16:34:45.365441','2025-08-08 16:34:45.381865','2025-08-08 16:34:45.457522','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:34:45.461581'),(21,3,'csvStep',21,'2025-08-08 16:41:10.377316','2025-08-08 16:41:10.386658','2025-08-08 16:41:10.483132','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:41:10.487990'),(22,3,'csvStep',22,'2025-08-08 16:45:48.888772','2025-08-08 16:45:48.895745','2025-08-08 16:45:48.970392','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:45:48.973164'),(23,3,'csvStep',23,'2025-08-08 16:47:09.952204','2025-08-08 16:47:09.959968','2025-08-08 16:47:09.982353','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:47:09.985077'),(24,3,'csvStep',24,'2025-08-08 16:47:46.784336','2025-08-08 16:47:46.791804','2025-08-08 16:47:46.855723','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:47:46.859068'),(25,3,'csvStep',25,'2025-08-08 16:55:51.329796','2025-08-08 16:55:51.337640','2025-08-08 16:55:51.420143','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-08 16:55:51.424258'),(26,3,'csvStep',26,'2025-08-11 08:26:49.390805','2025-08-11 08:26:49.398472','2025-08-11 08:26:49.482892','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-11 08:26:49.486508'),(27,3,'csvStep',27,'2025-08-11 17:14:10.693634','2025-08-11 17:14:10.701910','2025-08-11 17:14:10.789215','COMPLETED',1,4,0,4,0,0,0,0,'COMPLETED','','2025-08-11 17:14:10.792670'),(28,2,'statStep',28,'2025-08-11 17:18:18.229511','2025-08-11 17:18:18.236850','2025-08-11 17:18:18.247711','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.beans.factory.BeanCreationException: Error creating bean with name \'scopedTarget.statReader\' defined in class path resource [com/hana7/springdemo/config/OrderBatchConfig.class]: A sort is required\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1826)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:607)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:529)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$1(AbstractBeanFactory.java:378)\n	at org.springframework.batch.core.scope.StepScope.get(StepScope.java:112)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:375)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\n	at org.springframework.aop.target.SimpleBeanTargetSource.getTarget(SimpleBeanTargetSource.java:35)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:712)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoServiceImpl.runStatBatch(MemoServiceImpl.java:44)\n	at com.hana7.springdemo.jpa.controller.PublicController.runStatBatch(PublicController.java:27)\n	at java.base/jdk.internal.reflect.NativeMethodAcce','2025-08-11 17:18:18.252122'),(29,2,'statStep',29,'2025-08-11 17:21:50.632857','2025-08-11 17:21:50.642268','2025-08-11 17:21:50.663775','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy4.$Proxy195.getTodayStat(java.lang.String,org.springframework.data.domain.PageRequest)\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:277)\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:240)\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:179)\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.read(<generated>)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\n	at org.','2025-08-11 17:21:50.667255'),(30,2,'statStep',30,'2025-08-11 17:28:23.617764','2025-08-11 17:28:23.625513','2025-08-11 17:28:23.641081','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy7.$Proxy285.getTodayStat(java.lang.String,org.springframework.data.domain.PageRequest)\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:277)\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:240)\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:179)\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.read(<generated>)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\n	at org.','2025-08-11 17:28:23.643605'),(31,2,'statStep',31,'2025-08-11 17:29:43.173172','2025-08-11 17:29:43.180533','2025-08-11 17:29:43.191440','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.beans.factory.BeanCreationException: Error creating bean with name \'scopedTarget.statReader\' defined in class path resource [com/hana7/springdemo/config/OrderBatchConfig.class]: A sort is required\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1826)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:607)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:529)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$1(AbstractBeanFactory.java:378)\n	at org.springframework.batch.core.scope.StepScope.get(StepScope.java:112)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:375)\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\n	at org.springframework.aop.target.SimpleBeanTargetSource.getTarget(SimpleBeanTargetSource.java:35)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:712)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.open(<generated>)\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:138)\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:287)\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:227)\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:153)\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:408)\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:127)\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:307)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher$1.run(TaskExecutorJobLauncher.java:155)\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\n	at org.springframework.batch.core.launch.support.TaskExecutorJobLauncher.run(TaskExecutorJobLauncher.java:146)\n	at com.hana7.springdemo.jpa.service.MemoServiceImpl.runStatBatch(MemoServiceImpl.java:44)\n	at com.hana7.springdemo.jpa.controller.PublicController.runStatBatch(PublicController.java:27)\n	at java.base/jdk.internal.reflect.NativeMethodAcce','2025-08-11 17:29:43.195660'),(32,2,'statStep',32,'2025-08-11 17:32:23.654901','2025-08-11 17:32:23.661163','2025-08-11 17:32:23.680437','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy4.$Proxy195.findByCreatedAtBetween(java.time.LocalDateTime,java.time.LocalDateTime,org.springframework.data.domain.PageRequest)\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:277)\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:240)\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:179)\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:728)\n	at org.springframework.batch.item.data.RepositoryItemReader$$SpringCGLIB$$0.read(<generated>)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\n	at org.springframework.batch.repeat.support.RepeatTemplate.','2025-08-11 17:32:23.683354'),(33,2,'statStep',33,'2025-08-11 17:34:29.375073','2025-08-11 17:34:29.382354','2025-08-11 17:34:29.408494','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.data.mapping.PropertyReferenceException: No property \'saledt\' found for type \'Orders\'\n	at org.springframework.data.mapping.PropertyPath.<init>(PropertyPath.java:94)\n	at org.springframework.data.mapping.PropertyPath.create(PropertyPath.java:455)\n	at org.springframework.data.mapping.PropertyPath.create(PropertyPath.java:431)\n	at org.springframework.data.mapping.PropertyPath.lambda$from$0(PropertyPath.java:384)\n	at java.base/java.util.concurrent.ConcurrentMap.computeIfAbsent(ConcurrentMap.java:330)\n	at org.springframework.data.mapping.PropertyPath.from(PropertyPath.java:366)\n	at org.springframework.data.mapping.PropertyPath.from(PropertyPath.java:344)\n	at org.springframework.data.jpa.repository.query.QueryUtils.toJpaOrder(QueryUtils.java:725)\n	at org.springframework.data.jpa.repository.query.QueryUtils.toOrders(QueryUtils.java:678)\n	at org.springframework.data.jpa.repository.query.JpaQueryCreator.complete(JpaQueryCreator.java:195)\n	at org.springframework.data.jpa.repository.query.JpaQueryCreator.complete(JpaQueryCreator.java:142)\n	at org.springframework.data.jpa.repository.query.JpaQueryCreator.complete(JpaQueryCreator.java:1)\n	at org.springframework.data.repository.query.parser.AbstractQueryCreator.createQuery(AbstractQueryCreator.java:95)\n	at org.springframework.data.jpa.repository.query.PartTreeJpaQuery$QueryPreparer.createQuery(PartTreeJpaQuery.java:239)\n	at org.springframework.data.jpa.repository.query.PartTreeJpaQuery.doCreateQuery(PartTreeJpaQuery.java:114)\n	at org.springframework.data.jpa.repository.query.AbstractJpaQuery.createQuery(AbstractJpaQuery.java:251)\n	at org.springframework.data.jpa.repository.query.JpaQueryExecution$CollectionExecution.doExecute(JpaQueryExecution.java:130)\n	at org.springframework.data.jpa.repository.query.JpaQueryExecution.execute(JpaQueryExecution.java:93)\n	at org.springframework.data.jpa.repository.query.AbstractJpaQuery.doExecute(AbstractJpaQuery.java:160)\n	at org.springframework.data.jpa.repository.query.AbstractJpaQuery.execute(AbstractJpaQuery.java:148)\n	at org.springframework.data.repository.core.support.RepositoryMethodInvoker.doInvoke(RepositoryMethodInvoker.java:170)\n	at org.springframework.data.repository.core.support.RepositoryMethodInvoker.invoke(RepositoryMethodInvoker.java:158)\n	at org.springframework.data.repository.core.support.QueryExecutorMethodInterceptor.doInvoke(QueryExecutorMethodInterceptor.java:170)\n	at org.springframework.data.repository.core.support.QueryExecutorMethodIntercept','2025-08-11 17:34:29.411793'),(34,3,'statStep',34,'2025-08-12 07:55:59.805466','2025-08-12 07:55:59.812164','2025-08-12 07:55:59.874656','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 07:55:59.877147'),(35,3,'statStep',35,'2025-08-12 07:58:13.990177','2025-08-12 07:58:13.999811','2025-08-12 07:58:14.110195','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 07:58:14.113665'),(36,3,'statStep',36,'2025-08-12 08:07:52.248332','2025-08-12 08:07:52.255525','2025-08-12 08:07:52.367186','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 08:07:52.370806'),(37,3,'statStep',37,'2025-08-12 08:11:24.009365','2025-08-12 08:11:24.016019','2025-08-12 08:11:24.115676','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 08:11:24.118466'),(38,3,'statStep',38,'2025-08-12 08:12:28.575573','2025-08-12 08:12:28.582833','2025-08-12 08:12:28.599282','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 08:12:28.602544'),(39,3,'statStep',39,'2025-08-12 08:43:18.157194','2025-08-12 08:43:18.166312','2025-08-12 08:43:18.266832','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 08:43:18.269777'),(40,3,'statStep',40,'2025-08-12 08:44:21.762313','2025-08-12 08:44:21.768521','2025-08-12 08:44:21.784920','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 08:44:21.787922'),(41,3,'statStep',41,'2025-08-12 08:45:29.931485','2025-08-12 08:45:29.938708','2025-08-12 08:45:30.041173','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 08:45:30.047364'),(42,2,'statStep',42,'2025-08-12 08:48:08.675108','2025-08-12 08:48:08.682745','2025-08-12 08:48:08.813416','FAILED',0,1,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement [Cannot add or update a child row: a foreign key constraint fails (`testdb`.`saleitemstat`, CONSTRAINT `fk_SaleItemStat_saledt_SaleStat` FOREIGN KEY (`saledt`) REFERENCES `salestat` (`saledt`) ON DELETE CASCADE)] [insert into SaleItemStat (amt,cnt,item,saledt) values (?,?,?,?)]; SQL [insert into SaleItemStat (amt,cnt,item,saledt) values (?,?,?,?)]; constraint [null]\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:294)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:256)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:241)\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:560)\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:343)\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:160)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:165)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:223)\n	at jdk.proxy4/jdk.proxy4.$Proxy196.save(Unknown Source)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.util.MethodInvoker.invoke(MethodInvoker.java:283)\n	at org.springframework.batch.item.data.RepositoryItemWriter.doInvoke(RepositoryItemWriter.java:147)\n	at org.springframework.batch.item.data.RepositoryItemWriter.doWrite(RepositoryIt','2025-08-12 08:48:08.816745'),(43,3,'statStep',43,'2025-08-12 08:49:51.095568','2025-08-12 08:49:51.102238','2025-08-12 08:49:51.187730','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 08:49:51.190388'),(44,2,'statStep',44,'2025-08-12 08:50:41.506765','2025-08-12 08:50:41.514656','2025-08-12 08:50:41.594935','FAILED',0,1,0,0,0,0,0,1,'FAILED','org.springframework.orm.jpa.JpaSystemException: identifier of an instance of com.hana7.springdemo.jpa.entity.SaleStat was altered from 2025-08-12 to today\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:348)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:256)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:241)\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:560)\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:343)\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:160)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:136)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:223)\n	at jdk.proxy4/jdk.proxy4.$Proxy195.getTodayItemStat(Unknown Source)\n	at com.hana7.springdemo.config.OrderBatchConfig.lambda$statProcessor$1(OrderBatchConfig.java:72)\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doProcess(SimpleChunkProcessor.java:146)\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.transform(SimpleChunkProcessor.java:322)\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:220)\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:75)\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:383)\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:307)\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\n	at org.springframework.batch.','2025-08-12 08:50:41.598230'),(45,2,'statStep',45,'2025-08-12 08:55:43.134815','2025-08-12 08:55:43.141783','2025-08-12 08:55:43.220189','FAILED',0,1,0,0,0,0,0,1,'FAILED','org.springframework.orm.jpa.JpaSystemException: identifier of an instance of com.hana7.springdemo.jpa.entity.SaleStat was altered from 2025-08-12 to today\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:348)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:256)\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:241)\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:560)\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:343)\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:160)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:136)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:184)\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:223)\n	at jdk.proxy4/jdk.proxy4.$Proxy195.getTodayItemStat(Unknown Source)\n	at com.hana7.springdemo.config.OrderBatchConfig.lambda$statProcessor$1(OrderBatchConfig.java:74)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:569)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:359)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:196)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:137','2025-08-12 08:55:43.225888'),(46,3,'statStep',46,'2025-08-12 08:56:20.624740','2025-08-12 08:56:20.631520','2025-08-12 08:56:20.738760','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 08:56:20.741594'),(47,3,'statStep',47,'2025-08-12 08:57:33.295682','2025-08-12 08:57:33.302577','2025-08-12 08:57:33.427734','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 08:57:33.430914'),(48,3,'statStep',48,'2025-08-12 09:18:28.073823','2025-08-12 09:18:28.080019','2025-08-12 09:18:28.197121','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2025-08-12 09:18:28.200262');
/*!40000 ALTER TABLE `BATCH_STEP_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BATCH_STEP_EXECUTION_CONTEXT`
--

DROP TABLE IF EXISTS `BATCH_STEP_EXECUTION_CONTEXT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATCH_STEP_EXECUTION_CONTEXT` (
  `STEP_EXECUTION_ID` bigint NOT NULL,
  `SHORT_CONTEXT` varchar(2500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SERIALIZED_CONTEXT` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  CONSTRAINT `STEP_EXEC_CTX_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `BATCH_STEP_EXECUTION` (`STEP_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATCH_STEP_EXECUTION_CONTEXT`
--

LOCK TABLES `BATCH_STEP_EXECUTION_CONTEXT` WRITE;
/*!40000 ALTER TABLE `BATCH_STEP_EXECUTION_CONTEXT` DISABLE KEYS */;
INSERT INTO `BATCH_STEP_EXECUTION_CONTEXT` VALUES (1,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(2,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(3,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(4,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAB0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(5,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAN0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(6,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAN0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(7,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAN0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(8,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAN0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(9,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAN0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(10,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(11,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(12,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(13,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(14,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(15,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(16,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(17,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(18,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(19,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(20,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(21,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(22,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(23,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(24,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(25,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(26,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(27,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAVbWVtb1JlYWRlci5yZWFkLmNvdW50c3IAEWphdmEubGFuZy5JbnRlZ2VyEuKgpPeBhzgCAAFJAAV2YWx1ZXhyABBqYXZhLmxhbmcuTnVtYmVyhqyVHQuU4IsCAAB4cAAAAAV0AA1iYXRjaC52ZXJzaW9udAAFNS4yLjJ0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4',NULL),(28,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(29,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAAdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(30,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAAdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(31,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMi4yeA==',NULL),(32,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAAdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(33,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAAdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(34,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(35,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(36,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(37,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(38,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(39,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(40,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(41,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(42,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(43,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(44,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(45,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(46,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(47,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL),(48,'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAADdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAANYmF0Y2gudmVyc2lvbnQABTUuMi4ydAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==',NULL);
/*!40000 ALTER TABLE `BATCH_STEP_EXECUTION_CONTEXT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BATCH_STEP_EXECUTION_SEQ`
--

DROP TABLE IF EXISTS `BATCH_STEP_EXECUTION_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATCH_STEP_EXECUTION_SEQ` (
  `ID` bigint NOT NULL,
  `UNIQUE_KEY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATCH_STEP_EXECUTION_SEQ`
--

LOCK TABLES `BATCH_STEP_EXECUTION_SEQ` WRITE;
/*!40000 ALTER TABLE `BATCH_STEP_EXECUTION_SEQ` DISABLE KEYS */;
INSERT INTO `BATCH_STEP_EXECUTION_SEQ` VALUES (48,'0');
/*!40000 ALTER TABLE `BATCH_STEP_EXECUTION_SEQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Board`
--

DROP TABLE IF EXISTS `Board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Board` (
  `hit` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `writer` bigint DEFAULT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Board_writer_Member` (`writer`),
  CONSTRAINT `fk_Board_writer_Member` FOREIGN KEY (`writer`) REFERENCES `Member` (`id`) ON DELETE CASCADE ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Board`
--

LOCK TABLES `Board` WRITE;
/*!40000 ALTER TABLE `Board` DISABLE KEYS */;
INSERT INTO `Board` VALUES (0,1,'2025-07-28 22:21:24','2025-07-28 22:21:24',1,'Title01'),(0,2,'2025-07-28 22:21:24','2025-07-28 22:21:24',1,'Title2'),(0,3,'2025-07-28 22:21:24','2025-07-28 22:21:24',1,'Title3'),(0,4,'2025-07-28 22:21:24','2025-07-28 22:21:24',1,'Title4'),(0,5,'2025-07-28 22:21:24','2025-07-28 22:21:24',1,'Title5'),(0,6,'2025-07-28 22:21:24','2025-07-28 22:21:24',1,'Title6'),(0,7,'2025-07-28 22:21:24','2025-07-28 22:21:24',1,'Title7'),(0,8,'2025-07-28 22:21:24','2025-07-28 22:21:24',1,'Title8'),(0,9,'2025-07-28 22:21:24','2025-07-28 22:21:24',2,'Title9'),(0,10,'2025-07-28 22:21:24','2025-07-28 22:21:24',2,'Title10');
/*!40000 ALTER TABLE `Board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BoardContent`
--

DROP TABLE IF EXISTS `BoardContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BoardContent` (
  `board` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdgp25w5hy1p9fh73tq341haqi` (`board`),
  CONSTRAINT `fk_BoardContent_board` FOREIGN KEY (`board`) REFERENCES `Board` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BoardContent`
--

LOCK TABLES `BoardContent` WRITE;
/*!40000 ALTER TABLE `BoardContent` DISABLE KEYS */;
INSERT INTO `BoardContent` VALUES (1,1,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx'),(2,2,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx'),(3,3,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx'),(4,4,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx'),(5,5,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx'),(6,6,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx'),(7,7,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx'),(8,8,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx'),(9,9,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx'),(10,10,'2025-07-28 22:21:24','2025-07-28 22:21:24','xxx');
/*!40000 ALTER TABLE `BoardContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DemoUser`
--

DROP TABLE IF EXISTS `DemoUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DemoUser` (
  `age` smallint NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DemoUser`
--

LOCK TABLES `DemoUser` WRITE;
/*!40000 ALTER TABLE `DemoUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `DemoUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hashtag`
--

DROP TABLE IF EXISTS `Hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hashtag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tag` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_Hashtag_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hashtag`
--

LOCK TABLES `Hashtag` WRITE;
/*!40000 ALTER TABLE `Hashtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HashtagBoard`
--

DROP TABLE IF EXISTS `HashtagBoard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HashtagBoard` (
  `board` int NOT NULL,
  `hashtag` int NOT NULL,
  KEY `fk_HashtagBoard_hashtag` (`hashtag`),
  CONSTRAINT `fk_HashtagBoard_hashtag` FOREIGN KEY (`hashtag`) REFERENCES `Hashtag` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HashtagBoard`
--

LOCK TABLES `HashtagBoard` WRITE;
/*!40000 ALTER TABLE `HashtagBoard` DISABLE KEYS */;
/*!40000 ALTER TABLE `HashtagBoard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Item`
--

DROP TABLE IF EXISTS `Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item`
--

LOCK TABLES `Item` WRITE;
/*!40000 ALTER TABLE `Item` DISABLE KEYS */;
INSERT INTO `Item` VALUES (1,1000,'Apple'),(2,1000,'Banana'),(3,3000,'Melon'),(4,500,'Tomato');
/*!40000 ALTER TABLE `Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Member` (
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nickname` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Guest',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloodType` enum('A','AB','B','O') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK9qv6yhjqm8iafto8qk452gx8h` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES ('2025-08-29 01:05:39',1,'2025-08-29 01:05:39','hongx','hongx@gmail.com',NULL,'A'),('2025-08-29 01:05:39',2,'2025-08-29 01:05:39','kimx','kimx@gmail.com',NULL,'B');
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberImage`
--

DROP TABLE IF EXISTS `MemberImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MemberImage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `member` bigint DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `savedir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `savename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_MemberImage_member` (`member`),
  CONSTRAINT `fk_MemberImage_member` FOREIGN KEY (`member`) REFERENCES `Member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberImage`
--

LOCK TABLES `MemberImage` WRITE;
/*!40000 ALTER TABLE `MemberImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `MemberImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Memo`
--

DROP TABLE IF EXISTS `Memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Memo` (
  `mno` int NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `statedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `memoText` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('DELIVERED','PAYED','PREPARING','TRANSITING') COLLATE utf8mb4_unicode_ci DEFAULT 'PAYED',
  PRIMARY KEY (`mno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Memo`
--

LOCK TABLES `Memo` WRITE;
/*!40000 ALTER TABLE `Memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItem`
--

DROP TABLE IF EXISTS `OrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderItem` (
  `amt` int NOT NULL,
  `cnt` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int DEFAULT NULL,
  `orders` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_OrderItem_item` (`item`),
  KEY `fk_OrderItem_orders` (`orders`),
  CONSTRAINT `fk_OrderItem_item` FOREIGN KEY (`item`) REFERENCES `Item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_OrderItem_orders` FOREIGN KEY (`orders`) REFERENCES `Orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
INSERT INTO `OrderItem` VALUES (1000,1,1,1,1),(2000,2,2,2,1),(9000,3,3,3,1),(2000,4,4,4,1),(1000,1,8,1,2),(2000,2,9,2,2);
/*!40000 ALTER TABLE `OrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `member` bigint DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_Orders_member` (`member`),
  CONSTRAINT `fk_Orders_member` FOREIGN KEY (`member`) REFERENCES `Member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'2025-08-29 01:05:39',1,'2025-08-29 01:05:39'),(2,'2025-08-29 01:05:39',2,'2025-08-29 01:05:39');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Post`
--

DROP TABLE IF EXISTS `Post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `writer` int DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `writer` (`writer`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`writer`) REFERENCES `User` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Post`
--

LOCK TABLES `Post` WRITE;
/*!40000 ALTER TABLE `Post` DISABLE KEYS */;
INSERT INTO `Post` VALUES (1,'title01','2025-07-24 04:14:17',NULL,'content....'),(2,'title02','2025-07-24 04:23:47',2,'content....'),(3,'title03','2025-07-24 04:33:11',2,'content....'),(4,'title03','2025-07-24 04:34:19',2,'content....');
/*!40000 ALTER TABLE `Post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reply`
--

DROP TABLE IF EXISTS `Reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reply` (
  `board` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `replyer` bigint NOT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reply` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Reply_board` (`board`),
  KEY `fk_Reply_replyer_Member` (`replyer`),
  CONSTRAINT `fk_Reply_board` FOREIGN KEY (`board`) REFERENCES `Board` (`id`),
  CONSTRAINT `fk_Reply_replyer_Member` FOREIGN KEY (`replyer`) REFERENCES `Member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reply`
--

LOCK TABLES `Reply` WRITE;
/*!40000 ALTER TABLE `Reply` DISABLE KEYS */;
INSERT INTO `Reply` VALUES (1,1,'2025-07-28 22:22:06',2,'2025-07-28 22:22:06','Reply1'),(1,2,'2025-07-28 22:22:06',2,'2025-07-28 22:22:06','Reply2'),(1,3,'2025-07-28 22:22:06',2,'2025-07-28 22:22:06','Reply3'),(1,4,'2025-07-28 22:22:06',1,'2025-07-28 22:22:06','Reply4'),(1,5,'2025-07-28 22:22:06',1,'2025-07-28 22:22:06','Reply5'),(1,6,'2025-07-28 22:22:06',2,'2025-07-28 22:22:06','Reply6'),(1,7,'2025-07-28 22:22:06',2,'2025-07-28 22:22:06','Reply7'),(1,8,'2025-07-28 22:22:06',2,'2025-07-28 22:22:06','Reply8'),(1,9,'2025-07-28 22:22:06',2,'2025-07-28 22:22:06','Reply9'),(1,10,'2025-07-28 22:22:06',2,'2025-07-28 22:22:06','Reply10');
/*!40000 ALTER TABLE `Reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SaleItemStat`
--

DROP TABLE IF EXISTS `SaleItemStat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SaleItemStat` (
  `amt` int NOT NULL,
  `cnt` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int DEFAULT NULL,
  `saledt` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_SaleItemStat_saledt_SaleStat` (`saledt`),
  CONSTRAINT `fk_SaleItemStat_saledt_SaleStat` FOREIGN KEY (`saledt`) REFERENCES `SaleStat` (`saledt`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SaleItemStat`
--

LOCK TABLES `SaleItemStat` WRITE;
/*!40000 ALTER TABLE `SaleItemStat` DISABLE KEYS */;
/*!40000 ALTER TABLE `SaleItemStat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SaleStat`
--

DROP TABLE IF EXISTS `SaleStat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SaleStat` (
  `ordercnt` int NOT NULL,
  `totamt` int NOT NULL,
  `saledt` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`saledt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SaleStat`
--

LOCK TABLES `SaleStat` WRITE;
/*!40000 ALTER TABLE `SaleStat` DISABLE KEYS */;
/*!40000 ALTER TABLE `SaleStat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscriber`
--

DROP TABLE IF EXISTS `Subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Subscriber` (
  `social` bit(1) NOT NULL,
  `nickname` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscriber`
--

LOCK TABLES `Subscriber` WRITE;
/*!40000 ALTER TABLE `Subscriber` DISABLE KEYS */;
INSERT INTO `Subscriber` VALUES (_binary '\0','sub0','sample@gmail.com','$2a$10$DG261y/zDkAJw/.6gHExcuBWTLc/MkQUypiUkygdp5LWkEZ7YLgS.');
/*!40000 ALTER TABLE `Subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubscriberRole`
--

DROP TABLE IF EXISTS `SubscriberRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SubscriberRole` (
  `role` tinyint DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `FKgub1b9c7ig0kw56s7xbpg7qnb` (`email`),
  CONSTRAINT `FKgub1b9c7ig0kw56s7xbpg7qnb` FOREIGN KEY (`email`) REFERENCES `Subscriber` (`email`),
  CONSTRAINT `subscriberrole_chk_1` CHECK ((`role` between 0 and 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubscriberRole`
--

LOCK TABLES `SubscriberRole` WRITE;
/*!40000 ALTER TABLE `SubscriberRole` DISABLE KEYS */;
INSERT INTO `SubscriberRole` VALUES (0,'sample@gmail.com'),(2,'sample@gmail.com');
/*!40000 ALTER TABLE `SubscriberRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TTT`
--

DROP TABLE IF EXISTS `TTT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TTT` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TTT`
--

LOCK TABLES `TTT` WRITE;
/*!40000 ALTER TABLE `TTT` DISABLE KEYS */;
/*!40000 ALTER TABLE `TTT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (2,'Sico22','abc223@gmail.com','010-1234-5622'),(4,'Sico2','abc22@gmail.com','010-1234-5622'),(5,'Sico2','abc223@gmail.com','010-1234-5622');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-29 11:19:30
