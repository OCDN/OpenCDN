CREATE TABLE data(
	app_id INTEGER,
	time INTEGER,
	domain TEXT,
	pv INTEGER,
	hit_pv INTEGER,
	byte INTEGER,
	hit_byte INTEGER,
	pv_2xx INTEGER,
	pv_3xx INTEGER,
	pv_4xx INTEGER,
	pv_5xx INTEGER,
	PRIMARY KEY(app_id, time)
);