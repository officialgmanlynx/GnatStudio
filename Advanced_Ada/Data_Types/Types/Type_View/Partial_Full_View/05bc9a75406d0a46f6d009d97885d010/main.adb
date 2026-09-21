with Partial_Full_Views; use Partial_Full_Views;

procedure Main is
   --  Partial view of R indicates that
   --  R exists as a private type, so we
   --  can declare objects of this type:
   C : R;
begin
   --  But we cannot directly access any
   --  information declared in the full
   --  view of R:
   --
   --  C.I := 42;
   --
   null;
end Main;