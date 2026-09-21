with P;

procedure Show_Elaboration_Check is

   function F return Integer;

   type Pointer_To_Func is
     access function return Integer;

   X : constant Pointer_To_Func := P'Access;

   Y : constant Integer := F;
   Z : constant Pointer_To_Func := X;

   --  Renaming-as-body
   function F return Integer renames Z.all;
begin
   null;
end Show_Elaboration_Check;