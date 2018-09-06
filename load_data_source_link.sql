DROP TABLE IF EXISTS `source_link`;
CREATE TABLE `source_link` (
  food_id char(5) REFERENCES food(id) NOT NULL,
  nutrient_id char(3) REFERENCES nutrient(id) NOT NULL,
  source_id char(6) REFERENCES source(id) NOT NULL,
  PRIMARY KEY(food_id, nutrient_id, source_id)
);

.separator "^"
.import data/DATSRCLN.txt source_link
