procedure Show_Overloading is

   package Types is
      type Sequence is null record;
      type Set is null record;

      procedure Print (S : Sequence) is null;
      procedure Print (S : Set) is null;
   end Types;

   use Types;

   X : Sequence;
begin

   --  Compiler selects Print (S : Sequence)
   Print (X);
end Show_Overloading;