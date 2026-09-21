with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Protected_Object_Type is

   protected type P_Obj_Type is
      procedure Set (V : Integer);
      function Get return Integer;
   private
      Local : Integer := 0;
   end P_Obj_Type;

   protected body P_Obj_Type is
      procedure Set (V : Integer) is
      begin
         Local := V;
      end Set;

      function Get return Integer is
      begin
         return Local;
      end Get;
   end P_Obj_Type;

   Obj : P_Obj_Type;
begin
   Obj.Set (5);
   Put_Line ("Number is: "
             & Integer'Image (Obj.Get));
end Show_Protected_Object_Type;