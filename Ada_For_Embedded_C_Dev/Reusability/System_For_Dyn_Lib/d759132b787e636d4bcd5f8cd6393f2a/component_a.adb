--
--  File: component_a.adb
--
package body Component_A is

   function Average (Data : Float_Array) return Float is
      Total : Float := 0.0;
   begin
      for Value of Data loop
         Total := Total + Value;
      end loop;
      return Total / Float (Data'Length);
   end Average;

end Component_A;