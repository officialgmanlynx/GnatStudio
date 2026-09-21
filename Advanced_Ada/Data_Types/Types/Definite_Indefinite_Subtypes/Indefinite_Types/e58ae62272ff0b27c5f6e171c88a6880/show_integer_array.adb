with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Integer_Array (A : Integer_Array)
is
begin
   for I in A'Range loop
      Put_Line (Positive'Image (I)
                & ": "
                & Integer'Image (A (I)));
   end loop;
   Put_Line ("--------");
end Show_Integer_Array;