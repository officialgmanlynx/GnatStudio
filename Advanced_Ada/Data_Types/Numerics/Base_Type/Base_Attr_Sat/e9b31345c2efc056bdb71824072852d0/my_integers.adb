--  with Ada.Text_IO; use Ada.Text_IO;

package body My_Integers is

   function Saturate (V : One_To_Ten'Base)
                      return One_To_Ten is
   begin
      --  Put_Line ("SATURATE " & V'Image);

      if V < One_To_Ten'First then
         return One_To_Ten'First;
      elsif V > One_To_Ten'Last then
         return One_To_Ten'Last;
      else
         return V;
      end if;
   end Saturate;

   function Sat_Add (V1, V2 : One_To_Ten'Base)
                     return One_To_Ten is
   begin
      return Saturate (V1 + V2);
   end Sat_Add;

   function Sat_Sub (V1, V2 : One_To_Ten'Base)
                     return One_To_Ten is
   begin
      return Saturate (V1 - V2);
   end Sat_Sub;

end My_Integers;