package Scales is

   type Satisfaction_Scale is (Very_Dissatisfied,
                               Dissatisfied,
                               OK,
                               Satisfied,
                               Very_Satisfied);

   type Scale is range 0 .. 10;

   function To_Satisfaction_Scale
     (S : Scale)
      return Satisfaction_Scale;

end Scales;