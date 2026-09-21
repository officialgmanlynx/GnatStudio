package Custom_Enumerations is

   type Priority is (Low, Mid, High);

   type Important_Priority is new
     Priority range Mid .. High;

end Custom_Enumerations;