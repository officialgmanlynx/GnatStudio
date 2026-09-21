with Configuration;

package Communication with
  Abstract_State => State
is
private

   package Ring_Buffer with
     Abstract_State => (B_State with Part_Of => State),
     Initializes    => (B_State => Configuration.External_Variable)
   is
      function Get_Capacity return Natural;
   private
      Capacity : constant Natural := Configuration.External_Variable
        with Part_Of => B_State;
   end Ring_Buffer;

end Communication;