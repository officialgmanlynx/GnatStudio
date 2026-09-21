package body Example is

   An_Element : aliased Element;

   function Lookup (T : Table)
                    return Ref_Element is
      pragma Unreferenced (T);
   begin
      --  ...
      return Not_Found;
   end Lookup;

   function Lookup_2 (T : Table)
                      return not null Ref_Element
   is
   begin
      --  ...
      raise Not_Found_2;

      return An_Element'Access;
      --  suppress error: 'missing "return"
      --  statement in function body'
   end Lookup_2;

   procedure P (X : not null Ref_Element) is
   begin
      X.all.Component := X.all.Component + 1;
   end P;

   procedure Q (X : not null Ref_Element) is
   begin
      for I in 1 .. 1000 loop
         P (X);
      end loop;
   end Q;

   procedure R is
   begin
      Q (An_Element'Access);
   end R;

  pragma Unreferenced (R);

end Example;