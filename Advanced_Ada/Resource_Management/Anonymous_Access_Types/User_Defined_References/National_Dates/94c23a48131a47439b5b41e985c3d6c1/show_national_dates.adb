with National_Date_Info;
use  National_Date_Info;

with National_Date_Containers;
use  National_Date_Containers;

procedure Show_National_Dates is

   Nat_Dates : constant National_Dates (1 .. 5) :=
     (new National_Date'("USA",
                         Time'(1776,  7,  4)),
      new National_Date'("FRA",
                         Time'(1789,  7, 14)),
      new National_Date'("DEU",
                         Time'(1990, 10,  3)),
      new National_Date'("SPA",
                         Time'(1492, 10, 12)),
      new National_Date'("BRA",
                         Time'(1822,  9,  7)));

begin
   Find (Nat_Dates, "FRA").Show;
   --                     ^ implicit dereference
end Show_National_Dates;