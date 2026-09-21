with Info; use Info;

procedure Show_User_Defined_Reference is

   --  Reference type:
   type Id_Ref (Ref : access Id_Number) is
     null record
       with Implicit_Dereference => Ref;

   --  Access value:
   I : constant access Id_Number :=
         new Id_Number (42);

   --  Reference object:
   R : Id_Ref (I);
begin

   R.Show;
   --  Equivalent to:
   --  R.Ref.all.Show;

end Show_User_Defined_Reference;