package body Communication with
  Refined_State => (State => Ring_Buffer.B_State)
is

   package body Ring_Buffer with
      Refined_State => (B_State => Capacity)
   is
      function Get_Capacity return Natural is (Capacity);
   end Ring_Buffer;

end Communication;