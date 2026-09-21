with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Arr is array (Integer range <>) of Integer;

   type Extra_Info is (No, Yes);

   type S_Var (Last : Integer; Has_Extra_Info : Extra_Info) is record
      A : Arr (0 .. Last);

      case Has_Extra_Info is
        when No   => null;
        when Yes  => B : Arr (0 .. Last);
      end case;
   end record;

   V1 : S_Var (Last => 9, Has_Extra_Info => Yes);
   V2 : S_Var (Last => 9, Has_Extra_Info => No);
begin
   Put_Line ("Size of V1 is: " & Integer'Image (V1'Size));
   Put_Line ("Size of V2 is: " & Integer'Image (V2'Size));
end Main;