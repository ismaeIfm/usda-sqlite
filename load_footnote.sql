DROP TABLE IF EXISTS `footnote`;
CREATE TABLE `footnote` (
  food_id int REFERENCES food(id) NOT NULL,
  id int NOT NULL,
  type text NOT NULL DEFAULT '',
  nutrient_id int REFERENCES nutrient(id) NOT NULL,
  footnote_text text NOT NULL DEFAULT '',
  PRIMARY KEY(food_id, id, nutrient_id)
);

.separator "^"
.import data/FOOTNOTE.txt footnote
