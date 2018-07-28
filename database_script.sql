CREATE SCHEMA `myproject` ;
ALTER SCHEMA `myproject`  DEFAULT CHARACTER SET utf8 ;


-- news table
CREATE TABLE `myproject`.`news` (
  `news_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `description` TEXT NULL,
  `active` TINYINT NULL,
  `date` DATE NULL,
  PRIMARY KEY (`news_id`)
);

-- data for news table
INSERT INTO `myproject`.`news` (`title`, `description`, `active`, `date`) VALUES ('At vero eos', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem', '1', '2018-07-27');
INSERT INTO `myproject`.`news` (`title`, `description`, `active`, `date`) VALUES ('voluptatem accusantium', 'sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum', '1', '2018-06-02');
INSERT INTO `myproject`.`news` (`title`, `description`, `active`, `date`) VALUES ('Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', '1', '2018-07-31');

-- projects table 

CREATE TABLE `myproject`.`projects` (
  `project_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `description` TEXT NULL,
  `active` TINYINT NULL DEFAULT 0,
  `image_name` VARCHAR(45) NULL DEFAULT NULL,
  `category` ENUM('CAT1', 'CAT2', 'CAT3') NOT NULL,
  PRIMARY KEY (`project_id`));

-- data for projects table
INSERT INTO `myproject`.`projects` (`title`, `description`, `active`, `image_name`, `category`) VALUES ('sunt explicabo', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit', '1', 'item1.png', 'CAT1');
INSERT INTO `myproject`.`projects` (`title`, `description`, `active`, `image_name`, `category`) VALUES ('eaque ipsa quae', 'ab illo inventore veritatis et quasi architecto beatae vitae dicta .', '1', 'item2.png', 'CAT2');
INSERT INTO `myproject`.`projects` (`title`, `description`, `active`, `image_name`, `category`) VALUES ('Sed ut perspiciatis', 'unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem', '1', 'item3.png', 'CAT3');
INSERT INTO `myproject`.`projects` (`title`, `description`, `active`, `image_name`, `category`) VALUES ('At vero eos ', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate', '1', 'item4.png', 'CAT3');
INSERT INTO `myproject`.`projects` (`title`, `description`, `active`, `image_name`, `category`) VALUES (' quibusdam et aut ', 'quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum', '1', 'item5.png', 'CAT1');
INSERT INTO `myproject`.`projects` (`title`, `description`, `active`, `image_name`, `category`) VALUES ('consequuntur magni dolore', 'consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, ', '1', 'item6.png', 'CAT2');
INSERT INTO `myproject`.`projects` (`title`, `description`, `active`, `image_name`, `category`) VALUES ('sed do eiusmod tempor', 'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', '1', 'item7.png', 'CAT2');
INSERT INTO `myproject`.`projects` (`title`, `description`, `active`, `image_name`, `category`) VALUES ('praesentium voluptatum deleniti', 'praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sun', '1', 'item8.png', 'CAT2');


-- users table
CREATE TABLE `myproject`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`));

INSERT INTO `myproject`.`users` (`name`) VALUES ('John Snow');
INSERT INTO `myproject`.`users` (`name`) VALUES ('Jack Sparoow');
INSERT INTO `myproject`.`users` (`name`) VALUES ('Emma Watson');
INSERT INTO `myproject`.`users` (`name`) VALUES ('Randy Auton');


-- posts table
CREATE TABLE `myproject`.`posts` (
  `post_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `post_title` VARCHAR(100) NOT NULL,
  `post_description` TEXT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `post_date` DATE NULL,
  `active` TINYINT NULL,
  `post_image_name` VARCHAR(45) NULL,
  PRIMARY KEY (`post_id`)); 


-- data for posts table
INSERT INTO `myproject`.`posts` (`post_title`, `post_description`, `created_at`, `post_date`, `active`, `user_id`,`post_image_name`) VALUES ('Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ex lectus, malesuada ut ex vel, blandit scelerisque quam. Donec et venenatis nunc. Integer facilisis ex eu sollicitudin gravida. Praesent ex nisi, rhoncus a justo vitae, tincidunt viverra libero. Maecenas laoreet, lectus quis dictum molestie, nibh velit pellentesque quam, vel convallis lectus nunc eget turpis. Suspendisse pharetra dolor ut erat ullamcorper feugiat. Nam laoreet, odio non finibus tempor, magna orci tristique orci, mollis congue sem nulla fermentum ex. Maecenas vitae magna in ex tincidunt pulvinar ut ac nunc. Fusce blandit vestibulum tortor, quis accumsan sem egestas sit amet.', '2018-07-31 02:15:59', '2018-07-31', '1', '1','blog1.jpg');
INSERT INTO `myproject`.`posts` (`post_title`, `post_description`, `created_at`, `post_date`, `active`, `user_id`,`post_image_name`) VALUES ('Nunc interdum pretium', 'Nunc interdum pretium erat eu euismod. Maecenas facilisis fermentum tincidunt. Sed faucibus nisi vitae consequat dapibus. Morbi aliquet nibh nec dolor consequat, eu interdum tortor scelerisque. Pellentesque dignissim odio in augue ultrices, blandit congue lacus hendrerit. Quisque elementum consequat fermentum', '2018-06-12 09:15:59', '2018-06-12', '1', '2','blog2.jpg');
INSERT INTO `myproject`.`posts` (`post_title`, `post_description`, `created_at`, `post_date`, `active`, `user_id`,`post_image_name`) VALUES ('Vestibulum dapibus', 'Vestibulum dapibus felis a sapien feugiat, ut auctor erat euismod. Mauris porta eu nisl ac scelerisque. Proin nec ante velit. Vivamus scelerisque rhoncus sapien, eu dictum libero pharetra id. Suspendisse potenti. Ut lobortis quam non pretium luctus. Donec interdum odio eu odio venenatis lobortis.', '2018-04-23 12:00:59', '2018-04-23', '1', '3','blog3.jpg');


-- comments table
CREATE TABLE `myproject`.`post_comments` (
  `comment_id` INT NOT NULL AUTO_INCREMENT,
  `post_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `comment` VARCHAR(120) NOT NULL,
  PRIMARY KEY (`comment_id`));
ALTER TABLE `myproject`.`post_comments` 
ENGINE = InnoDB ;

-- data for comments table
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('1', '2', 'Lorem ipsum dolor');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('1', '3', 'fringilla nec libero et, accumsan');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('1', '1', 'porttitor risus. Curabitur ');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('1', '2', 'gravida sit amet vulputate');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('1', '1', 'acinia dolor ipsum');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('2', '1', 'Sed vitae leo fermentum');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('2', '2', 'sodales enim. Nulla pellentesque ');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('2', '1', 'Donec ut consectetur augue');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('3', '3', 'imperdiet sollicitudin.');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('3', '2', 'accumsan porttitor risus');
INSERT INTO `myproject`.`post_comments` (`post_id`, `user_id`, `comment`) VALUES ('3', '2', 'Nulla facilisi. Aenean ');

