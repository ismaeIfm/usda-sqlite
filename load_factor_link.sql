DROP TABLE IF EXISTS `factor_link`;
CREATE TABLE `factor_link` (
  food_id char(5) REFERENCES food(id) NOT NULL,
  factor char(5) REFERENCES factor(id) NOT NULL,
  PRIMARY KEY(food_id, factor_id)

);

.separator "^"
.import data/LANGUAL.txt factor_link
