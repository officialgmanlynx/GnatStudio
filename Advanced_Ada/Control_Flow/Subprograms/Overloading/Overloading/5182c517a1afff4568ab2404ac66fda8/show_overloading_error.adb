procedure Show_Overloading_Error is

   package Types is
      type Sequence is null record;
      type Set is null record;

      function Empty return Sequence is
        ((others => <>));

      function Empty return Set is
        ((others => <>));

      procedure Print (S : Sequence) is
        null;

      procedure Print (S : Set) is
        null;
   end Types;

   use Types;

   X : Sequence;
begin
   Print (Empty);  -- Illegal!
end Show_Overloading_Error;