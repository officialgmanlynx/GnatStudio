with Ada.Unchecked_Deallocation;

procedure Show_Dangerous_Deallocation is
   type Integer_Access is
      access all Integer;

   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Integer,
        Name   => Integer_Access);

   IA : access Integer;
begin
   IA := new Integer;
   IA.all := 30;

   --  Potentially erroneous deallocation via type
   --  conversion:
   Free (Integer_Access (IA));

end Show_Dangerous_Deallocation;