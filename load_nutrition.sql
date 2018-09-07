DROP TABLE IF EXISTS `nutrition`;
CREATE TABLE `nutrition` (
  ndbno char(5) REFERENCES food(ndbno) NOT NULL,
  nutrno char(3) REFERENCES nutrient(nutrno) NOT NULL,
  amount float NOT NULL,
  num_data_points int NOT NULL,
  std_error float,
  source_code char(2) REFERENCES source_code(source_code),
  derivation_code char(4) REFERENCES derivation_code(derivation_code),
  reference_ndbno REFERENCES food(ndbno),
  added_nutrient text,
  num_studients int,
  min float,
  max float,
  degrees_freedom int,
  lower_error_bound float,
  upper_error_bound float,
  comments text,
  modification_date text,
  PRIMARY KEY(ndbno, nutrno)
);

.separator "^"
.import data/NUT_DATA.txt nutrition
