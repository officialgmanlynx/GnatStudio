with Configuration;

package Communication with
  Abstract_State => State,
  Initializes    => (State => Configuration.External_Variable)
is
   function Get_Capacity return Natural;

private

   package Ring_Buffer with
     Initializes => (Capacity => Configuration.External_Variable)
   is
      Capacity : constant Natural := Configuration.External_Variable;
   end Ring_Buffer;

end Communication;