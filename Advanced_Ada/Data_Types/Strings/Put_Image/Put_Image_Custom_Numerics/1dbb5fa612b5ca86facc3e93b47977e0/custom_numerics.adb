package body Custom_Numerics is

   procedure Put_Float_Integer
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        Float_Integer) is
   begin
      --  Call Wide_Wide_Put with customized
      --  information
      Buffer.Wide_Wide_Put
        ("(F : "  & Arg.F'Wide_Wide_Image & ", "
         & "I : " & Arg.I'Wide_Wide_Image & ")");
   end Put_Float_Integer;

end Custom_Numerics;