import Data.Char

-- Crie uma função isVowel :: Char -> Bool que verifique se um caracter é uma vogal ou não.
isVowel :: Char -> Bool
isVowel char
   | char == 'A' = True
   | char == 'I' = True
   | char == 'U' = True
   | char == 'E' = True
   | char == 'O' = True
   | char == 'a' = True
   | char == 'i' = True
   | char == 'u' = True
   | char == 'e' = True
   | char == 'o' = True
   | otherwise = False

-- Ou 

isVowel2 :: Char -> Bool
isVowel2 char =
    elem char "aeiouAEIOU"

-- Escreva uma função addComma, que adicione uma vírgula no final de cada string contida numa lista.
addComma :: [String] -> [String]
addComma lis =
    map (\x -> x ++ ",") lis
    
-- Crie uma função htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML. 
-- Resolva este exercício COM e SEM funções anônimas (lambda).
htmlListItems1 :: [String] -> [String]
htmlListItems1 lis =
    map (\x -> "<LI>" ++ x ++ "</LI>") lis

htmlListItems2 :: [String] -> [String]
htmlListItems2 lis =
    map htmlListItemsAux lis

htmlListItemsAux :: String -> String
htmlListItemsAux str = 
    "<LI>" ++ str ++ "</LI>"

-- Defina uma função que receba uma string e produza outra retirando as vogais, conforme os exemplos abaixo. Resolva este exercício COM e SEM funções anônimas (lambda).
noVowel1 :: String -> String
noVowel1 str = 
    filter ( not . isVowel ) str

noVowel2 :: String -> String
noVowel2 str =
    filter (\x -> not ( elem x "aeiouAEIOU" ) ) str
    
-- Defina uma função que receba uma string, possivelmente contendo espaços, e que retorne outra string substituindo os demais caracteres por '-', mas mantendo os espaços. 
-- Resolva este exercício COM e SEM funções anônimas (lambda). Exemplos:
codifica1 :: String -> String
codifica1 str = 
    map (\x -> if x /= ' ' then '-' else ' ') str

codifica2 :: String -> String
codifica2 str =
    map codifica2Aux str

codifica2Aux :: Char -> Char
codifica2Aux char 
    | char /= ' ' = '-'
    | otherwise = ' ' 

-- Escreva uma função firstName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu primeiro nome. 
-- Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome.
firstName :: String -> String
firstName name = 
    takeWhile (' '<) name

-- Escreva uma função isInt :: String -> Bool que verifique se uma dada string só contém dígitos de 0 a 9
isInt :: String -> Bool
isInt str = isIntAux2 (map isIntAux str)

isIntAux :: Char -> Bool
isIntAux char
    | char == '1' = True
    | char == '2' = True
    | char == '3' = True
    | char == '4' = True
    | char == '5' = True
    | char == '6' = True
    | char == '7' = True
    | char == '8' = True
    | char == '9' = True
    | char == '0' = True
    | otherwise = False

isIntAux2 :: [Bool] -> Bool
isIntAux2 lis = if ( filter (\x -> x == False) lis ) /= [] then False else True

-- Escreva uma função lastName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu último sobrenome. 
-- Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome.
lastName :: String -> String
lastName name = 
    last (words name)

-- Escreva uma função userName :: String -> String que, dado o nome completo de uma pessoa, crie um nome de usuário (login) da pessoa, formado por: primeira letra do nome seguida do sobrenome, tudo em minúsculas. 
userName :: String -> String
userName name =
    map toLower ([head name] ++ lastName name)

-- Escreva uma função encodeName :: String -> String que substitua vogais em uma string, conforme o esquema a seguir: a = 4, e = 3, i = 2, o = 1, u = 0.
encodeName :: String -> String
encodeName name = map encodeNameAux name

encodeNameAux :: Char -> Char
encodeNameAux char
    | char == 'a' = '4'
    | char == 'e' = '3'
    | char == 'i' = '2'
    | char == 'o' = '1'
    | char == 'u' = '0'
    | char == 'A' = '4'
    | char == 'E' = '3'
    | char == 'I' = '2'
    | char == 'O' = '1'
    | char == 'U' = '0'
    | otherwise = char

-- Escreva uma função betterEncodeName :: String -> String que substitua vogais em uma string, conforme este esquema: a = 4, e = 3, i = 1, o = 0, u = 00.
betterEncodeName :: String -> String
betterEncodeName name = concat (map betterEncodeNameAux (splitString name))

splitString :: String -> [String]
splitString str = map (\x -> [x]) str

betterEncodeNameAux :: String -> String
betterEncodeNameAux str
    | str == "a" = "4"
    | str == "e" = "3"
    | str == "i" = "1"
    | str == "o" = "0"
    | str == "u" = "00"
    | str == "A" = "4"
    | str == "E" = "3"
    | str == "I" = "1"
    | str == "O" = "0"
    | str == "U" = "00"
    | otherwise = str

-- Dada uma lista de strings, produzir outra lista com strings de 10 caracteres, usando o seguinte esquema: 
-- strings de entrada com mais de 10 caracteres são truncadas, strings com até 10 caracteres são completadas com '.' até ficarem com 10 caracteres. 
func1 :: [String] -> [String]
func1 lis = 
    map (\x -> if length x > 10 then take 10 x else take 10 ( x ++ ".........." ) ) lis

-- Ou

func2 :: [String] -> [String]
func2 lis =
    map (\x -> take 10 ( x ++ "..........") ) lis 
