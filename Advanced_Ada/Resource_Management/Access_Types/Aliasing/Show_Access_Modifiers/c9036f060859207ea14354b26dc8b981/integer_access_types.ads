package Integer_Access_Types is

   type Integer_Access is
     access Integer;

   type Integer_Access_All is
     access all Integer;

   type Integer_Access_Const is
     access constant Integer;

   procedure Show;

end Integer_Access_Types;