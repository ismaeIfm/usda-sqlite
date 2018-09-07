DROP TABLE IF EXISTS `source_code`;
CREATE TABLE `source_code` (
  source_code char(2) PRIMARY KEY NOT NULL,
  description text NOT NULL DEFAULT ''
);

.separator "^"
.import data/SRC_CD.txt source_code
