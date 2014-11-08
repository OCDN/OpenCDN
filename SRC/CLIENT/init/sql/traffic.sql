CREATE TABLE IF NOT EXISTS data(
	app_id INTEGER,
	time INTEGER,
	domain TEXT,
	pv INTEGER,
	pv_hit INTEGER,
	byte INTEGER,
	byte_hit INTEGER,
	byte_req INTEGER,
	time_req INTEGER,
	pv_2xx INTEGER,
	pv_3xx INTEGER,
	pv_4xx INTEGER,
	pv_5xx INTEGER,
	PRIMARY KEY(app_id, time, domain)
);