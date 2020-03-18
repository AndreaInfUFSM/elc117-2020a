{-
   Programa em Haskell para validar os digitos de um CPF
   Mais info em: http://pt.wikipedia.org/wiki/Cadastro_de_Pessoas_F%C3%ADsicas
-}
import Data.Char

isCpfOk :: [Int] -> Bool
isCpfOk cpf = 
  let -- calcula primeiro digito
      digitos1 = take 9 cpf
      expr1 = (sum $ zipWith (*) digitos1 [10,9..2]) `mod` 11
      dv1 = if expr1 < 2 then 0 else 11-expr1

      -- calcula segundo digito
      digitos2 = digitos1 ++ [dv1]
      expr2 = (sum $ zipWith (*) digitos2 [11,10..2]) `mod` 11
      dv2 = if expr2 < 2 then 0 else 11-expr2
   in dv1 == cpf !! 9 && dv2 == cpf !! 10

main = do
  let cpf = "12345678909"
      digitos = (map digitToInt cpf)
      result = isCpfOk digitos
  putStrLn (show result)
