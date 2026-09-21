package Access_To_Subprogram_Types is

   type Access_To_Procedure is
     access procedure (I : in out Integer);

   type Access_To_Function is
     access function (I : Integer) return Integer;

   type Access_To_Procedure_Array is
     array (Positive range <>) of
       Access_To_Procedure;

   type Access_To_Function_Array is
     array (Positive range <>) of
       Access_To_Function;

   type Rec_Access_To_Procedure is record
      AP : Access_To_Procedure;
   end record;

   type Rec_Access_To_Function is record
      AF : Access_To_Function;
   end record;

end Access_To_Subprogram_Types;