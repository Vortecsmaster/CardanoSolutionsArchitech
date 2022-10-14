module UnitTesting where

import Hedgehog
import Test.HUnit
import MathBountyV2 

-- import qualified HedgeHog.Gen      as Gen
-- import qualified HedgeHog.Range    as Range
-- import Test.Tasty
-- import Tasty.ExpectedFailure
-- import Test.Tasty.HedgeHog

foo :: Int -> (Int,Int)
foo n = (1,n)

test1 = TestCase (assertEqual "for (foo 3)," (1,3) (foo 3))

-- test2 = TestCase (do (x,y) <- partA 3
--                      assertEqual "for the first result of partA," 5 x
--                      b <- partB y
--                      assertBool ("(partB " ++ show y ++ ") failed") b)

tests = TestList [TestLabel "test1" test1] --, TestLabel "test2" test2
                     

