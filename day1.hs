totalFuel :: [String] -> String
totalFuel massList = show $ sum $ map (fuelcalc . read) massList
                where fuelcalc mass = quot mass 3 - 2

main = do
    inputStr <- getContents
    putStrLn $ totalFuel $ lines inputStr