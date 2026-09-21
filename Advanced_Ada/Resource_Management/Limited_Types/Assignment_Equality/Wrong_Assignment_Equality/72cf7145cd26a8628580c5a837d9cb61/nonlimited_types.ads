package Nonlimited_Types is

   type Simple_Rec is private;

   type Integer_Access is access Integer;

   function Init (I : Integer) return Simple_Rec;

   procedure Set (E : Simple_Rec;
                  I : Integer);

   procedure Show (E      : Simple_Rec;
                   E_Name : String);

private

   type Simple_Rec is record
      V : Integer_Access;
   end record;

end Nonlimited_Types;