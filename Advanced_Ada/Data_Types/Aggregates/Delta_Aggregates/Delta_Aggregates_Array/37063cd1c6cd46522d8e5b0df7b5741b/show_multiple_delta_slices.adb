with Float_Arrays; use Float_Arrays;

procedure Show_Multiple_Delta_Slices is

   P1, P2 : Float_Array (1 .. 5);

begin
   P1 := [1.0, 2.0, 3.0, 4.0, 5.0];
   Display (P1);

   P2 := [P1 with delta
            P2'First + 1 .. P2'Last - 2 => 0.0,
            P2'Last - 1  .. P2'Last => 0.2];
   Display (P2);
end Show_Multiple_Delta_Slices;