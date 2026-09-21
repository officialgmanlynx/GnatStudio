package Simple_Records is

   type Rec is limited private;

   type Rec_Access is access Rec;

   function Init return Rec;

   type Null_Rec is null record;

private

   type Rec is limited record
      F : Float;
      I : Integer;
   end record;

   function Init return Rec is
      ((F => 10.0, I => 4));

end Simple_Records;