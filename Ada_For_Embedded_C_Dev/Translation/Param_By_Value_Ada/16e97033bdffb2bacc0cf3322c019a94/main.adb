with Interfaces.C;

procedure Main is
   type my_struct is record
      A : Interfaces.C.int;
      B : Interfaces.C.int;
   end record
     with Convention => C_Pass_By_Copy;

   procedure Call (V : my_struct);
   pragma Import (C, Call, "call");
begin
   null;
end Main;