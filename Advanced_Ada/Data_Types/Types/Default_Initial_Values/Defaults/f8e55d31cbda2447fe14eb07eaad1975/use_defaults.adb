with Ada.Text_IO; use Ada.Text_IO;
with Defaults; use Defaults;

procedure Use_Defaults is
   E1 : E;
   T1 : T;
   R1 : R;
   A1 : Arr (1 .. 5);
begin
   Put_Line ("Enumeration:  "
             & E'Image (E1));
   Put_Line ("Integer type: "
             & T'Image (T1));
   Put_Line ("Record type:  "
             & Positive'Image (R1.X)
             & ", "
             & Positive'Image (R1.Y));

   Put ("Array type:   ");
   for V of A1 loop
      Put (Integer'Image (V) & " ");
   end loop;
   New_Line;
end Use_Defaults;