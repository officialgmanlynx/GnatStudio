package Exported_Procedures is

  procedure Local (A     : in out Integer;
                   Error : Boolean);
  pragma Export_Procedure
    (Local,
    Mechanism => (A => Reference));

end Exported_Procedures;