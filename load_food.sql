DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  ndbno char(5) PRIMARY KEY NOT NULL,
  food_group_code char(4) REFERENCES food_group(food_group_code) NOT NULL,
  long_desc text NOT NULL DEFAULT '',
  short_desc text NOT NULL DEFAULT '',
  common_names text NOT NULL DEFAULT '',
  manufac_name text NOT NULL DEFAULT '',
  survey text NOT NULL DEFAULT '',
  ref_desc text NOT NULL DEFAULT '',
  refuse int NOT NULL,
  sci_name text NOT NULL DEFAULT '',
  nitrogen_factor float NOT NULL,
  protein_factor float NOT  NULL,
  fat_factor float NOT NULL,
  carbohydrate_factor float NOT NULL
);
CREATE INDEX food_short_desc_search_index ON food(short_desc);
CREATE INDEX food_long_desc_search_index ON food(long_desc);

.separator "^"
.import data/FOOD_DES.txt food
