package body Scales is

   function To_Satisfaction_Scale
     (S : Scale)
      return Satisfaction_Scale
   is
      Satisfaction : Satisfaction_Scale;
   begin
      case (S) is
         when 0 .. 2  =>
            Satisfaction := Very_Dissatisfied;
         when 3 .. 4  =>
            Satisfaction := Dissatisfied;
         when 5 .. 6  =>
            Satisfaction := OK;
         when 7 .. 8  =>
            Satisfaction := Satisfied;
         when 9 .. 10 =>
            Satisfaction := Very_Satisfied;
      end case;

      return Satisfaction;
   end To_Satisfaction_Scale;

end Scales;