with Ada.Unchecked_Deallocation;

procedure Show_Successful_Deallocation is

   type Integer_Access is
      access Integer;

   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Integer,
        Name   => Integer_Access);

   IA       : access Integer;
   Typed_IA : Integer_Access;

begin
   Typed_IA := new Integer;
   IA := Typed_IA;
   IA.all := 30;

   --  Deallocation of the access object that has
   --  an associated type:
   Free (Typed_IA);

end Show_Successful_Deallocation;