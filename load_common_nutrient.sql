DROP TABLE IF EXISTS `common_nutrient`;
CREATE TABLE `common_nutrient` (
  nutrno char(3) PRIMARY KEY REFERENCES nutrient(nutrno)
);

.import common_nutrient.txt common_nutrient
