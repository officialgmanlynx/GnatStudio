with Ada.Text_IO; use Ada.Text_IO;
with Addresses;   use Addresses;

procedure Show_Address_Addition is
   John : constant Person :=
            "John" + "4 Main Street";
   Jane : constant Person :=
            "Jane" + "7 High Street";
begin
   if Jane + John = John + Jane then
      Put_Line ("It's commutative!");
   else
      Put_Line ("It's not commutative!");
   end if;
end Show_Address_Addition;