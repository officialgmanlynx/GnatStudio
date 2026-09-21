package Show_Immutably_Limited_Types is

   --
   --  Explicitly limited type
   --
   type Explicitly_Limited_Rec is limited
   record
      A : Integer;
   end record;

   --
   --  Tagged limited type
   --
   type Limited_Tagged_Rec is tagged limited
   record
      A : Integer;
   end record;

   --
   --  Tagged limited private type
   --
   type Limited_Tagged_Private is
     tagged limited private;

   --
   --  Limited private type with an access
   --  discriminant that has a default
   --  expression
   --
   type Limited_Rec_Access_D
     (AI : access Integer := new Integer) is
       limited private;

   --
   --  Task type
   --
   task type TT is
     entry Start;
     entry Stop;
   end TT;

   --
   --  Protected type
   --
   protected type PT is
     function Value return Integer;
   private
     A : Integer;
   end PT;

  --
  --  Synchronized interface
  --
  type SI is synchronized interface;

  --
  --  A type derived from an immutably
  --  limited type
  --
  type Derived_Immutable is new
    Explicitly_Limited_Rec;

private

   type Limited_Tagged_Private is tagged limited
   record
      A : Integer;
   end record;

   type Limited_Rec_Access_D
     (AI : access Integer := new Integer)
   is limited
     record
       A : Integer;
     end record;

end Show_Immutably_Limited_Types;