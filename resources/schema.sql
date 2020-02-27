CREATE TABLE state (
	state_id VARCHAR PRIMARY KEY NOT NULL,
	med_inc REAL,
	mean_inc REAL,
	std_dev REAL
);

SELECT * FROM state;

CREATE TABLE fund_range (
	fund_range VARCHAR PRIMARY KEY NOT NULL,
	num_of_co INT
);

SELECT * FROM fund_range;

CREATE TABLE status (
	stat_id SERIAL PRIMARY KEY NOT NULL,
	co_name VARCHAR,
	status VARCHAR
);

SELECT * FROM status;

CREATE TABLE market (
	market_id VARCHAR PRIMARY KEY NOT NULL,
	mean_fund REAL
);

SELECT * FROM market;

CREATE TABLE company(
	co_id SERIAL PRIMARY KEY NOT NULL,
	co_name VARCHAR,
	state_id VARCHAR,
	fund_total BIGINT,
	home_url VARCHAR,
	market_id VARCHAR,
	fund_range VARCHAR,
	FOREIGN KEY (state_id) REFERENCES state (state_id),
	FOREIGN KEY (co_id) REFERENCES status(stat_id),
	FOREIGN KEY (market_id) REFERENCES market (market_id),
	FOREIGN KEY (fund_range) REFERENCES fund_range(fund_range)
);

SELECT * FROM company;