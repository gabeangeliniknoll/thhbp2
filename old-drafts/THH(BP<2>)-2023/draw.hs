genLine name x y size =
   let
     node i = concat [ "\\node[inner sep = 1pt] ("
                      , name
                      , show i
                      , ") at "
                      , show (fromIntegral i + x, fromIntegral i * 0.2 + y)
                      , " {$\\bullet$} ;"]
     draw i = concat [ "\\draw ("
                     , name
                     , show i
                     , ") to ("
                     , name
                     , show $ i + 1
                     , ");"]
   in
     do
       mapM_ (putStrLn . node) [0 .. size]
       mapM_ (putStrLn . draw) [0 .. size - 1]

genMultByP name1 name2 size offset =
  let
    draw i = concat [ "\\draw ("
                    , name1
                    , show i
                    , ") to ("
                    , name2
                    , show $ i + offset
                    , ");"]
  in
    mapM_ (putStrLn . draw) [0 .. size]
