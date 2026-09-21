with Ada.Text_IO; use Ada.Text_IO;

with Repeating_Decimals;
use  Repeating_Decimals;

procedure Show_Repeating_Decimals is
   F_1_3    : constant Float           :=
                Float (One_Over_Three);
   LF_1_3   : constant Long_Float      :=
                Long_Float (One_Over_Three);
   LLF_1_3  : constant Long_Long_Float :=
                Long_Long_Float (One_Over_Three);
begin
   Put_Line (F_1_3'Image);
   Put_Line (LF_1_3'Image);
   Put_Line (LLF_1_3'Image);
end Show_Repeating_Decimals;