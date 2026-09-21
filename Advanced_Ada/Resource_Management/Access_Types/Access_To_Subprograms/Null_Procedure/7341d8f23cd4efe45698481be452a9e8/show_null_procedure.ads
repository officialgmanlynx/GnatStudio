package Show_Null_Procedure is
   type Element is limited null record;
   --  Not implemented yet

   type Ref_Element is access all Element;

   type Table is limited null record;
   --  Not implemented yet

   procedure Do_Nothing
     (X : not null Ref_Element) is null;

   type Iterate_Action is
     access procedure
       (X : not null Ref_Element);

   procedure Iterate
     (T      : Table;
      Action : not null Iterate_Action
                 := Do_Nothing'Access);

end Show_Null_Procedure;