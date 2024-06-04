create table user_consumable_tbl (
  carId varchar(40) not null,
  engineOil varchar(20),
  breakOil varchar(20),
  breakPad varchar(20),
  wiper varchar(20),
  tire varchar(20),
  airConFilter varchar(20),
  sparkPlug varchar(20),
  battery varchar(20),
  coolingWater varchar(20),
  transmissionOil varchar(20),
  powerSteeringOil varchar(20),
  fluidClutch varchar(20)
);

drop table user_consumable_tbl;

alter table user_consumable_tbl add constraint pk_user_consumable primary key(carId);

commit;

desc user_consumable_tbl;

SELECT * FROM USER_CONSUMABLE_TBL;

INSERT INTO USER_CONSUMABLE_TBL(
    carId,
    engineOil,
    breakOil,
    breakPad,
    wiper,
    tire,
    airConFilter,
    sparkPlug,
    battery,
    coolingWater,
    transmissionOil,
    powerSteeringOil,
    fluidClutch
)
VALUES (
    '6d97337b-eb53-467b-baf4-7faec6d7065e',
    '115000',
    '90000',
    '90000',
    '2023-08-26',
    '75000',
    '100000',
    '85000',
    '2021-03-08',
    '50000',
    '50000',
    '2020-11-20',
    '2022-04-28'
);

SELECT * FROM user_consumable_tbl WHERE car_id = '6d97337b-eb53-467b-baf4-7faec6d7065e';