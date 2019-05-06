let foo list = match list with 
                  [] -> 0
                | first :: second :: rest -> second
                | first :: rest -> first
                
let test1 = foo [] = 0
let test2 = foo [1; 2] = 1
