CREATE TABLE `comment` (
	`comment_no` bigint(19) NOT NULL AUTO_INCREMENT,
	`user_id` varchar(32) NOT NULL,
	`comment_content` mediumtext NOT NULL,
	`reg_date` datetime NOT NULL,
	PRIMARY KEY (`comment_no`)
);

CREATE TABLE `reply` (
	`reply_no` bigint(19) NOT NULL AUTO_INCREMENT,
	`comment_no` bigint(19) NOT NULL ,
	`user_id` varchar(32) NOT NULL,
	`reply_content` varchar(300) NOT NULL,
	`reg_date` datetime NOT NULL,
	PRIMARY KEY (`reply_no`)
);

CREATE TABLE `user` (
	`user_id` varchar(32) NOT NULL,
	`user_name` varchar(100) NOT NULL,
	PRIMARY KEY (`user_id`)
);