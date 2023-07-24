/* Assume you're given two tables containing data about Facebook Pages and their respective likes (as in "Like a Facebook Page").

Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs. */

SELECT 
  p.page_id 
FROM pages AS p
LEFT JOIN page_likes AS pl 
ON p.page_id = pl.page_id
WHERE pl.liked_date IS NULL 
ORDER BY p.page_id
