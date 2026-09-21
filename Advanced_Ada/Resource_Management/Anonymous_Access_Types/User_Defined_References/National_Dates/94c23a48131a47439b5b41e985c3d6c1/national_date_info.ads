package National_Date_Info is

   subtype Country_Code is String (1 .. 3);

   type Time is record
      Year  : Integer;
      Month : Positive range 1 .. 12;
      Day   : Positive range 1 .. 31;
   end record;

   type National_Date is tagged record
      Country : Country_Code;
      Date    : Time;
   end record;

   type National_Date_Access is
     access National_Date;

   procedure Show (Nat_Date : National_Date);

end National_Date_Info;