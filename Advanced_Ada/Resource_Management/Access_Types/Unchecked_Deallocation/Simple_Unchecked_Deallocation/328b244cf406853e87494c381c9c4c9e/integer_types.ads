with Ada.Unchecked_Deallocation;

package Integer_Types is

   type Integer_Access is access Integer;

   --
   --  Instantiation of Ada.Unchecked_Deallocation
   --  for the Integer_Access type:
   --
   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Integer,
        Name   => Integer_Access);
end Integer_Types;