               Question Set 1 - Easy
1. Who is the senior most employee based on job title?

select first_name,last_name,title from  employee
order by levels desc 
LIMIT 1

2. Which countries have the most Invoices?
 select billing_country,count(billing_country) as MOst_INV from invoice
 group by billing_country order by MOst_INV desc
 limit 5 -- here limit is extra

 --OR

 select billing_country,count(*) as MOst_INV from invoice
 group by billing_country order by MOst_INV desc

3. What are top 3 values of total invoice?
select total from invoice
order by total desc 
limit 3

4. Which city has the best customers? We would like to throw a promotional Music 
Festival in the city we made the most money. Write a query that returns one city that 
has the highest sum of invoice totals. Return both the city name & sum of all invoice 
totals
select billing_city,sum(total) as invoice_Total from invoice
group by billing_city
order by invoice_Total desc
Limit 1

5.Who is the best customer? The customer who has spent the most money will be 
declared the best customer. Write a query that returns the person who has spent the 
most money.

select c.customer_id,c.first_name,c.last_name,sum(total) as total_spending
from customer c
join invoice i on c.customer_id=i.customer_id
group by c.customer_id
order by total_spending desc
limit 1

                    Question Set 2 – Moderate
1. Write query to return the email, first name, last name, & Genre of all Rock Music 
listeners. Return your list ordered alphabetically by email starting with A

select track_id , genre.name from track join genre on track.genre_id=genre.genre_id


2. Let's invite the artists who have written the most rock music in our dataset. Write a 
query that returns the Artist name and total track count of the top 10 rock bands



3. Return all the track names that have a song length longer than the average song length. 
Return the Name and Milliseconds for each track. Order by the song length with the 
longest songs listed first

  
                    Question Set 3 – Advance
1. Find how much amount spent by each customer on artists? Write a query to return
customer name, artist name and total spent

2. We want to find out the most popular music Genre for each country. We determine the 
most popular genre as the genre with the highest amount of purchases. Write a query 
that returns each country along with the top Genre. For countries where the maximum 
number of purchases is shared return all Genres



3. Write a query that determines the customer that has spent the most on music for each 
country. Write a query that returns the country along with the top customer and how
much they spent. For countries where the top amount spent is shared, provide all 
customers who spent this amount


