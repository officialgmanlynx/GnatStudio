package Non_Limited_Types is

   type Integer_Access is access Integer;

   type Simple_Rec is private;

   function Init (I : Integer)
                  return Simple_Rec;

private

   type Simple_Rec is record
      V : Integer_Access;
   end record;

end Non_Limited_Types;