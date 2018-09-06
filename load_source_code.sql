DROP TABLE IF EXISTS `source_code`;
CREATE TABLE `source_code` (
  id int PRIMARY KEY NOT NULL,
  description text NOT NULL DEFAULT ''
);

.separator "^"
.import data/SRC_CD.txt source_code
