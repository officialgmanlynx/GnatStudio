package Custom_Floating_Point_Types is

   type Coefficient is
     digits 12;

   type Filter_Coefficient is new
     Coefficient;

end Custom_Floating_Point_Types;