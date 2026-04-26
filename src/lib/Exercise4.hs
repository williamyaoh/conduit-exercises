-- |
-- Exercise 4: Conduit and concurrency
--
-- An important thing to realize is that Conduit is __not__ a concurrency
-- library. When you run your stream, it is going to run on your current
-- green thread. Take care to launch new green threads if you need streams
-- to process in parallel.

module Exercise4 where

import Conduit
import Control.Concurrent.Async
import Control.Concurrent.Chan
import Control.Monad.IO.Class ( MonadIO(..) )

-- Stream values out of the given Chan.
sourceChan :: MonadIO m => Chan a -> ConduitT i a m ()
sourceChan = undefined

-- Write incoming values into the Chan.
sinkChan :: MonadIO m => Chan a -> ConduitT a o m ()
sinkChan = undefined

-- Now, write a main function that initializes a channel and launches
-- producers/consumers of that channel, using Conduit.
--
-- What happens when we launch both the producer and consumer without forking?
-- What happens when we launch multiple consumers?
