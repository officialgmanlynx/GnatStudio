with String_Lists; use String_Lists;

procedure Show_Array_Aggregates is
   SL : String_List (1 .. 2, 1 .. 3);
begin
   --  Positional component association
   SL := ["ABC",
          "DEF"];

   Display (SL);

   --  Named component associations
   SL := [[1 => 'A',
           2 => 'B',
           3 => 'C'],
          [1 => 'D',
           2 => 'E',
           3 => 'F']];

   Display (SL);

   SL := [[1 => 'X',
           2 => 'Y',
           3 => 'Z'],
          [others => ' ']];

   Display (SL);
end Show_Array_Aggregates;