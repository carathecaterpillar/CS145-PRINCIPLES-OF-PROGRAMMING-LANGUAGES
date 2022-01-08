--RONO, CARA 
--Assignment 2.1 : CS145

--returns the size of a list.
size [] = 0
size (x:xs) = 1 + size xs

-- returns the sum of all the elements of the list.
tot []= 0
tot (x:xs)= x+ tot xs

--returns the average of the elements of the list.
avg []=0
avg (x:xs) = tot(x:xs) / size(x:xs)

--returns the product of all the elements of the list.
prod []=1
prod (x:xs) = x * prod xs 

--returns the squares of the elements of the list.
sqr x = map (^2) x

-- returns the sum of the squares of the elements of the list.
sqrAdd	x = tot(map (^2) x)

-- It appends new element at the beginning of a list.
-- sample input: append 4 [1,2,3]
append a [] = [a]
append a (x:xs) = x : append a xs

--It merges two (2) lists. and sorts them 
merge new []  = new
merge (x:xs) new = x: merge new xs

--It multiplies two (2) lists. ???
multl = (zipWith (*))

-- sorts a list using insertion sort.
insert x [] = [x]
insert x (y:ys) | x < y     = x:y:ys
                | otherwise = y:(insert x ys)

srt [] = []
srt (x:xs) = insert x (srt xs)

--It returns the Fibonacci of n.
fib n = fibs!!n
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
	
--It computes the power of n.
power x 0 = 1
power x y = x * power x (y - 1)