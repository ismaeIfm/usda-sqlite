DROP TABLE IF EXISTS `derivation_code`;
CREATE TABLE `derivation_code` (
  id int PRIMARY KEY NOT NULL,
  description text
);

.separator "^"
.import data/DERIV_CD.txt derivation_code
