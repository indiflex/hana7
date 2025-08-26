-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: hanarodb
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'JavaScript'),(2,'TypeScript'),(3,'React'),(4,'SQL');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Like`
--

DROP TABLE IF EXISTS `Like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Like` (
  `id` int NOT NULL AUTO_INCREMENT,
  `liked` tinyint(1) NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE CASCADE,
  CONSTRAINT `like_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `Post` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Like`
--

LOCK TABLES `Like` WRITE;
/*!40000 ALTER TABLE `Like` DISABLE KEYS */;
INSERT INTO `Like` VALUES (48,1,25,8),(49,0,23,8),(50,1,34,8);
/*!40000 ALTER TABLE `Like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Post`
--

DROP TABLE IF EXISTS `Post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `category_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Post_user_id_fkey` (`user_id`),
  KEY `Post_category_id_fkey` (`category_id`),
  FULLTEXT KEY `idx_fulltext_title_content` (`title`,`content`),
  CONSTRAINT `Post_category_id_fkey` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Post_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Post`
--

LOCK TABLES `Post` WRITE;
/*!40000 ALTER TABLE `Post` DISABLE KEYS */;
INSERT INTO `Post` VALUES (12,'var과 let 차이','?스코프 (Scope): 코드가 변수에 접근할 수 있는 범위\r\n\r\nFunction Scope (함수 범위) : 함수 내부에서만 접근 가능 -> var\r\nBlock Scope (블록 범위): 변수가 선언된 변수 내부에서만 접근 가능 -> let\r\n블록 외부로부터의 접근을 막기 때문에 더 엄격\r\nGlobal Scope (전역 범위): window에 저장 -> var\r\n?중복 선언\r\n\r\nvar 키워드를 중복 사용하면 밑에서 쓴 변수가 위를 덮어씀\r\nlet 키워드를 중복 사용하면 에러가 뜨기 때문에 안전하게 코딩 가능\r\n?호이스팅: 변수나 함수 선언이 코드의 최상단으로 끌어올려지는 현상\r\n\r\nvar 키워드를 사용한 변수는 호이스팅되어 맨 위로 끌어올려질 때 자동으로 undefined로 초기화가 됨\r\nlet 키워드는 변수의 선언을 맨 위로 호이스팅하지만 var과는 다르게 변수를 초기화 하지 않고 ReferenceError가 뜸\r\n->TDZ (Temporal Dead Zone) : 일시적 사각지대 덕에 미리 예방 가능','2025-06-03 07:11:05','2025-06-03 07:11:05',1,8),(14,'이벤트 루프 완전 정복: JS의 비동기 처리 원리','JavaScript는 싱글 스레드 기반 언어입니다. 하지만 비동기 처리를 효과적으로 하기 위해 이벤트 루프(Event Loop)를 사용합니다. 이 이벤트 루프는 Call Stack, Task Queue, Microtask Queue의 상호작용으로 구성됩니다. 예를 들어, setTimeout, Promise, fetch 등의 처리 흐름은 각기 다른 큐를 거칩니다. 본 글에서는 이 개념들을 예시와 함께 시각화해 설명합니다.','2025-06-03 07:19:57','2025-06-03 11:11:16',1,8),(23,'this는 누굴까? JavaScript의 this 완벽 가이드','JavaScript에서 this는 함수의 호출 방식에 따라 값이 결정됩니다. 객체 메서드, 일반 함수, 화살표 함수, 생성자 함수 등에서 this의 바인딩이 다릅니다. 예를 들어, 화살표 함수는 상위 스코프의 this를 참조하며, call, apply, bind 메서드를 통해 this를 수동으로 지정할 수도 있습니다.','2025-06-03 11:11:35','2025-06-03 11:11:35',1,8),(24,'TypeScript 초보 탈출 가이드','TypeScript를 처음 접했다면 이 글부터 시작하세요. 타입 시스템의 기초부터 실전 코드 적용까지 다룹니다.','2025-06-03 11:13:19','2025-06-03 11:13:19',2,8),(25,'클로저를 이용한 카운터 예제','\r\n클로저는 함수가 실행된 이후에도 외부 변수에 접근할 수 있는 개념입니다.\r\n\r\nfunction createCounter() {\r\n  let count = 0;\r\n  return () => ++count;\r\n}\r\n\r\nconst counter = createCounter();\r\nconsole.log(counter()); // 1\r\nconsole.log(counter()); // 2','2025-06-03 11:14:50','2025-06-03 11:14:50',1,8),(26,'타입 단언 vs 타입 가드 차이점','- 타입 단언 (`as`)는 컴파일러에게 \"이 타입이 맞아!\"라고 말하는 것\r\n- 타입 가드 (`typeof`, `instanceof`)는 실제 런타임에서 타입을 확인하는 방식\r\n\r\n가능한 타입 가드를 먼저 사용하고, 정말 필요할 때만 단언을 사용하세요.','2025-06-03 11:15:18','2025-06-03 11:15:18',2,8),(27,'유니언 타입과 인터섹션 타입 비교','type A = { name: string };\r\ntype B = { age: number };\r\n\r\ntype Union = A | B; // name 또는 age 하나만 있어도 됨\r\ntype Intersection = A & B; // name과 age 둘 다 있어야 함','2025-06-03 11:15:37','2025-06-03 11:15:37',2,8),(28,'제네릭(Generic)의 기본 사용법','function identity<T>(value: T): T {\r\n  return value;\r\n}\r\n\r\nconst num = identity(123);      // T = number\r\nconst str = identity(\'hello\');  // T = string','2025-06-03 11:15:56','2025-06-03 11:15:56',2,8),(29,'INNER JOIN vs LEFT JOIN 차이','- `INNER JOIN`: 양쪽 테이블에 모두 존재하는 데이터만 반환\r\n- `LEFT JOIN`: 왼쪽 테이블의 모든 데이터 + 오른쪽 테이블에 해당하는 것\r\n\r\n```sql\r\nSELECT * FROM users u\r\nLEFT JOIN orders o ON u.id = o.user_id;','2025-06-03 11:17:13','2025-06-03 11:17:13',4,8),(30,'GROUP BY와 HAVING 사용법','`GROUP BY`로 묶은 뒤 `HAVING`으로 조건을 줄 수 있어요.\r\n\r\n```sql\r\nSELECT user_id, COUNT(*) as order_count\r\nFROM orders\r\nGROUP BY user_id\r\nHAVING COUNT(*) > 5;','2025-06-03 11:17:29','2025-06-03 11:17:29',4,8),(31,'서브쿼리 vs JOIN 언제 쓸까?','- 서브쿼리는 내부 쿼리 결과를 기준으로 조건을 줄 때 사용\r\n- JOIN은 여러 테이블을 묶어서 정보를 확장할 때 사용\r\n\r\n실행계획 차이가 있으니 성능이 중요할 때는 꼭 비교해보세요.','2025-06-03 11:17:50','2025-06-03 11:17:50',4,8),(32,'SQL 트랜잭션의 모든 것','트랜잭션(Transaction)은 데이터베이스 작업의 **논리적 단위**입니다. 주로 **데이터 무결성**을 보장하기 위해 사용됩니다.\r\n\r\n### ? 트랜잭션의 4가지 특징 (ACID)\r\n\r\n1. **Atomicity (원자성)**  \r\n   - 모든 작업이 하나의 단위로 처리되어야 하며, 전부 성공하거나 전부 실패해야 합니다.\r\n\r\n2. **Consistency (일관성)**  \r\n   - 트랜잭션 실행 전과 후의 데이터 상태는 항상 유효해야 합니다.\r\n\r\n3. **Isolation (격리성)**  \r\n   - 동시에 실행되는 트랜잭션이 서로 영향을 주지 않도록 해야 합니다.\r\n\r\n4. **Durability (지속성)**  \r\n   - 트랜잭션이 커밋된 후에는 시스템 장애가 발생해도 그 결과는 보존되어야 합니다.\r\n\r\n---\r\n\r\n### ✅ 트랜잭션 기본 문법\r\n\r\n```sql\r\nBEGIN;\r\n\r\nUPDATE accounts SET balance = balance - 1000 WHERE id = 1;\r\nUPDATE accounts SET balance = balance + 1000 WHERE id = 2;\r\n\r\nCOMMIT;\r\n-- 또는 ROLLBACK; 으로 취소 가능','2025-06-03 11:18:24','2025-06-03 11:18:24',4,8),(33,'JOIN 완전 정리 (INNER, LEFT, RIGHT, FULL)','SQL의 JOIN은 두 개 이상의 테이블을 연결해서 데이터를 조회할 때 사용합니다. 상황에 따라 다양한 JOIN 방식을 선택해야 하는데요, 여기서 모두 정리해드립니다.\r\n\r\n---\r\n\r\n### ? 1. INNER JOIN (교집합)\r\n\r\n두 테이블의 **공통된 값이 있는 행만** 반환합니다.\r\n\r\n```sql\r\nSELECT *\r\nFROM orders\r\nINNER JOIN customers\r\nON orders.customer_id = customers.id;','2025-06-03 11:18:50','2025-06-03 11:18:50',4,8),(34,'불용어','고로, 훨씬 은 검색이 안됩니당','2025-06-03 11:20:22','2025-06-03 11:20:48',1,8);
/*!40000 ALTER TABLE `Post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StopWord`
--

DROP TABLE IF EXISTS `StopWord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StopWord` (
  `value` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StopWord`
--

LOCK TABLES `StopWord` WRITE;
/*!40000 ALTER TABLE `StopWord` DISABLE KEYS */;
INSERT INTO `StopWord` VALUES ('a'),('about'),('after'),('all'),('also'),('an'),('and'),('another'),('any'),('are'),('as'),('at'),('be'),('because'),('been'),('before'),('being'),('between'),('both'),('but'),('by'),('came'),('can'),('come'),('could'),('did'),('do'),('each'),('for'),('from'),('get'),('got'),('had'),('has'),('have'),('he'),('her'),('here'),('him'),('himself'),('his'),('how'),('if'),('in'),('into'),('is'),('it'),('like'),('make'),('many'),('me'),('might'),('more'),('most'),('much'),('must'),('my'),('never'),('now'),('of'),('on'),('only'),('or'),('other'),('our'),('out'),('over'),('re'),('said'),('same'),('see'),('should'),('since'),('some'),('still'),('such'),('take'),('than'),('that'),('the'),('their'),('them'),('then'),('there'),('these'),('they'),('this'),('those'),('through'),('to'),('too'),('under'),('up'),('use'),('very'),('want'),('was'),('way'),('we'),('well'),('were'),('what'),('when'),('where'),('which'),('while'),('who'),('will'),('with'),('would'),('you'),('your'),('가까스로'),('가령'),('가서'),('각각'),('각자'),('각종'),('갖고말하자면'),('같다'),('같은'),('같이'),('개의치않고'),('거니와'),('거바'),('거의'),('것과'),('것들'),('게다가'),('게우다'),('겨우'),('견지에서'),('겸사겸사'),('고려하면'),('고로'),('공동으로'),('과연'),('관계없이'),('관련이'),('관하여'),('관한'),('관해서는'),('구체적으로'),('구토하다'),('그들'),('그때'),('그래'),('그래도'),('그래서'),('그러나'),('그러니'),('그러니까'),('그러면'),('그러므로'),('그러한즉'),('그런'),('그런데'),('그런즉'),('그럼'),('그럼에도불구하고'),('그렇게'),('그렇지'),('그렇지만'),('그렇지않으면'),('그리고'),('그리하여'),('그만이다'),('그에'),('그위에'),('그저'),('그중에서'),('그치지'),('근거로'),('근거하여'),('기대여'),('기점으로'),('기준으로'),('기타'),('김에'),('까닭에'),('까닭으로'),('까악'),('까지'),('까지도'),('꽈당'),('끙끙'),('끼익'),('나머지는'),('남들'),('남짓'),('낫다'),('너희'),('너희들'),('년도'),('논하지'),('놀라다'),('누가'),('누구'),('다른'),('다만'),('다섯'),('다소'),('다수'),('다시'),('다시말하면'),('다음'),('다음에'),('다음으로'),('단지'),('달려'),('답다'),('당신'),('당장'),('대로'),('대하면'),('대하여'),('대해'),('대해서'),('댕그'),('더구나'),('더군다나'),('더라도'),('더불어'),('더욱더'),('더욱이는'),('도달하다'),('도착하다'),('동시에'),('동안'),('되는'),('되다'),('되어'),('된바에야'),('된이상'),('두번째로'),('둥둥'),('뒤따라'),('뒤이어'),('든간에'),('들면'),('들자면'),('듯하다'),('등등'),('딩동'),('따라'),('따라서'),('따르는'),('따름이다'),('따위'),('따지지'),('때가'),('때문에'),('또한'),('뚝뚝'),('로부터'),('로써'),('마음대로'),('마저'),('마저도'),('마치'),('막론하고'),('만약'),('만약에'),('만은'),('만이'),('만일'),('만큼'),('많은'),('말하면'),('말하자면'),('말할것도'),('매번'),('메쓰겁다'),('모두'),('몰라도'),('몰랏다'),('못하다'),('무렵'),('무릎쓰고'),('무슨'),('무엇'),('무엇때문에'),('물론'),('미치다'),('바꾸어말하면'),('바꾸어말하자면'),('바꾸어서'),('바꿔'),('바로'),('바와같이'),('밖에'),('반대로'),('반드시'),('방면으로'),('버금'),('보는데서'),('보다더'),('보드득'),('보면'),('보아'),('본대로'),('봐라'),('부류의'),('부터'),('불구하고'),('불문하고'),('붕붕'),('비걱거리다'),('비교적'),('비길수'),('비로소'),('비록'),('비슷하다'),('비추어'),('비하면'),('뿐만'),('뿐만아니라'),('뿐이다'),('삐걱'),('삐걱거리다'),('사람들'),('상대적으로'),('생각이다'),('생각한대로'),('서술한바와같이'),('설령'),('설마'),('설사'),('소생'),('소인'),('습니까'),('습니다'),('시각'),('시간'),('시작하여'),('시초에'),('시키다'),('실로'),('심지어'),('쓰여'),('아니'),('아니나다를가'),('아니다'),('아니라'),('아니라면'),('아니면'),('아니었다면'),('아래윗'),('아무거나'),('아무도'),('아야'),('아울러'),('아이'),('아이고'),('아이구'),('아이야'),('아이쿠'),('아하'),('아홉'),('안다'),('안된다'),('않고'),('않기'),('않는다면'),('않다'),('않다면'),('않도록'),('않으면'),('알겠는가'),('알았어'),('앞에서'),('앞의것'),('약간'),('양자'),('어기여차'),('어느'),('어느것'),('어느곳'),('어느때'),('어느쪽'),('어느해'),('어디'),('어때'),('어떠한'),('어떤'),('어떤것'),('어떤것들'),('어떻게'),('어떻해'),('어이'),('어째서'),('어쨋든'),('어쩔수'),('어찌'),('어찌됏든'),('어찌됏어'),('어찌하든지'),('어찌하여'),('언제'),('언젠가'),('얼마'),('얼마간'),('얼마나'),('얼마든지'),('얼마만큼'),('얼마큼'),('없고'),('없다'),('엉엉'),('에게'),('에서'),('여기'),('여덟'),('여러분'),('여보시오'),('여부'),('여섯'),('여전히'),('여차'),('연관되다'),('연이서'),('영차'),('옆사람'),('예를'),('예컨대'),('예하면'),('오로지'),('오르다'),('오자마자'),('오직'),('오호'),('오히려'),('와르르'),('와아'),('왜냐하면'),('외에'),('외에도'),('요만큼'),('요만한'),('요만한걸'),('요컨대'),('우르르'),('우리'),('우리들'),('우선'),('우에'),('운운'),('위에서'),('위하여'),('위해서'),('윙윙'),('으로'),('으로서'),('으로써'),('응당'),('의거하여'),('의지하여'),('의해'),('의해되다'),('의해서'),('이것'),('이곳'),('이때'),('이라면'),('이래'),('이러이러하다'),('이러한'),('이런'),('이럴정도로'),('이렇게'),('이렇게되면'),('이렇게말하자면'),('이렇구나'),('이로'),('이르기까지'),('이르다'),('이리하여'),('이만큼'),('이번'),('이봐'),('이상'),('이어서'),('이었다'),('이와'),('이와같다면'),('이외에도'),('이용하여'),('이유는'),('이유만으로'),('이젠'),('이지만'),('이쪽'),('이천구'),('이천육'),('이천칠'),('이천팔'),('인젠'),('인하여'),('일것이다'),('일곱'),('일단'),('일때'),('일반적으로'),('일지라도'),('임에'),('입각하여'),('입장에서'),('잇따라'),('있다'),('자기'),('자기집'),('자마자'),('자신'),('잠깐'),('잠시'),('저것'),('저것만큼'),('저기'),('저쪽'),('저희'),('전부'),('전자'),('전후'),('점에서'),('정도에'),('정도의'),('제각기'),('제외하고'),('조금'),('조차'),('조차도'),('졸졸'),('종합한것과같이'),('좋아'),('좍좍'),('주룩주룩'),('주저하지'),('줄은'),('줄은모른다'),('중에서'),('중의하나'),('즈음하여'),('즉시'),('지경이다'),('지든지'),('지만'),('지말고'),('진짜로'),('쪽으로'),('차라리'),('참나'),('첫번째로'),('총적으로'),('콸콸'),('쾅쾅'),('타다'),('타인'),('탕탕'),('토하다'),('통하여'),('틀림없다'),('틈타'),('펄렁'),('편이'),('하게될것이다'),('하게하다'),('하겠는가'),('하고'),('하고있었다'),('하곤하였다'),('하구나'),('하기'),('하기는한데'),('하기만'),('하기보다는'),('하기에'),('하나'),('하느니'),('하는'),('하는것도'),('하는것만'),('하는것이'),('하는바'),('하다'),('하더라도'),('하도다'),('하도록시키다'),('하도록하다'),('하든지'),('하려고하다'),('하마터면'),('하면'),('하면된다'),('하면서'),('하물며'),('하여금'),('하여야'),('하자마자'),('하지'),('하지마'),('하지마라'),('하지만'),('하하'),('한다면'),('한데'),('한마디'),('한적이있다'),('한켠으로는'),('한하다'),('한항목'),('할때'),('할만하다'),('할망정'),('할뿐'),('할수록'),('할수있다'),('할수있어'),('할줄알다'),('할지라도'),('할지언정'),('함께'),('함으로써'),('해도'),('해도된다'),('해도좋다'),('해봐요'),('해서는'),('해야한다'),('해요'),('했어요'),('향하다'),('향하여'),('향해서'),('허걱'),('허허'),('헉헉'),('헐떡헐떡'),('형식으로'),('혹시'),('혹은'),('혼자'),('훨씬'),('휘익'),('흐흐'),('힘이'),('힘입어');
/*!40000 ALTER TABLE `StopWord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (4,'김기연1','12@naver.com','$2b$10$lufGRtx9FMhWcPXTTbBwSO5iMIOG3sFoTEOPXg7N0lTMRGKALvVry',0),(5,'김기1','kiyeon@gmail.com','$2b$10$1Dxb/GnETxIqyrDaHzD2c.Kzht.pFg1766yRafRGEB8DYFTdgXiNq',0),(6,'kiyeonkimm','paynjoy2@naver.com','',0),(8,'관리자','kiyeon@admin.com','$2b$10$NCcX37V6wqEUxjBQ7se.LeegTiiN04AoeoKWvUP5VKuvYeuQF8G0e',1);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hanarodb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-03 23:08:12
