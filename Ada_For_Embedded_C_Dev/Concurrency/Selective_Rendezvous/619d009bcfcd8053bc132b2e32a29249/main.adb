with Ada.Text_IO; use Ada.Text_IO;
with Counters;    use Counters;

procedure Main is
   V : Integer;
begin
   Put_Line ("Main started.");

   Counter.Get (V);
   Put_Line ("Got value. Value = " & Integer'Image (V));

   Counter.Increment;
   Put_Line ("Incremented value.");

   Counter.Increment;
   Put_Line ("Incremented value.");

   Counter.Get (V);
   Put_Line ("Got value. Value = " & Integer'Image (V));

   Counter.Decrement;
   Put_Line ("Decremented value.");

   Counter.Get (V);
   Put_Line ("Got value. Value = " & Integer'Image (V));

   Put_Line ("Main finished.");
end Main;