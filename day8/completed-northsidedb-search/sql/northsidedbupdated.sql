CREATE TABLE Stage
(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  capacity INT NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE Artist
(
  id INT NOT NULL AUTO_INCREMENT,
  artistname VARCHAR(100) NOT NULL,
  country VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE artiststage
(
  datetime DATETIME NOT NULL,
  id INT NOT NULL,
  stageid INT NOT NULL,
  artistid INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (stageid) REFERENCES Stage(id),
  FOREIGN KEY (artistid) REFERENCES Artist(id),
  UNIQUE (stageid,datetime),
  UNIQUE (artistid,datetime)
);
