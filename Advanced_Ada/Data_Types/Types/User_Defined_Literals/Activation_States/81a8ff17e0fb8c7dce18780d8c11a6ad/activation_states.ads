package Activation_States is

   type Activation_State is (Unknown, Off, On)
     with String_Literal  =>
            To_Activation_State,
          Integer_Literal =>
            Integer_To_Activation_State,
          Real_Literal    =>
            Real_To_Activation_State;

   function To_Activation_State
     (S : Wide_Wide_String)
      return Activation_State;

   function Integer_To_Activation_State
     (S : String)
      return Activation_State;

   function Real_To_Activation_State
     (S : String)
      return Activation_State;

end Activation_States;