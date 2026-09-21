procedure Show_General_Access_Type is

   --  Declaring general access type:
   type Integer_Access is access all Integer;

   --  Declaring access object:
   A1 : Integer_Access;

   --  Allocating an Integer object on the
   --  stack:
   I : aliased Integer;

begin
   --  Getting access to an Integer object that
   --  was allocated on the stack
   A1 := I'Access;

end Show_General_Access_Type;