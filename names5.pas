program names5;
uses crt;
var 
namesArr:array  of string; {dynamic array}
{namer: array[1..5] of string; (constant array)}
NumNames,i:integer;
begin
    writeln('how many names are you inputting ? '); 
    readln(NumNames);
    SetLength(namesArr, NumNames);{declaring number of elements pascal should expect in the array}
    {NumNanes variabe is used as the length}
    for i:=1 to NumNames do 
    begin
        writeln('Enter names ', i);
        readln(namesArr[i]);
        {using loop to collect input from user}
    end; 
    for i:=1 to NumNames do 
    writeln(i, ' ', namesArr[i]);
    {using loop to display the names}
end.