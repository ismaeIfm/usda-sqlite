DROP TABLE IF EXISTS `footnote`;
CREATE TABLE `footnote` (
  food_id char(5) REFERENCES food(id) NOT NULL,
  id char(4) NOT NULL,
  type text NOT NULL DEFAULT '',
  nutrient_id char(3) REFERENCES nutrient(id) NOT NULL,
  footnote_text text NOT NULL DEFAULT '',
  PRIMARY KEY(food_id, id, nutrient_id)
);

.separator "^"
.import data/FOOTNOTE.txt footnote
