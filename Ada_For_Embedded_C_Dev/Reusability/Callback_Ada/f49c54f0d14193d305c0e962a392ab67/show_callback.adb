with Ada.Text_IO; use Ada.Text_IO;

with Values_Processing; use Values_Processing;
with Proc_10;

procedure Show_Callback is
   Values : Integer_Array := (1, 2, 3, 4, 5);
begin
   Process_Values (Values, Proc_10'Access);

   for I in Values'Range loop
      Put_Line ("Value ["
                & Positive'Image (I)
                & "] = "
                & Integer'Image (Values (I)));
   end loop;
end Show_Callback;