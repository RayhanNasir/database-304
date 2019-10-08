/* ALTER TABLE specs
	ADD tyre	VARCHAR(10);

ALTER TABLE cars
	ADD (	company	VARCHAR(10),
		Supplier	VARCHAR(10));
ALTER TABLE specs
	MODIFY tyre	number(3);

ALTER TABLE cars
	MODIFY (	company	VARCHAR(20),
			Supplier	VARCHAR(20));

ALTER TABLE specs
	DROP COLUMN tyre;*/

ALTER TABLE cars
	RENAME COLUMN company to manufacturer;

insert 


