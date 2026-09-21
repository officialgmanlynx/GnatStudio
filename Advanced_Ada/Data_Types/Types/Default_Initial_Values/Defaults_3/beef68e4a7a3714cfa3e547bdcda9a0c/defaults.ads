package Defaults is

   subtype T is Integer
     with Default_Value => -1;
   --  ERROR!!

end Defaults;