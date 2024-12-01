import Test.Hspec
import Dice (SixSidedDice(..), Rollable(..)) 

main :: IO ()
main = hspec $ do
    describe "SixSidedDice" $ do
        it "roll produces a valid SixSidedDice value" $ do
            result <- roll :: IO SixSidedDice
            result `shouldSatisfy` (`elem` [One, Two, Three, Four, Five, Six])

