with Ada.Text_IO;    use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

with Exception_Tests; use Exception_Tests;

procedure Show_Exception_Info is
   L : Integer;
   O : All_Exception_Occur (1 .. 10);
begin
   Test_Exceptions (O, L);

   for I in O 'First .. L loop
      Put_Line (Exception_Information (O (I)));
   end loop;
end Show_Exception_Info;