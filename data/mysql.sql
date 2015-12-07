SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Achievements`
-- ----------------------------
DROP TABLE IF EXISTS `Achievements`;
CREATE TABLE `Achievements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text,
  `chatAnnounce` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `CarmaHistory`
-- ----------------------------
DROP TABLE IF EXISTS `CarmaHistory`;
CREATE TABLE `CarmaHistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(6) NOT NULL,
  `giverId` int(6) NOT NULL,
  `timestamp` int(15) NOT NULL,
  `type` int(2) NOT NULL,
  `room` VARCHAR(255) NOT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserAchievements`
-- ----------------------------
DROP TABLE IF EXISTS `UserAchievements`;
CREATE TABLE `UserAchievements` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userId` int(6) NOT NULL,
  `achievementId` int(6) NOT NULL,
  `timestamp` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Users`
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `lastMessageTimestamp` int(15) DEFAULT NULL,
  `carma` int(9) DEFAULT '0',
  `thanks` int(9) DEFAULT '0',
  `avatarUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
