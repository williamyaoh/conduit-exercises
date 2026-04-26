-- |
-- Exercise 1: Conduit from the ground level
--
-- A lot of Conduit tutorials start from high-level functions that operate
-- over an entire stream. We're going to start from the other end: the primitive
-- operations that you use to actually construct Conduits, because I think it's
-- easier to understand.
--
-- The main primitive pieces you need to write Conduits are:
--
--  - yield, to output a value
--  - await, to fetch a value from upstream
--  - (.|), to connect the output of one Conduit to the input of another
--  - the Monad instance on ConduitT

module Exercise1 where

import Prelude hiding ( sum )

import Conduit hiding ( yieldMany, mapC, filterC )

-- Implement yieldMany in terms of yield.
yieldMany :: Monad m => [a] -> ConduitT i a m ()
yieldMany = undefined

-- Implement sum in terms of await.
sum :: (Monad m, Num a) => ConduitT a o m a
sum = undefined

-- Implement mapC in terms of await and yield.
mapC :: Monad m => (a -> b) -> ConduitT a b m ()
mapC = undefined

-- For each 2 elements in the upstream, combine them with the given function and
-- output them downstream. For example, if the combining function is (*) and the
-- upstream is [3 7 11 5 2 13], the downstream should be [21 55 26].
chunk2With :: (a -> a -> b) -> ConduitT a b m ()
chunk2With = undefined

-- Filter out any elements in the stream that don't match the predicate.
filterC :: Monad m => (a -> Bool) -> ConduitT a a m ()
filterC = undefined

-- Try combining the functions above using .|
