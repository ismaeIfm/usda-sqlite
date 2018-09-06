DROP TABLE IF EXISTS `nutrition`;
CREATE TABLE `nutrition` (
  food_id int REFERENCES food(id) NOT NULL,
  nutrient_id int REFERENCES nutrient(id) NOT NULL,
  amount float NOT NULL,
  num_data_points int NOT NULL,
  std_error float,
  source_code int REFERENCES sources(id),
  derivation_code int REFERENCES derivation_code(id),
  reference_food_id REFERENCES food(id),
  added_nutrient text,
  num_studients int,
  min float,
  max float,
  degrees_freedom int,
  lower_error_bound float,
  upper_error_bound float,
  comments text,
  modification_date text,
  PRIMARY KEY(food_id, nutrient_id)
);

.separator "^"
.import data/NUT_DATA.txt nutrition
