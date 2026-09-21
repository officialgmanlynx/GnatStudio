package All_Anonymous_Access_To_Object_Types is

   procedure Add_One (A : access Integer) is null;
   --                     ^ Anonymous access type

   AI : access Integer;
   --  ^ Anonymous access type

   type Rec (AI : access Integer) is private;
   --             ^ Anonymous access type

   type Access_Array is
      array (Positive range <>) of
        access Integer;
   --   ^ Anonymous access type

   Arr : array (1 .. 5) of access Integer;
   --                      ^ Anonymous access type

   AI_Renaming : access Integer renames AI;
   --            ^ Anonymous access type

   function Init_Access_Integer
     return access Integer is (null);
   --       ^ Anonymous access type

private

   type Rec (AI : access Integer) is record
   --             ^ Anonymous access type
      Internal_AI : access Integer;
   --               ^ Anonymous access type

   end record;

end All_Anonymous_Access_To_Object_Types;