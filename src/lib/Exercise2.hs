-- |
-- Exercise 2: Conduit is a monad transformer
--
-- Conduit would not be that useful if all you could do was push around pure
-- values. Its main value is that it's a monad transformer, which means that you
-- can __interleave__ side effects and processing into the stream. That's what
-- allows it to e.g. process files in constant space.

module Exercise2 where

import Conduit
import Control.Monad.IO.Class ( MonadIO(..) )
import Control.Monad.Trans.Resource
import System.IO

-- Implement a function that takes in two FilePaths: "src" and "dst", and returns
-- a Conduit stream. The stream should read each character in "src", and write
-- the upcased character to "dst". The stream should return the total amount of
-- characters written.
--
-- Feel free to use any utilities in the `conduit` package for this exercise.

main :: IO ()
main = pure ()
