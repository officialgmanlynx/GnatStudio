package Limited_Types is

   type Simple_Rec is limited private;

   type Integer_Access is access Integer;

   function Init (I : Integer) return Simple_Rec;

private

   type Simple_Rec is limited record
      V : Integer_Access;
   end record;

end Limited_Types;