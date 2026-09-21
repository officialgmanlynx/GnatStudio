with Ada.Text_IO; use Ada.Text_IO;
with Simple_Recs; use Simple_Recs;

procedure Show_Initialization_Order is
begin
   Put_Line ("Some processing first...");
   Put_Line
     ("Now, let's declare an object "
      & "of the record type Rec...");

   declare
      R : Rec;
   begin
      Put_Line
        ("An object of Rec type has "
         & "just been created.");
   end;

end Show_Initialization_Order;