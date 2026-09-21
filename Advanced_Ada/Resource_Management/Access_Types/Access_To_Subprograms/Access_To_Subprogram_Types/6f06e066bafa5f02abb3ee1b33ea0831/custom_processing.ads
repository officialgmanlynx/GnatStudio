package Custom_Processing is

   --  Declaring an access type:
   type Integer_Processing is
     access procedure (I : in out Integer);

   --  Declaring a discriminant with this
   --  access type:
   type Rec (IP : Integer_Processing) is
     private;

   procedure Init (R     : in out Rec;
                   Value :        Integer);

   procedure Process (R : in out Rec);

   procedure Show (R : Rec);

private

   type Rec (IP : Integer_Processing) is
   record
      I : Integer := 0;
   end record;

end Custom_Processing;