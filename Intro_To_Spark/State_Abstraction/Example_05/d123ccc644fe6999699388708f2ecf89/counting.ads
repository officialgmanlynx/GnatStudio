package Counting with
  Abstract_State => State
is
   procedure Reset_Black_Count with Global => (In_Out => State);
   procedure Reset_Red_Count   with Global => (In_Out => State);
   procedure Reset_All         with Global => (Output => State);
end Counting;