DROP TABLE IF EXISTS `data_source_link`;
CREATE TABLE `data_source_link` (
  ndbno char(5) REFERENCES food(ndbno) NOT NULL,
  nutrno char(3) REFERENCES nutrient(nutrno) NOT NULL,
  data_source_id char(6) REFERENCES data_source(data_source_id) NOT NULL,
  PRIMARY KEY(ndbno, nutrno, data_source_id)
);

.separator "^"
.import data/DATSRCLN.txt data_source_link
