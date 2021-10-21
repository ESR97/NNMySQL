CREATE TABLE student (
 id INT NOT NULL DEFAULT 1,
 NAME VARCHAR ( 20 ) NOT NULL DEFAULT '',
 chinese FLOAT NOT NULL DEFAULT 0.0,
 english FLOAT NOT NULL DEFAULT 0.0,
 math FLOAT NOT NULL DEFAULT 0.0 
);
INSERT INTO student
VALUES
 ( 1, '韩顺平', 89, 78, 90 );

 ( 2, '张飞', 67, 98, 56 );

 ( 3, '宋江', 87, 78, 77 );

 ( 4, '关羽', 88, 98, 90 );

 ( 5, '赵云', 82, 84, 67 );

 ( 6, '欧阳锋', 55, 85, 45 );

 ( 7, '黄蓉', 75, 65, 30 );

 ( 8, '韩信', 45, 65, 99 );

SELECT COUNT(*) FROM student;  

SELECT COUNT(*) FROM student
		WHERE math > 90;
	
SELECT COUNT(*) FROM student
		WHERE (math + english + chinese) > 250;
		
CREATE table t15 (
		`name` varchar(20));

INSERT into t15(name)
				values('tom'),
				('jack'),
				('mary'),
				(null);

SELECT * FROM t15;

SELECT COUNT(*) from t15; 

SELECT COUNT(`name`) from t15; 

SELECT SUM(math) FROM student;

SELECT SUM(math),SUM(english),SUM(chinese) FROM student;

SELECT SUM(math + english + chinese) FROM student;

SELECT AVG(chinese) FROM student;