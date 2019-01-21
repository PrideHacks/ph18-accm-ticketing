create table volunteer
(
  id          int auto_increment
    primary key,
  phoneNumber varchar(10)  null,
  name        varchar(50)  null,
  address     varchar(200) null,
  email       varchar(200) null
);

create table events
(
  id          int auto_increment
    primary key,
  volunteerID int                                 not null,
  nameOfevent varchar(50)                         null,
  location    varchar(200)                        null,
  start_time  timestamp default CURRENT_TIMESTAMP not null,
  checkinTime datetime                            null,
  status      varchar(100)                        null,
  constraint volunteerLink
  foreign key (volunteerID) references volunteer (id)
);
