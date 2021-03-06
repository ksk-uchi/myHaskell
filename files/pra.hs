doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

doubleSmallNumber x =
    if x > 100
        then x
        else x * 2

doubleSmallNumber' x =
    (if x > 100
        then x
        else x * 2) + 1

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

length' xs = sum [1 | _ <- xs]

makeCharUpper :: Char -> Char
makeCharUpper '1' = 'k'
makeCharUpper x =
    if x `elem` ['a'..'z']
        then
            head [big | (small, big) <- zip ['a'..'z'] ['A'..'Z'], x == small]
        else
            x

makeStringUpper :: [String] -> [String]
makeStringUpper xs = [[makeCharUpper (head x)] ++ (tail x) | x <- xs]

fibonacci :: Integer -> [Integer]
fibonacci 0 = []
fibonacci 1 = [0]
fibonacci 2 = [0, 1]
fibonacci x = 
    before ++ [sum (take 2 (reverse (before)))]
    where before = fibonacci (x - 1)

fibonacci' :: Integer -> [Integer]
fibonacci' 0 = []
fibonacci' 1 = [0]
fibonacci' 2 = [0, 1]
fibonacci' x = 
    let before = fibonacci' (x - 1)
    in before ++ [sum (take 2 (reverse (before)))]

addVector :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVector (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

head' :: [a] -> a
head' [] = error "This is an Error"
head' (x:_) = x

head2' :: [a] -> a
head2' xs = case xs of [] -> error "This is an Error"
                       (x:_) -> x
