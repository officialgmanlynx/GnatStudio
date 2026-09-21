with Ada.Text_IO; use Ada.Text_IO;
with My_Integers; use My_Integers;

procedure Show_Base is

   type Display_Saturate_Op is (Add, Sub);

   procedure Display_Saturate
     (V1, V2 : One_To_Ten;
      Op     : Display_Saturate_Op)
   is
      Res : One_To_Ten;
   begin
      case Op is
      when Add =>
         Res := Sat_Add (V1, V2);
      when Sub =>
         Res := Sat_Sub (V1, V2);
      end case;
      Put_Line ("SATURATE " & Op'Image
                & " (" & V1'Image
                & ", " & V2'Image
                & ") = " & Res'Image);
   end Display_Saturate;

begin
   Display_Saturate (1,  1, Add);
   Display_Saturate (10, 8, Add);
   Display_Saturate (1,  8, Sub);
end Show_Base;