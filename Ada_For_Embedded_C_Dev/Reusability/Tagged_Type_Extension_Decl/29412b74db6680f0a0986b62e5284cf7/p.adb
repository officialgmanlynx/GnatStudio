with Ada.Text_IO; use Ada.Text_IO;

package body P is

   procedure Display (R : Rec) is
   begin
      Put_Line ("TYPE: REC");
      Put_Line ("Rec.V = " & Integer'Image (R.V));
      New_Line;
   end Display;

   procedure Reset (R : out Rec) is
   begin
      R.V := 0;
   end Reset;

   procedure Display (R : New_Rec) is
   begin
      Put_Line ("TYPE: NEW_REC");
      Put_Line ("New_Rec.V = " & Integer'Image (R.V));
      New_Line;
   end Display;

   procedure New_Op (R : in out New_Rec) is
   begin
      R.V := R.V + 1;
   end New_Op;

   procedure Display (R : Tagged_Rec) is
   begin
      --  Using External_Tag attribute to retrieve the tag as a string
      Put_Line ("TYPE: " & Tagged_Rec'External_Tag);
      Put_Line ("Tagged_Rec.V = " & Integer'Image (R.V));
      New_Line;
   end Display;

   procedure Reset (R : out Tagged_Rec) is
   begin
      R.V := 0;
   end Reset;

   procedure Display (R : Ext_Tagged_Rec) is
   begin
      --  Using External_Tag attribute to retrieve the tag as a string
      Put_Line ("TYPE: " & Ext_Tagged_Rec'External_Tag);
      Put_Line ("Ext_Tagged_Rec.V  = " & Integer'Image (R.V));
      Put_Line ("Ext_Tagged_Rec.V2 = " & Integer'Image (R.V2));
      New_Line;
   end Display;

   procedure Reset (R : out Ext_Tagged_Rec) is
   begin
      Tagged_Rec (R).Reset;
      R.V2 := 0;
   end Reset;

   procedure New_Op (R : in out Ext_Tagged_Rec) is
   begin
      R.V := R.V + 1;
   end New_Op;

end P;