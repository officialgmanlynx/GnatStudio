package Activation_States is

   type Activation_State is (Unknown, Off, On)
     with Integer_Literal =>
            Integer_To_Activation_State;

   function Integer_To_Activation_State
     (S : String)
      return Activation_State;

end Activation_States;