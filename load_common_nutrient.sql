DROP TABLE IF EXISTS `common_nutrient`;
CREATE TABLE `common_nutrient` (
  id char(3) PRIMARY KEY REFERENCES nutrient(id)
);

.import common_nutrient.txt common_nutrient
