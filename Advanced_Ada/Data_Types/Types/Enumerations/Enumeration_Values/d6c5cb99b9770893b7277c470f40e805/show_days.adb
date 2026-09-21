with Ada.Text_IO; use Ada.Text_IO;
with Days;        use Days;

procedure Show_Days is
begin
   for D in Day loop
      Put_Line (Day'Image (D)
                & " position      = "
                & Integer'Image (Day'Pos (D)));
      Put_Line (Day'Image (D)
                & " internal code = "
                & Integer'Image
                    (Day'Enum_Rep (D)));
   end loop;
end Show_Days;