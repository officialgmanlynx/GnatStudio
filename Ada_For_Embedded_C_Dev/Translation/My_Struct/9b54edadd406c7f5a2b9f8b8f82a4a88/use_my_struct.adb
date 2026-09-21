with Interfaces.C;

procedure Use_My_Struct is

   type my_struct is record
     A : Interfaces.C.int;
     B : Interfaces.C.int;
   end record;
   pragma Convention (C, my_struct);

   procedure Call (V : my_struct);
   pragma Import (C, Call, "call"); -- Third argument optional

   V : my_struct := (A => 1, B => 2);
begin
   Call (V);
end Use_My_Struct;