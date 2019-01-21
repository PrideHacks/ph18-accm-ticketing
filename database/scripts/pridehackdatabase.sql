CREATE TABLE IF NOT EXISTS volonter (
  volonterNumber_id int(11) NOT NULL AUTO_INCREMENT,
  phoneNumber_id INT(11) DEFAULT NULL,
  name VARCHAR(50) DEFAULT NULL,
  adresse VARCHAR(200) DEFAULT NULL,
  email VARCHAR(200) DEFAULT NULL,	
  PRIMARY KEY (volonterNumber_id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS events (
  id INT(11) NOT NULL AUTO_INCREMENT,
  volonterNumber_id int(11) NOT NULL,
  nameOfevent VARCHAR(50) DEFAULT NULL,
  location VARCHAR(200) DEFAULT NULL,
  start_time datetime DEFAULT CURRENT_TIMESTAMP,
  checkinTime datetime,
  status VARCHAR(100),
  PRIMARY KEY (id),
  CONSTRAINT volonterLink
  FOREIGN KEY events (volonterNumber_id)
  REFERENCES volonter(volonterNumber_id)
) ENGINE=InnoDB;