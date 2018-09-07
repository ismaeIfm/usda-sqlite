DROP TABLE IF EXISTS `factor_link`;
CREATE TABLE `factor_link` (
  ndbno char(5) REFERENCES food(ndbno) NOT NULL,
  factor_code char(5) REFERENCES factor(factor_code) NOT NULL,
  PRIMARY KEY(ndbno, factor_code)

);

.separator "^"
.import data/LANGUAL.txt factor_link
