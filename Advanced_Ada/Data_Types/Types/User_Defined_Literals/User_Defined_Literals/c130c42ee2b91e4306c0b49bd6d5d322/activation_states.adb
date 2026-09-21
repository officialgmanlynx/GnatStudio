package body Activation_States is

   function Integer_To_Activation_State
     (S : String)
      return Activation_State is
   begin
      case Integer'Value (S) is
         when 0      => return Off;
         when 1      => return On;
         when others => return Unknown;
      end case;
   end Integer_To_Activation_State;

end Activation_States;