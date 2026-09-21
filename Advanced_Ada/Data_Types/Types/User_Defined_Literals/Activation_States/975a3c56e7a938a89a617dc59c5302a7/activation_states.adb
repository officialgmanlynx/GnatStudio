package body Activation_States is

   function To_Activation_State
     (S : Wide_Wide_String)
      return Activation_State
   is
   begin
      if S = "Off" then
         return Off;
      elsif S = "On" then
         return On;
      else
         return Unknown;
      end if;
   end To_Activation_State;

   function Integer_To_Activation_State
     (S : String)
      return Activation_State
   is
   begin
      case Integer'Value (S) is
         when 0      => return Off;
         when 1      => return On;
         when others => return Unknown;
      end case;
   end Integer_To_Activation_State;

   function Real_To_Activation_State
     (S : String)
      return Activation_State
   is
      V : constant Float := Float'Value (S);
   begin
      if V < 0.0 then
         return Unknown;
      elsif V < 1.0 then
         return Off;
      else
         return On;
      end if;
   end Real_To_Activation_State;

end Activation_States;