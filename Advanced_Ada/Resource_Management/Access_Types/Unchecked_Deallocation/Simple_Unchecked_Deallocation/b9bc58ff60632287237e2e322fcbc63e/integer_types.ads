with Ada.Unchecked_Deallocation;

package Integer_Types is

   type Integer_Access is access Integer;

   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Integer,
        Name   => Integer_Access);

   type Another_Integer_Access is access Integer;

   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Integer,
        Name   => Another_Integer_Access);
end Integer_Types;