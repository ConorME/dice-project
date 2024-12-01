module Dice (
    SixSidedDice(..),
    Rollable(..)
) where

import System.Random (randomRIO)

data SixSidedDice = One | Two | Three | Four | Five | Six
    deriving (Show, Enum, Bounded, Eq)

class Rollable a where
    roll :: IO a

instance Rollable SixSidedDice where
    roll = do
        randomInt <- randomRIO (1, 6)
        return $ toEnum (randomInt - 1) 

