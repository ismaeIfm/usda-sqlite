DROP TABLE IF EXISTS `data_source`;
CREATE TABLE `data_source` (
  data_source_id char(6) PRIMARY KEY NOT NULL,
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
.import data/DATA_SRC.txt data_source
