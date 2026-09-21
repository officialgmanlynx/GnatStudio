package Limited_Types is

   type Integer_Access is access Integer;

   type Simple_Rec is limited private;

   function Init (I : Integer) return Simple_Rec;

   function "=" (Left, Right : Simple_Rec)
                 return Boolean;

private

   type Simple_Rec is limited record
      V : Integer_Access;
   end record;

end Limited_Types;