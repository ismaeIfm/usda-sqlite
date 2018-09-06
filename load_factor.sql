DROP TABLE IF EXISTS `factor`;
CREATE TABLE `factor` (
  id char(5) PRIMARY KEY NOT NULL,
  description text NOT NULL DEFAULT ''
);

.separator "^"
.import data/LANGDESC.txt factor
