with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type Float_Int_Union (Use_Float : Boolean) is record
      case Use_Float is
        when True  => F : Float;
        when False => I : Integer;
      end case;
   end record
     with Unchecked_Union;

   V : constant Float_Int_Union := (Use_Float => True,  F => 10.0);

begin
   Put_Line ("Integer value: " & Integer'Image (V.I));
end Main;