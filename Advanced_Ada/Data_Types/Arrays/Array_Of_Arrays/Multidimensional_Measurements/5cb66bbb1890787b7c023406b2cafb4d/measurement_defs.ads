package Measurement_Defs is

   type Days is
     (Mon, Tue, Wed, Thu, Fri, Sat, Sun);

   type Hours is range 0 .. 11;

   subtype Measurement is Float;

   type Hourly_Measurements is
     array (Hours) of Measurement;

   type Measurements is
     array (Days) of Hourly_Measurements;

   procedure Show_Indices (M : Measurements);

   procedure Show_Values (M : Measurements);

   procedure Reset (M : out Measurements);

end Measurement_Defs;