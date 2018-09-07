DROP TABLE IF EXISTS `weight`;
CREATE TABLE `weight` (
    ndbno char(5) REFERENCES food(ndbno) NOT NULL,
    sequence_num int NOT NULL,
    amount float NOT NULL,
    description text NOT NULL,
    gm_weight float NOT NULL,
    num_data_pts int,
    std_dev float,
    PRIMARY KEY(ndbno, sequence_num)
);

.separator "^"
.import data/WEIGHT.txt weight
