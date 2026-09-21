with System;
with System.Storage_Elements;

procedure Pointer is
   A : constant System.Address := System.Storage_Elements.To_Address (42);
   M : aliased Integer with Address => A;
   P : constant access Integer := M'Access;
begin
   P.all := 0;
end Pointer;