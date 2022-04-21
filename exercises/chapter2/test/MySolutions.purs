module Test.MySolutions where

import Prelude
import Math (sqrt, pi)
import Data.Int (rem)
import Data.Function (flip)

diagonal w h = sqrt (w * w + h * h)

circleArea r = pi * r * r

leftoverCents = flip rem 100