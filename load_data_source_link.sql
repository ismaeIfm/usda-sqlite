DROP TABLE IF EXISTS `source_link`;
CREATE TABLE `source_link` (
  food_id int REFERENCES food(id) NOT NULL,
  nutrient_id int REFERENCES nutrient(id) NOT NULL,
  source_id int REFERENCES source(id) NOT NULL,
  PRIMARY KEY(food_id, nutrient_id, source_id)
);

.separator "^"
.import data/DATSRCLN.txt source_link
