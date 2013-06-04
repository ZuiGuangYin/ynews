

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


--
-- 数据库: `ynews`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `createdTime` int(11) NOT NULL,
  `modifiedTime` int(11) NOT NULL,
  `content` text NOT NULL,
  `viewNum` int(11) NOT NULL default '0',
  `commentNum` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fk_articles_users` (`userId`),
  KEY `fk_articles_categories` (`categoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  `comment` text NOT NULL,
  `createdTime` int(11) NOT NULL,
  `modifiedTime` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_comments_articles` (`articleId`),
  KEY `fk_comments_users` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `articleNum` int(11) NOT NULL default '0',
  `commentNum` int(11) NOT NULL default '0',
  `email` varchar(50) NOT NULL,
  `nickname` varchar(50) default NULL,
  `createdTime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 限制导出的表
--

--
-- 限制表 `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_articles_categories` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_articles_users` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_articles` FOREIGN KEY (`articleId`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comments_users` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
