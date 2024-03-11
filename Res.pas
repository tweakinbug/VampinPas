program Result;
uses crt;
var
userSn,userFn, userGnd, userMatric:string;
TotalGp:real;
function One100():real;
var gp:real; 
SESSN,userLvl:string;
CsTitle, CsCde, gradeString:array of string;
inptScrTst, inptExm, inptUnt, sumupscore, gradSys: array of integer;
userLngthInpt, i,j,k, sumUnt,SumOfUntnGrd: integer;
begin
sumUnt:=0;
SumOfUntnGrd:=0;
writeln('Enter Level e.g 100');
readln(userLvl);
writeln('Enter Session (e.g 20XX\20XX)');
readln(SESSN);
writeln('Enter number of courses taken ');
readln(userLngthInpt);
{userLngthInpt collect input
 from the user, then im using for other arrays here, LFFFFFFGGG 
 so hyped listening to vulutures rnnn}
SetLength(CsTitle, userLngthInpt);
SetLength(CsCde, userLngthInpt);
SetLength(sumupscore, userLngthInpt);
SetLength(inptScrTst, userLngthInpt);
SetLength(inptExm, userLngthInpt);
SetLength(inptUnt, userLngthInpt);
SetLength(gradeString,userLngthInpt);
SetLength(gradSys, userLngthInpt);
for i := 1 to userLngthInpt do
begin
    {local storage, im still the kingggggggg}
    writeln('Enter course title -> ', i );
    readln(CsTitle[i]);
    writeln('Enter course code -> ', i );
    readln(CsCde[i]);
    writeln('Enter course unit -> ', i );
    readln(inptUnt[i]);
    writeln('Enter Continous Assesment (CA) score -> ', i );
    readln(inptScrTst[i]);
    writeln('Enter Exam score -> ', i );
    readln(inptExm[i]);
end;
for i:=1 to userLngthInpt do 
begin
   sumupscore[i]:= inptScrTst[i]+ inptExm[i];
      if (sumupscore[i]>=75) then
      begin 
      gradSys[i]:= 5;
      gradeString[i]:='A';
      end
      else if (sumupscore[i]>=65) then
      begin
      gradSys[i]:= 4;
      gradeString[i]:='B';
      end
      else if (sumupscore[i]>=55) then
      begin
      gradSys[i]:= 3;
      gradeString[i]:='C';
      end
      else if (sumupscore[i]>=45) then
      begin
      gradSys[i]:= 2;
      gradeString[i]:='D';
      end
      else if (sumupscore[i]>=40) then
      begin
      gradSys[i]:= 1;
      gradeString[i]:='E';
      end
      else
      begin
      gradSys[i]:= 0;
      gradeString[i]:='F';
      end;
   end;
   writeln('NAME -> ', userSn, ' ', userFn);
   writeln('MATRIC NUMBER -> ', userMatric);
   writeln('GENDER -> ', userGnd);
   writeln('DISPLAYING RESULT FOR ',userLvl, ' LEVEL ', SESSN, ' SESSION');
   writeln('Number-> COURSE CODE-> COURSE TITLE-> CREDIT UNIT ->TOTAL-> GRADE-> GRADE SCORE');
      for i := 1 to userLngthInpt do 
         begin
         SumOfUntnGrd:=SumOfUntnGrd+(inptUnt[i]*gradSys[i]);
         sumUnt:=sumUnt+inptUnt[i];
         writeln(i,' -> ',CsCde[i],' -> ',CsTitle[i],' -> ',inptUnt[i],' -> ',sumupscore[i],' -> ',gradeString[i],' -> ',gradSys[i]);
         writeln(' ');
         end;
      gp:=SumOfUntnGrd/sumUnt;
      TotalGp:=gp;
      writeln('TOTAL CREDIT UNIT -> ',sumUnt);
      writeln('TOTAL CUMMULATIVE GPA -> ',TotalGp:0:2);
end;
{year two here encounter error omds}
function two200():real;
var gp:real; 
SESSN,userLvl:string;
CsTitle, CsCde, gradeString:array of string;
inptScrTst, inptExm, inptUnt, sumupscore, gradSys: array of integer;
userLngthInpt, i,j,k, sumUnt,SumOfUntnGrd: integer;
begin
userLvl:='200';
writeln('---------------------------------------------');
writeln('INPUTTING FOR ', userLvl,' LEVEL');
sumUnt:=0;
SumOfUntnGrd:=0;
writeln('Enter Session (e.g 20XX\20XX)');
readln(SESSN);
writeln('Enter number of courses taken ');
readln(userLngthInpt);
{userLngthInpt collect input
 from the user, then im using for other arrays here, LFFFFFFGGG 
 so hyped listening to vulutures rnnn}
SetLength(CsTitle, userLngthInpt);
SetLength(CsCde, userLngthInpt);
SetLength(sumupscore, userLngthInpt);
SetLength(inptScrTst, userLngthInpt);
SetLength(inptExm, userLngthInpt);
SetLength(inptUnt, userLngthInpt);
SetLength(gradeString,userLngthInpt);
SetLength(gradSys, userLngthInpt);
for i := 1 to userLngthInpt do
begin
    {local storage, im still the kingggggggg}
    writeln('Enter course title -> ', i );
    readln(CsTitle[i]);
    writeln('Enter course code -> ', i );
    readln(CsCde[i]);
    writeln('Enter course unit -> ', i );
    readln(inptUnt[i]);
    writeln('Enter Continous Assesment (CA) score -> ', i );
    readln(inptScrTst[i]);
    writeln('Enter Exam score -> ', i );
    readln(inptExm[i]);
end;
for i:=1 to userLngthInpt do 
begin
   sumupscore[i]:= inptScrTst[i]+ inptExm[i];
      if (sumupscore[i]>=75) then
      begin 
      gradSys[i]:= 5;
      gradeString[i]:='A';
      end
      else if (sumupscore[i]>=65) then
      begin
      gradSys[i]:= 4;
      gradeString[i]:='B';
      end
      else if (sumupscore[i]>=55) then
      begin
      gradSys[i]:= 3;
      gradeString[i]:='C';
      end
      else if (sumupscore[i]>=45) then
      begin
      gradSys[i]:= 2;
      gradeString[i]:='D';
      end
      else if (sumupscore[i]>=40) then
      begin
      gradSys[i]:= 1;
      gradeString[i]:='E';
      end
      else
      begin
      gradSys[i]:= 0;
      gradeString[i]:='F';
      end;
   end;
   writeln('NAME -> ', userSn, ' ', userFn);
   writeln('MATRIC NUMBER -> ', userMatric);
   writeln('GENDER -> ', userGnd);
   writeln('DISPLAYING RESULT FOR ',userLvl, ' LEVEL ', SESSN);
   writeln('Number-> COURSE CODE-> COURSE TITLE-> CREDIT UNIT ->TOTAL-> GRADE-> GRADE SCORE');
      for i := 1 to userLngthInpt do 
         begin
         SumOfUntnGrd:=SumOfUntnGrd+(inptUnt[i]*gradSys[i]);
         sumUnt:=sumUnt+inptUnt[i];
         writeln(i,' -> ',CsCde[i],' -> ',CsTitle[i],' -> ',inptUnt[i],' -> ',sumupscore[i],' -> ',gradeString[i],' -> ',gradSys[i]);
         writeln(' ');
         end;
      gp:=SumOfUntnGrd/sumUnt{mainresult};
      TotalGp:= (TotalGp+gp)/2;
      writeln('TOTAL CREDIT UNIT FOR ', userLvl,' SESSION ', SESSN,' -> ',sumUnt);
      writeln('TOTAL CUMMULATIVE GPA -> ',TotalGp:0:2);
end;
function Tr33300():real;
var gp:real; 
SESSN,userLvl:string;
CsTitle, CsCde, gradeString:array of string;
inptScrTst, inptExm, inptUnt, sumupscore, gradSys: array of integer;
userLngthInpt, i,j,k, sumUnt,SumOfUntnGrd: integer;
gp100:real;
begin
userLvl:='300';
writeln('---------------------------------------------');
writeln('INPUTTING FOR ',userLvl,' LEVEL');
sumUnt:=0;
SumOfUntnGrd:=0;
writeln('Enter Session (e.g 20XX\20XX)');
readln(SESSN);
writeln('Enter number of courses taken ');
readln(userLngthInpt);
{userLngthInpt collect input
 from the user, then im using for other arrays here, LFFFFFFGGG 
 so hyped listening to vulutures rnnn}
SetLength(CsTitle, userLngthInpt);
SetLength(CsCde, userLngthInpt);
SetLength(sumupscore, userLngthInpt);
SetLength(inptScrTst, userLngthInpt);
SetLength(inptExm, userLngthInpt);
SetLength(inptUnt, userLngthInpt);
SetLength(gradeString,userLngthInpt);
SetLength(gradSys, userLngthInpt);
for i := 1 to userLngthInpt do
begin
    {local storage, im still the kingggggggg}
    writeln('Enter course title -> ', i );
    readln(CsTitle[i]);
    writeln('Enter course code -> ', i );
    readln(CsCde[i]);
    writeln('Enter course unit -> ', i );
    readln(inptUnt[i]);
    writeln('Enter Continous Assesment (CA) score -> ', i );
    readln(inptScrTst[i]);
    writeln('Enter Exam score -> ', i );
    readln(inptExm[i]);
end;
for i:=1 to userLngthInpt do 
begin
   sumupscore[i]:= inptScrTst[i]+ inptExm[i];
      if (sumupscore[i]>=75) then
      begin 
      gradSys[i]:= 5;
      gradeString[i]:='A';
      end
      else if (sumupscore[i]>=65) then
      begin
      gradSys[i]:= 4;
      gradeString[i]:='B';
      end
      else if (sumupscore[i]>=55) then
      begin
      gradSys[i]:= 3;
      gradeString[i]:='C';
      end
      else if (sumupscore[i]>=45) then
      begin
      gradSys[i]:= 2;
      gradeString[i]:='D';
      end
      else if (sumupscore[i]>=40) then
      begin
      gradSys[i]:= 1;
      gradeString[i]:='E';
      end
      else
      begin
      gradSys[i]:= 0;
      gradeString[i]:='F';
      end;
   end;
   writeln('NAME -> ', userSn, ' ', userFn);
   writeln('MATRIC NUMBER -> ', userMatric);
   writeln('GENDER -> ', userGnd);
   writeln('DISPLAYING RESULT FOR ',userLvl, ' LEVEL ', SESSN);
   writeln('Number-> COURSE CODE-> COURSE TITLE-> CREDIT UNIT ->TOTAL-> GRADE-> GRADE SCORE');
      for i := 1 to userLngthInpt do 
         begin
         SumOfUntnGrd:=SumOfUntnGrd+(inptUnt[i]*gradSys[i]);
         sumUnt:=sumUnt+inptUnt[i];
         writeln(i,' -> ',CsCde[i],' -> ',CsTitle[i],' -> ',inptUnt[i],' -> ',sumupscore[i],' -> ',gradeString[i],' -> ',gradSys[i]);
         writeln(' ');
         end;
      gp:=SumOfUntnGrd/sumUnt{mainresult};
      TotalGp:= (TotalGp+gp)/3;
      writeln('TOTAL CREDIT UNIT FOR ', userLvl,' SESSION ', SESSN,' -> ',sumUnt);
      writeln('TOTAL CUMMULATIVE GPA -> ',TotalGp:0:2);
end;
function f400():real;
var gp:real; 
SESSN,userLvl:string;
CsTitle, CsCde, gradeString:array of string;
inptScrTst, inptExm, inptUnt, sumupscore, gradSys: array of integer;
userLngthInpt, i,j,k, sumUnt,SumOfUntnGrd: integer;
begin
userLvl:='400';
writeln('---------------------------------------------');
writeln('INPUTTING FOR ',userLvl,' LEVEL');
sumUnt:=0;
SumOfUntnGrd:=0;
writeln('Enter Session (e.g 20XX\20XX)');
readln(SESSN);
writeln('Enter number of courses taken ');
readln(userLngthInpt);
{userLngthInpt collect input
 from the user, then im using for other arrays here, LFFFFFFGGG 
 so hyped listening to vulutures rnnn}
SetLength(CsTitle, userLngthInpt);
SetLength(CsCde, userLngthInpt);
SetLength(sumupscore, userLngthInpt);
SetLength(inptScrTst, userLngthInpt);
SetLength(inptExm, userLngthInpt);
SetLength(inptUnt, userLngthInpt);
SetLength(gradeString,userLngthInpt);
SetLength(gradSys, userLngthInpt);
for i := 1 to userLngthInpt do
begin
    {local storage, im still the kingggggggg}
    writeln('Enter course title -> ', i );
    readln(CsTitle[i]);
    writeln('Enter course code -> ', i );
    readln(CsCde[i]);
    writeln('Enter course unit -> ', i );
    readln(inptUnt[i]);
    writeln('Enter Continous Assesment (CA) score -> ', i );
    readln(inptScrTst[i]);
    writeln('Enter Exam score -> ', i );
    readln(inptExm[i]);
end;
for i:=1 to userLngthInpt do 
begin
   sumupscore[i]:= inptScrTst[i]+ inptExm[i];
      if (sumupscore[i]>=75) then
      begin 
      gradSys[i]:= 5;
      gradeString[i]:='A';
      end
      else if (sumupscore[i]>=65) then
      begin
      gradSys[i]:= 4;
      gradeString[i]:='B';
      end
      else if (sumupscore[i]>=55) then
      begin
      gradSys[i]:= 3;
      gradeString[i]:='C';
      end
      else if (sumupscore[i]>=45) then
      begin
      gradSys[i]:= 2;
      gradeString[i]:='D';
      end
      else if (sumupscore[i]>=40) then
      begin
      gradSys[i]:= 1;
      gradeString[i]:='E';
      end
      else
      begin
      gradSys[i]:= 0;
      gradeString[i]:='F';
      end;
   end;
   writeln('NAME -> ', userSn, ' ', userFn);
   writeln('MATRIC NUMBER -> ', userMatric);
   writeln('GENDER -> ', userGnd);
   writeln('DISPLAYING RESULT FOR ',userLvl, ' LEVEL ', SESSN);
   writeln('Number-> COURSE CODE-> COURSE TITLE-> CREDIT UNIT ->TOTAL-> GRADE-> GRADE SCORE');
      for i := 1 to userLngthInpt do 
         begin
         SumOfUntnGrd:=SumOfUntnGrd+(inptUnt[i]*gradSys[i]);
         sumUnt:=sumUnt+inptUnt[i];
         writeln(i,' -> ',CsCde[i],' -> ',CsTitle[i],' -> ',inptUnt[i],' -> ',sumupscore[i],' -> ',gradeString[i],' -> ',gradSys[i]);
         writeln(' ');
         end;
      gp:=SumOfUntnGrd/sumUnt{mainresult};
      TotalGp:= (TotalGp+gp)/4;
      writeln('TOTAL CREDIT UNIT FOR ', userLvl,' SESSION ', SESSN,' -> ',sumUnt);
      writeln('TOTAL CUMMULATIVE GPA -> ',TotalGp:0:2);
end;
begin
ClrScr;
writeln('Enter Surname');
readln(userSn);
writeln('Enter First name');
readln(userFn);
writeln('Enter Matric Number');
readln(userMatric);
writeln('Male or  Female (im not homophobic tho)');
readln(userGnd);
One100();
two200();
Tr33300();
f400();
end.