import Random

type Point     = (Float,Float)
type Rect      = (Point,Float,Float)
type Color     = (Int,Int,Int)


listOfRects :: [Rect]
listOfRects = take 500 [ ((x,y),z,t) | x <- [unsafePerformIO (getStdRandom (randomR (0, 500))),unsafePerformIO (getStdRandom (randomR (0, 700)))], y <- [unsafePerformIO (getStdRandom (randomR (0, 25))),unsafePerformIO (getStdRandom (randomR (0, 300)))], z <- [unsafePerformIO (getStdRandom (randomR (0, 600))),unsafePerformIO (getStdRandom (randomR (0, 253)))], t <- [unsafePerformIO (getStdRandom (randomR (0, 55))),unsafePerformIO (getStdRandom (randomR (0, 400)))]]


-- Lista de cores (constante) 


listOfColors :: [Color]
listOfColors = take 500 [ (r,g,b) | r <-  [unsafePerformIO (getStdRandom (randomR (0, 255))), unsafePerformIO (getStdRandom (randomR (0, 255))), unsafePerformIO (getStdRandom (randomR (0, 255)))], g <- [unsafePerformIO (getStdRandom (randomR (0, 255))), unsafePerformIO (getStdRandom (randomR (0, 255))), unsafePerformIO (getStdRandom (randomR (0, 255)))], b <-  [unsafePerformIO (getStdRandom (randomR (0, 255))), unsafePerformIO (getStdRandom (randomR (0, 255))), unsafePerformIO (getStdRandom (randomR (0, 255)))] ]
