package All_Anonymous_Access_To_Object_Types is

   procedure Add_One (A : not null access Integer)
     is null;
   --                     ^ Anonymous access type

   I : aliased Integer;

   AI : not null access Integer := I'Access;
   --   ^ Anonymous access type
   --                              ^^^^^^^^
   --              Initialization required!

   type Rec (AI : not null access Integer) is
      private;
   --             ^ Anonymous access type

   type Access_Array is
      array (Positive range <>) of
        not null access Integer;
   --   ^ Anonymous access type

   Arr : array (1 .. 5) of
     not null access Integer :=
   --  ^ Anonymous access type
       (others => I'Access);
   --   ^^^^^^^^^^^^^^^^^^
   --         Initialization required!

   AI_Renaming : not null access Integer
     renames AI;
   --            ^ Anonymous access type

   function Init_Access_Integer
     return not null access Integer is (I'Access);
   --       ^ Anonymous access type
   --                                   ^^^^^^^^
   --                   Initialization required!

private

   type Rec (AI : not null access Integer) is
   record
   --             ^ Anonymous access type
      Internal_AI : not null access Integer;
   --               ^ Anonymous access type

   end record;

end All_Anonymous_Access_To_Object_Types;