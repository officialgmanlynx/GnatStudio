procedure Show_Range_Check is

   subtype Int_1_10 is Integer range 1 .. 10;

   I : Int_1_10;

begin
   I := 11;
end Show_Range_Check;