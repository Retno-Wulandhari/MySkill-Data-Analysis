--Menampilkan data dengan kondisi or
SELECT 
	order_id,
	product_id,
	customer_id,
	customer_name,
	state
FROM public.orders
where
	customer_name = 'Andrew Allen'
	or state != 'California' 

--Menampilkan data dengan kondisi or 
--dengan ketentuan lebih dari satu bisa menggunakan fungsi IN
SELECT 
	order_id,
	product_id,
	customer_id,
	customer_name,
	state
FROM public.orders
where
	--state = 'California' or state = 'Indiana' or state = 'Missouri'
	state IN ('California','Indiana','Misoouri')

--Menampilkan data dengan fungsi NOT IN (selain data yang di tuliskan akan tampil)
SELECT 
	order_id,
	product_id,
	customer_id,
	customer_name,
	state
FROM public.orders
where
	state NOT IN ('California','Indiana','Missouri')

--Menampilkan data kosong dan tidak kosong
SELECT 
	order_id,
	product_id,
	customer_id,
	customer_name,
	state
FROM orders
where
	state IS NOT NULL
	-- postal_code IS NULL