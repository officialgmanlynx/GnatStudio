package P is

   type Rec is record
      V : Integer;
   end record;

   procedure Display (R : Rec);
   procedure Reset (R : out Rec);

   type New_Rec is new Rec;

   overriding procedure Display (R : New_Rec);
   not overriding procedure New_Op (R : in out New_Rec);

   type Tagged_Rec is tagged record
      V : Integer;
   end record;

   procedure Display (R : Tagged_Rec);
   procedure Reset (R : out Tagged_Rec);

   type Ext_Tagged_Rec is new Tagged_Rec with record
      V2 : Integer;
   end record;

   overriding procedure Display (R : Ext_Tagged_Rec);
   overriding procedure Reset (R : out Ext_Tagged_Rec);
   not overriding procedure New_Op (R : in out Ext_Tagged_Rec);

end P;