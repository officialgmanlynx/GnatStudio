with Ada.Text_IO; use Ada.Text_IO;

package body Simple_Controlled_Types is

   protected body Id_Gen is

      procedure New_Id (Id_Out : out Positive) is
      begin
         Id := Id + 1;
         Id_Out := Id;
      end New_Id;

   end Id_Gen;

   procedure Initialize (E : in out T) is
   begin
      Id_Gen.New_Id (E.Id);
      Put_Line ("Initialize: ID => "
                & E.Id'Image);
   end Initialize;

   procedure Adjust (E : in out T) is
      Prev_Id : constant Positive := E.Id;
   begin
      Id_Gen.New_Id (E.Id);
      Put_Line ("Adjust:     ID => "
                & E.Id'Image);
      Put_Line ("    (Previous ID => "
                & Prev_Id'Image
                & ")");
   end Adjust;

   procedure Finalize (E : in out T) is
   begin
      Put_Line ("Finalize:   ID => "
                & E.Id'Image);
   end Finalize;

   procedure Show (E    : T;
                   Name : String) is
   begin
      Put_Line ("Obj. " & Name
                & ": ID => "
                & E.Id'Image);
   end Show;

end Simple_Controlled_Types;