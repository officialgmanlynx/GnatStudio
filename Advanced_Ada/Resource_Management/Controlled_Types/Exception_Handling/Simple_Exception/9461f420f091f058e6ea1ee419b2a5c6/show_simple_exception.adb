with Ada.Text_IO; use Ada.Text_IO;

with Simple_Controlled_Types;
use  Simple_Controlled_Types;

procedure Show_Simple_Exception is
   A : T;

   function Int_Last return Integer is
     (Integer'Last);

   Cnt : Positive := Int_Last;
begin
   Cnt := Cnt + 1;

   Dummy (A);

   Put_Line (Cnt'Image);

   --  When A is about to get out of
   --  scope:
   --
   --  Finalize (A);
   --
end Show_Simple_Exception;