package Access_To_Subprogram_Types is

   type Access_To_Procedure is
     access procedure (I : in out Integer);

   type Access_To_Function is
     access function (I : Integer) return Integer;

end Access_To_Subprogram_Types;