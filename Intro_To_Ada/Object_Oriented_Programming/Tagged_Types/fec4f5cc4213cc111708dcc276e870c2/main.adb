with P; use P;

procedure Main is
   package Extend is
      type D2 is new Derived with null record;

      procedure Bar (Self : in out D2;
                     Val  :        Integer);
   end Extend;

   package body Extend is
      procedure Bar (Self : in out D2;
                     Val  :        Integer) is
      begin
         Self.A := Self.A + Val;
      end Bar;
   end Extend;

   use Extend;

   Obj : D2 := (A => 15);
begin
   Obj.Bar (2);
   Obj.Foo;
end Main;