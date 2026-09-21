with Generic_Containers;
with National_Date_Info; use National_Date_Info;

procedure Show_National_Dates is

   function Matches_Country
     (E    : National_Date_Access;
      Elem : Country_Code)
      return Boolean is
        (E.Country = Elem);

   package National_Date_Containers is new
     Generic_Containers
       (T        => National_Date,
        T_Access => National_Date_Access,
        T_Cmp    => Country_Code,
        Matches  => Matches_Country);

   use National_Date_Containers;

   subtype National_Dates is Container;

   Nat_Dates : constant
                 National_Dates (1 .. 5) :=
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
end Show_National_Dates;