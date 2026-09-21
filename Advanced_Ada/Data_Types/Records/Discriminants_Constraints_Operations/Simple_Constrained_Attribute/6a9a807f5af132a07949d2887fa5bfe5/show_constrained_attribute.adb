with Ada.Text_IO; use Ada.Text_IO;

with Recs;        use Recs;

procedure Show_Constrained_Attribute is
   Constr   : T (L => 5);
   --            ^^^^^^ constrained.
   Unconstr : T;
   --         ^ unconstrained;
   --           using defaults.
begin
   Put_Line ("Constr'Constrained:   "
             & Constr'Constrained'Image);
   Put_Line ("Unconstr'Constrained: "
             & Unconstr'Constrained'Image);
end Show_Constrained_Attribute;