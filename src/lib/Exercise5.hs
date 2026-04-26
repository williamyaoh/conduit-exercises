{-# LANGUAGE OverloadedStrings #-}

-- |
-- Exercise 5: Putting it all together
--
-- Here we'll use everything we've learned to write a small server that
-- operates over Unix domain sockets.
--
-- Using the `Network.Socket` module and Conduit, create a socket at
-- `/tmp/exercises.sock` that listens for incoming connections. You should be
-- able to send data to this socket using the following command:
--
-- > nc -U /tmp/exercises.sock
--
-- Incoming connections should be handled using the following simple text-based
-- protocol:
--
--   - Initially, any data the client sends is echoed back to them.
--   - When the client sends us ">>>>>", any data the client sends after
--     that should be encoded using the ROT13 cipher before being echoed
--     back to them: <https://en.wikipedia.org/wiki/ROT13>
--   - If we're in ROT13 mode and the client sends us "<<<<<", we go back
--     to echoing the client's data normally.
--
-- For instance, if the client sends us:
--   apple >>>>>banana <<<<<pear >>>>>mango <<<<<yuzu
-- We should send them:
--   apple onanan pear znatb yuzu
--
-- Be careful to properly handle scarce resources and concurrency! In particular:
--
--   - Make sure multiple clients can connect simultaneously.
--   - Make sure sockets are promptly closed when the client disconnects.

module Exercise5 where

import Codec.Rot13 ( rot13 )
import Conduit
import Control.Monad.Trans.Resource
import Control.Concurrent.Async
import Data.ByteString ( ByteString )
import Data.Conduit.Network ( sourceSocket, sinkSocket )
import Network.Socket

import qualified Data.ByteString as BS

-- |
-- Handles accepting incoming connections and returning the client socket.
acceptor :: MonadResource m => MonadIO m => ConduitT i Socket m ()
acceptor = do
  undefined

-- |
-- Handle client session.
clientSession :: MonadResource m => MonadIO m => Socket -> ConduitT i o m ()
clientSession sock = do
  undefined

main :: IO ()
main = do
  undefined
