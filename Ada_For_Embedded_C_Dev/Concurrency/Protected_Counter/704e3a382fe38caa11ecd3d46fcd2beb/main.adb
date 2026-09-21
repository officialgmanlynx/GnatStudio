with Ada.Text_IO; use Ada.Text_IO;
with Counters;    use Counters;

procedure Main is
begin
   Counter.Increment;
   Counter.Decrement;
   Put_Line (Integer'Image (Counter.Get));
end Main;