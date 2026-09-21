with Ada.Text_IO; use Ada.Text_IO;
with P;           use P;

procedure Main is
   T_Arr  : array (1 .. 2) of T_Class;
begin
   T_Arr (1) := new T;
   T_Arr (2) := new T_New;

   for I in T_Arr'Range loop
      Put_Line ("Element # "
                & Integer'Image (I));

      T_Arr (I).Init;
      T_Arr (I).Show;

      Put_Line ("-----------");
   end loop;
end Main;