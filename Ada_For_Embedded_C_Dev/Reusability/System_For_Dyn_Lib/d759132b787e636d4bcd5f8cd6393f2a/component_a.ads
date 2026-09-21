--
--  File: component_a.ads
--
package Component_A is

   type Float_Array is array (Positive range <>) of Float;

   function Average (Data : Float_Array) return Float;

end Component_A;