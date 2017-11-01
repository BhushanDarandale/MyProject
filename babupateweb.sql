# SQL Manager 2005 for MySQL 3.7.6.2
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : babupateweb


SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `babupateweb`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `babupateweb`;

#
# Structure for the `emp_tbl` table : 
#

CREATE TABLE `emp_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Structure for the `home` table : 
#

CREATE TABLE `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `news` table : 
#

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(2000) DEFAULT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `description` varchar(20000) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `photo_album` table : 
#

CREATE TABLE `photo_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(50) DEFAULT NULL,
  `album_image` varchar(200) DEFAULT NULL,
  `total_img` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Structure for the `photo` table : 
#

CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `album_name` varchar(200) DEFAULT NULL,
  `album_image` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` date DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `photo_fk` FOREIGN KEY (`album_id`) REFERENCES `photo_album` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Structure for the `video` table : 
#

CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(2000) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for the `emp_tbl` table  (LIMIT 0,500)
#

INSERT INTO `emp_tbl` (`id`, `address`, `email`, `name`, `telephone`) VALUES 
  (5,'pune','bsd','bhushan','9890888907');

COMMIT;

#
# Data for the `photo_album` table  (LIMIT 0,500)
#

INSERT INTO `photo_album` (`id`, `album_name`, `album_image`, `total_img`, `status`, `date`, `time`) VALUES 
  (1,'bhushan','/Files/music/bhushan_2017/JavaImageephoto1509079819768.jpg',3,'Active','2017-10-27','10:20:19'),
  (2,'bhushan123','/Files/photo/bhushan123_2017/plusherophoto1509082550937.jpg',1,'Active','2017-10-27','11:05:50'),
  (3,'test2','/Files/photo/test2_2017/JavaImageephoto1509082590113.jpg',0,'Active','2017-10-27','11:06:30'),
  (4,'bhiussnjhkfb','/Files/photo/bhiussnjhkfb_2017/java-tomcat-apache-ChromeISphoto1509082617686.png',0,'Active','2017-10-27','11:06:57'),
  (5,'testing','/Files/photo/testing_2017/2551395796photo1509098370240.webp',4,'Active','2017-10-27','15:29:30'),
  (6,'new','/Files/photo/new_2017/Ai-Business-stafes-diagram-vector-free-downloadphoto1509181999424.jpg',0,'Active','2017-10-28','14:43:19'),
  (7,'today','/Files/photo/today_2017/Screenshot (53)music1509439012092.png',0,'Active','2017-10-31','14:06:52'),
  (8,'aaaa','/Files/photo/aaaa_2017/Screenshot (13)music1509453867236.png',0,'Active','2017-10-31','18:14:27');

COMMIT;

#
# Data for the `photo` table  (LIMIT 0,500)
#

INSERT INTO `photo` (`id`, `name`, `path`, `size`, `album_name`, `album_image`, `title`, `status`, `date`, `time`, `album_id`) VALUES 
  (1,'java-tomcat-apache-ChromeIS.png','/Files/photo/bhushan_2017/java-tomcat-apache-ChromeISmusic1509188720166.png','28','bhushan','/Files/music/bhushan_2017/JavaImageephoto1509079819768.jpg','java-tomcat-apache-ChromeIS.png','Active','2017-10-28','2017-10-28',1),
  (2,'plushero.jpg','/Files/photo/bhushan_2017/plusheromusic1509189200990.jpg','27','bhushan','/Files/music/bhushan_2017/JavaImageephoto1509079819768.jpg','plushero.jpg','Active','2017-10-28','2017-10-28',1),
  (3,'Screenshot (14).png','/Files/photo/bhushan123_2017/Screenshot (14)music1509438989278.png','90','bhushan123','/Files/photo/bhushan123_2017/plusherophoto1509082550937.jpg','Screenshot (14).png','Active','2017-10-31','2017-10-31',2),
  (4,'Screenshot (14).png','/Files/photo/testing_2017/Screenshot (14)music1509453912452.png','90','testing','/Files/photo/testing_2017/2551395796photo1509098370240.webp','Screenshot (14).png','Active','2017-10-31','2017-10-31',5),
  (5,'Screenshot (15).png','/Files/photo/testing_2017/Screenshot (15)music1509453912504.png','20','testing','/Files/photo/testing_2017/2551395796photo1509098370240.webp','Screenshot (15).png','Active','2017-10-31','2017-10-31',5),
  (6,'Screenshot (16).png','/Files/photo/testing_2017/Screenshot (16)music1509453912580.png','17','testing','/Files/photo/testing_2017/2551395796photo1509098370240.webp','Screenshot (16).png','Active','2017-10-31','2017-10-31',5),
  (7,'Screenshot (23).png','/Files/photo/testing_2017/Screenshot (23)music1509453912629.png','29','testing','/Files/photo/testing_2017/2551395796photo1509098370240.webp','Screenshot (23).png','Active','2017-10-31','2017-10-31',5),
  (8,'Screenshot (13).png','/Files/photo/bhushan_2017/Screenshot (13)music1509520493374.png','27','bhushan','/Files/music/bhushan_2017/JavaImageephoto1509079819768.jpg','Screenshot (13).png','Active','2017-11-01','2017-11-01',1);

COMMIT;

#
# Data for the `video` table  (LIMIT 0,500)
#

INSERT INTO `video` (`id`, `path`, `name`, `type`, `size`, `status`, `date`, `time`, `tag`, `image`) VALUES 
  (1,'/Files/videos/2music1509528847729.mp4','First Video','Video','0','Active','2017-11-01','15:04:07','babupate','Not avaliable'),
  (2,'/Files/videos/2music1509529398573.mp4','SEcond viddo','Video','0','Active','2017-11-01','15:13:18','babupate','Not avaliable');

COMMIT;

