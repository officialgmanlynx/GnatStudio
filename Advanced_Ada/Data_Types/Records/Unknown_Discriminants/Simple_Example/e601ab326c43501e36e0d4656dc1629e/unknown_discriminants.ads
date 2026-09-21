package Unknown_Discriminants is

   --   Private type
   type Rec (<>) is
     private;

   --   Tagged private type
   type Tagged_Rec (<>) is
     tagged private;

   --   Incomplete type
   type T_Incomplete (<>);

   type T_Incomplete (<>) is
     private;

private

   type Rec is
     null record;

   type Tagged_Rec is
     tagged null record;

   type T_Incomplete is
     null record;

end Unknown_Discriminants;