-- |
-- Exercise 3: Resource management
--
-- Because we use Conduit for long-running stream processing, we'll often be holding
-- onto scarce resources while running our stream: file descriptors, network sockets,
-- database connections, and so on. How do we ensure that those get promptly cleaned
-- up when we're done, or if errors happen during processing?
--
-- The main way Conduit handles this is via ResourceT, which allows you to register
-- finalizers that should always get run. If you register, say, an `hClose` on a file
-- handle, it will always get run once, when the ResourceT exits.

module Exercise3 where

import Conduit
import Control.Monad.IO.Class ( MonadIO(..) )
import Control.Monad.Trans.Resource
import Data.ByteString ( ByteString )
import System.IO

-- Reimplement your file processing from Exercise 2. However, this time we'll
-- implement sourceFile and sinkFile ourselves.

-- |
-- Stream the contents of a file as binary data.
sourceFile :: MonadResource m => MonadIO m => FilePath -> ConduitT i ByteString m ()
sourceFile = undefined

-- |
-- Stream all incoming data to the given file, creating it if it doesn't exist.
sinkFile :: MonadResource m => MonadIO m => FilePath -> ConduitT ByteString o m ()
sinkFile = undefined
