with Ada.Unchecked_Deallocation;

package body Hidden_Anonymous_Allocation is

   type T_Access is access all T;

   procedure T_Access_Free is
     new Ada.Unchecked_Deallocation
       (Object => T,
        Name   => T_Access);

   function New_T
     return not null access T is
   begin
      return T_Access'(new T);
      --  Using allocation of the T_Access type:
      --  object is allocated from T_Access's pool
   end New_T;

   procedure Free (Obj : access T) is
      Tmp : T_Access := T_Access (Obj);
   begin
      T_Access_Free (Tmp);
      --  Using deallocation procedure of the
      --  T_Access type
   end Free;

end Hidden_Anonymous_Allocation;