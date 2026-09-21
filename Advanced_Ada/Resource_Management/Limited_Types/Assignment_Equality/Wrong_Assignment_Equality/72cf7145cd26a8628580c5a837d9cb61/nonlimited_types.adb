with Ada.Text_IO; use Ada.Text_IO;

package body Nonlimited_Types is

   function Init (I : Integer) return Simple_Rec
   is
   begin
      return E : Simple_Rec do
         E.V := new Integer'(I);
      end return;
   end Init;

   procedure Set (E : Simple_Rec;
                  I : Integer) is
   begin
      E.V.all := I;
   end Set;

   procedure Show (E      : Simple_Rec;
                   E_Name : String) is
   begin
      Put_Line (E_Name
                & ".V.all = "
                & Integer'Image (E.V.all));
   end Show;

end Nonlimited_Types;