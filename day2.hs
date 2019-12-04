totalFuelPerModule :: Int -> Int
totalFuelPerModule mass | mass <= 8 = 0
                        | otherwise = fuelForMass + totalFuelPerModule fuelForMass
                        where fuelForMass = quot mass 3 - 2

totalFuel :: [String] -> String
totalFuel l = show $ sum $ map totalFuelPerModule $ map read l

main = do
    inputStr <- getContents
    putStrLn $ totalFuel $ lines inputStr