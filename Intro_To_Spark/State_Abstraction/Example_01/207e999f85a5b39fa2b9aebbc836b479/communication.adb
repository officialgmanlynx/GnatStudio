package body Communication with
  Refined_State => (State => Ring_Buffer.Capacity)
is

   function Get_Capacity return Natural is
   begin
      return Ring_Buffer.Capacity;
   end Get_Capacity;

end Communication;