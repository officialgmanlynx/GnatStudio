package P is

   type Display_Interface is interface;
   procedure Display (D : Display_Interface) is abstract;

   type Small_Display_Type is new Display_Interface with null record;
   procedure Display (D : Small_Display_Type);

   type Big_Display_Type is new Display_Interface with null record;
   procedure Display (D : Big_Display_Type);

end P;