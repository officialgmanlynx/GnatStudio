with Ada.Text_IO; use Ada.Text_IO;

with Workers; use Workers;

procedure Show_Workers is
   Worker_Arr : Worker_Array (1 .. 20);
begin
   --
   --  Allocating 20 workers at once:
   --
   Worker_Arr := (others => new Worker);

   for I in Worker_Arr'Range loop
      Worker_Arr (I).Start (I);
   end loop;

   Put_Line ("Some processing...");
   delay 1.0;

   for W of Worker_Arr loop
      W.Stop;
   end loop;

end Show_Workers;