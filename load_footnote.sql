DROP TABLE IF EXISTS `footnote`;
CREATE TABLE `footnote` (
  ndbno char(5) REFERENCES food(ndbno) NOT NULL,
  footnote_no char(4) NOT NULL,
  type text NOT NULL DEFAULT '',
  nutrno char(3) REFERENCES nutrient(nutrno) NOT NULL,
  footnote_text text NOT NULL DEFAULT '',
  PRIMARY KEY(ndbno, footnote_no, nutrno)
);

.separator "^"
.import data/FOOTNOTE.txt footnote
