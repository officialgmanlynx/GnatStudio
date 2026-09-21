procedure Show_Exception_Renaming is
   CE : exception renames Constraint_Error;
begin
   raise CE;
end Show_Exception_Renaming;