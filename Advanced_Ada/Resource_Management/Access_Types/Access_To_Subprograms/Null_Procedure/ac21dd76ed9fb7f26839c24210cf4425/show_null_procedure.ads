package Show_Null_Procedure is
   type Element is limited null record;
   --  Not implemented yet

   type Ref_Element is access all Element;

   type Table is limited null record;
   --  Not implemented yet

   type Iterate_Action is
     access procedure
       (X : not null Ref_Element);

   procedure Iterate
     (T      : Table;
      Action : Iterate_Action := null);
   --  If Action is null, do nothing.

end Show_Null_Procedure;