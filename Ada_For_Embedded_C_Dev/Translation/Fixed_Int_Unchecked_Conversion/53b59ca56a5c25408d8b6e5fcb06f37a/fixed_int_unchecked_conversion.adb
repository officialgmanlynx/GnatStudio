with Ada.Text_IO;              use Ada.Text_IO;
with Ada.Unchecked_Conversion;

procedure Fixed_Int_Unchecked_Conversion is
   Delta_16 : constant := 1.0 / 2.0 ** (16 - 1);
   Max_16   : constant := 2 ** 15;

   type Fixed_16 is delta Delta_16 range -1.0 .. 1.0 - Delta_16
     with Size => 16;
   type Int_16   is range -Max_16 .. Max_16 - 1
     with Size => 16;

   function As_Int_16 is new Ada.Unchecked_Conversion (Source => Fixed_16,
                                                       Target => Int_16);
   function As_Fixed_16 is new Ada.Unchecked_Conversion (Source => Int_16,
                                                         Target => Fixed_16);

   I : Int_16   := 0;
   F : Fixed_16 := 0.0;
begin
   F := Fixed_16'Last;
   I := As_Int_16 (F);

   Put_Line ("F = " & Fixed_16'Image (F));
   Put_Line ("I = " & Int_16'Image (I));
end Fixed_Int_Unchecked_Conversion;