DROP TABLE IF EXISTS `derivation_code`;
CREATE TABLE `derivation_code` (
  derivation_code char(4) PRIMARY KEY NOT NULL,
  description text
);

.separator "^"
.import data/DERIV_CD.txt derivation_code
