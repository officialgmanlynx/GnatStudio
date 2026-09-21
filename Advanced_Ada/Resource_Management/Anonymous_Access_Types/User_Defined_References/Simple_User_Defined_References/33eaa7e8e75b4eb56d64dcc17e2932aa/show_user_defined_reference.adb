with Ada.Text_IO; use Ada.Text_IO;

procedure Show_User_Defined_Reference is

   type Id_Number is record
      Id : Positive;
   end record;

   --
   --  Reference type:
   --
   type Id_Ref (Ref : access Id_Number) is
   --           ^ reference discriminant
     null record
       with Implicit_Dereference => Ref;
     --                             ^^^
     --               name of the reference
     --               discriminant

   --
   --  Access value:
   --
   I : constant access Id_Number :=
         new Id_Number'(Id => 42);

   --
   --  Reference object:
   --
   R : Id_Ref (I);
begin
   Put_Line ("ID: "
             & Positive'Image (R.Id));
   --                          ^ Equivalent to:
   --                              R.Ref.Id
   --                            or:
   --                             R.Ref.all.Id
end Show_User_Defined_Reference;