with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Dereferencing is

   type Rec is record
      I : Integer;
      F : Float;
   end record;

   type Rec_Access is access Rec;

   R : constant Rec_Access := new Rec;
begin
   R.all := (I => 1, F => 5.0);

   Put_Line ("R.I: "
             & Integer'Image (R.I));
   Put_Line ("R.F: "
             & Float'Image (R.F));
end Show_Dereferencing;