package Custom_Floating_Point_Types is

   type Coefficient is
     digits 12;

   subtype Filter_Coefficient is
     Coefficient;

end Custom_Floating_Point_Types;