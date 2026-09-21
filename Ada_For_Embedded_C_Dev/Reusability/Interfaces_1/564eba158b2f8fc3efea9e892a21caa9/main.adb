with P; use P;

procedure Main is
   D_Small : Small_Display_Type;
   D_Big   : Big_Display_Type;

   procedure Dispatching_Display (D : Display_Interface'Class) is
   begin
      D.Display;
   end Dispatching_Display;

begin
   Dispatching_Display (D_Small);
   Dispatching_Display (D_Big);
end Main;