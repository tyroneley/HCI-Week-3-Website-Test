CREATE DATABASE IF NOT EXISTS `db_week3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_week3`;

DROP TABLE IF EXISTS `tbl_week3`;
CREATE TABLE `tbl_week3` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `major` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `message` text NOT NULL
  `campus` varchar(50) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `tbl_week3`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_week3`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;