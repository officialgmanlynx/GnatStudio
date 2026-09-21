with Ada.Text_IO;  use Ada.Text_IO;

procedure Show_Out_Initialized_Rec is

   type Rec is tagged record
      Field : Integer;
   end record;

   procedure Local (A : in out Rec) is
   begin
      A.Field := 1;
      raise Program_Error;
   end Local;

   V : Rec;

begin
   V.Field := 0;
   Local (V);
exception
   when others =>
      Put_Line ("Value of Field is"
                & V.Field'Img); -- "1"
end Show_Out_Initialized_Rec;