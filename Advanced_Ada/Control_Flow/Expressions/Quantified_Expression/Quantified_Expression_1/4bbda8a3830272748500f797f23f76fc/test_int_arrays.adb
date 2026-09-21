with Ada.Text_IO; use Ada.Text_IO;

with Int_Arrays;  use Int_Arrays;

procedure Test_Int_Arrays is
   A : Integer_Arr := (0, 0, 1);
begin
   Display_Array (A, "A");
   Put_Line ("Is_Zero: "
             & Boolean'Image (Is_Zero (A)));
   Put_Line ("Has_Zero: "
             & Boolean'Image (Has_Zero (A)));

   A := (0, 0, 0);

   Display_Array (A, "A");
   Put_Line ("Is_Zero: "
             & Boolean'Image (Is_Zero (A)));
   Put_Line ("Has_Zero: "
             & Boolean'Image (Has_Zero (A)));
end Test_Int_Arrays;