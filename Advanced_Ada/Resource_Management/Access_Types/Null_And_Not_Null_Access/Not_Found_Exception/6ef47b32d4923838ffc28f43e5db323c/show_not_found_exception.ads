package Show_Not_Found_Exception is
   Not_Found : exception;

   function Lookup (T : Table) return Ref_Element;
   --  Raises Not_Found if not found.
   --  Never returns null.
end Show_Not_Found_Exception;