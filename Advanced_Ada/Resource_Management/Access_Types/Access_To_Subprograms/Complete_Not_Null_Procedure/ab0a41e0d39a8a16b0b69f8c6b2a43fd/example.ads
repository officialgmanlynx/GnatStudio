package Example is

   type Element is limited private;
   type Ref_Element is access all Element;

   type Table is limited private;

   type Iterate_Action is
     access procedure
       (X : not null Ref_Element);

   procedure Iterate
     (T : Table;
      Action : Iterate_Action := null);
   --  If Action is null, do nothing.

   procedure Do_Nothing
     (X : not null Ref_Element) is null;
   procedure Iterate_2
     (T : Table;
      Action : not null Iterate_Action
                 := Do_Nothing'Access);

private
   type Element is limited
      record
         Component : Integer;
      end record;
   type Table is limited null record;
end Example;