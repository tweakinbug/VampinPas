program FizzBuzz;
uses crt;
var 
numz:integer;
begin
    writeln('Enter A NUMBER TO FIZZ BUZZZZZZ');
    readln(numz);
    {mod is modulo operator that returns remainder}
    if(numz mod 15=0) then
    begin
       writeln('Fizz Buzz'); 
    end
    else if(numz mod 5=0) then
    begin   
    writeln('Buzz');
    end
    else if (numz mod 3=0) then
    begin
        writeln('Fizz');
    end
    else
    begin
        writeln('not divisible');
    end;
end.