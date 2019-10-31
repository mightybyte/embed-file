module Main where

------------------------------------------------------------------------------
import qualified Data.ByteString.Char8 as B
import           Data.FileEmbed
import           System.Environment
------------------------------------------------------------------------------

main :: IO ()
main = do
  args <- getArgs
  case args of
    [injectId, payload, inFile, outFile] ->
      injectFileWith (B.pack injectId) (B.pack payload) inFile outFile
    _ -> putStrLn "Usage: ./embed-file <payload> <in-file> <out-file>"

