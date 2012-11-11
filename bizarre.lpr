{
http://code.google.com/p/bizarrelang/
http://bizarrescriptinglanguage.blogspot.com/
Bizarre is a easy and fast programming language written in pure Pascal.
License: GPL v3
Version History:
Mar. 13, 2012 - project started
Sep. 18, 2012 - started to rewrite
Nov. 11, 2012 - switched from sourceforge to google code
}
program bizarre;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, sysutils
  { you can add units after this };

{$R *.res}
const
  version = 'Pre-Alpha 0.1';
  validArgs: array [0..3] of string = ('help', 'about', 'run', 'compile');
var
  numArgs: integer;
  args: string;
  //For arg errors.
  argErrorCount: integer;
  completeArg: string;
  numChars: integer;
begin
  numArgs := ParamCount();
  completeArg := '';
  //'help'
  if (numArgs = 1) and (ParamStr(1) = validArgs[0]) then
  begin
    writeln('Bizarre ', version);
    writeln('this is where the help file will be displayed');
  end
  //'about'
  else if (numArgs = 1) and (ParamStr(1) = validArgs[1]) then
  begin
    writeln('Bizarre ', version);
    writeln('this is where the about file will end up');
  end
  //'run'
  else if (numArgs = 2) and (ParamStr(1) = validArgs[2]) then
  begin
    writeln('Interpreter not implemented yet, come back shortly.');
  end
  //'compile'
  else if (numArgs = 2) and (ParamStr(1) = validArgs[3]) then
  begin
    writeln('Compiler not implemented yet, come back shortly.');
  end
  //Otherwise the argument doen't exist.
  else
  begin
    for argErrorCount := 1 to numArgs do
    begin
      completeArg := completeArg + ParamStr(argErrorCount) + ' ';
    end;
    //This next bit of Code deletes the extra space on the end of the string.
    numChars := length(completeArg);
    Delete(completeArg, numChars, 1);
    //This next bit prints out the error message.
    writeln('"',completeArg, '" is an invalid argument or it is not being used incorectly.');
    writeln('For more help on arguments type "bizarre help"');
  end;

  {Below are some stuff for Command line parameters}
  //writeln(ParamCount());
  //writeln(ParamStr(1));
end.

