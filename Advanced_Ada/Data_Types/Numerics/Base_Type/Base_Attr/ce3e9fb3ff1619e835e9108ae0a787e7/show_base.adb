with Ada.Text_IO; use Ada.Text_IO;
with My_Integers; use My_Integers;

procedure Show_Base is
   C : constant One_To_Ten := One_To_Ten'Last;
begin
   Using_Constrained_Subtype : declare
      V : One_To_Ten := C;
   begin
      Put_Line
        ("Increasing value for One_To_Ten...");

      V := One_To_Ten'Succ (V);
   exception
      when others =>
         Put_Line ("Exception raised!");
   end Using_Constrained_Subtype;

   Using_Base : declare
      V : One_To_Ten'Base := C;
   begin
      Put_Line
      ("Increasing value for One_To_Ten'Base...");

      V := One_To_Ten'Succ (V);
   exception
      when others =>
         Put_Line ("Exception raised!");
   end Using_Base;

   Put_Line ("One_To_Ten'Last: "
             & One_To_Ten'Last'Image);
   Put_Line ("One_To_Ten'Base'Last: "
             & One_To_Ten'Base'Last'Image);
end Show_Base;