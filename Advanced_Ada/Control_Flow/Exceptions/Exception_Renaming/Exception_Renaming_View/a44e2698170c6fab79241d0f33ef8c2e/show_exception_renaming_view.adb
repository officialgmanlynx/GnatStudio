with Ada.Text_IO;    use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

with Test_Constraints; use Test_Constraints;

procedure Show_Exception_Renaming_View is
begin
   raise Ext_E;
exception
   when E : others =>
      Put_Line
       (Ada.Exceptions.Exception_Information (E));
end Show_Exception_Renaming_View;