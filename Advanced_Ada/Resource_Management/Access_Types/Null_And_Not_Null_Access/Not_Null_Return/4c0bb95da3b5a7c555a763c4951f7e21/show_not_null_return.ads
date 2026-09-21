package Show_Not_Null_Return is
   type Ref_Element is access all Element;

   Not_Found : constant Ref_Element := null;

   function Lookup (T : Table)
                    return not null Ref_Element;
   --  Possible since Ada 2005.
end Show_Not_Null_Return;