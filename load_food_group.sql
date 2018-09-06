DROP TABLE IF EXISTS `food_group`;
CREATE TABLE `food_group` (
  id char(4) PRIMARY KEY NOT NULL,
  name text NOT NULL
);

.separator "^"
.import data/FD_GROUP.txt food_group
