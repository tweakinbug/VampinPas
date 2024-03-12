program ageinput;
uses crt;
var
age:integer;
begin
writeln('Enter age');
readln(age);
if (age<18) then
begin
    writeln('you have to be above 18');
end
else
begin
    writeln('Adult, Good to go')
end;
end.