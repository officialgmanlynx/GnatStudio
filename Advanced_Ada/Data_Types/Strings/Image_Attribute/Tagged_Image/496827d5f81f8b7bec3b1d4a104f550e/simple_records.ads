package Simple_Records is

   type Rec is tagged limited private;

   function Init return Rec;

   type Rec_Child is new Rec with private;

   overriding function Init return Rec_Child;

private

   type Status is (Unknown, Off, On);

   type Rec is tagged limited record
      F : Float;
      I : Integer;
   end record;

   function Init return Rec is
      ((F => 10.0, I => 4));

   type Rec_Child is new Rec with record
      Z : Status;
   end record;

   function Init return Rec_Child is
      (Rec'(Init) with Z => Off);

end Simple_Records;