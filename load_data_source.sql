DROP TABLE IF EXISTS `source`;
CREATE TABLE `source` (
  id int PRIMARY KEY NOT NULL,
  authors text,
  title text NOT NULL DEFAULT '',
  year text,
  journal text,
  volume_city text,
  issue_state text,
  start_page text,
  end_page text
);

.separator "^"
.import data/DATA_SRC.txt source
