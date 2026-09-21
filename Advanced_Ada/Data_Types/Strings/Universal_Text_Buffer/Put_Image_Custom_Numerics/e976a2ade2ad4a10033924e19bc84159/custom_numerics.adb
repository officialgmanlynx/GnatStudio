package body Custom_Numerics is

   procedure Put_Float_Integer
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        Float_Integer) is
   begin
      Buffer.Wide_Wide_Put ("(");
      Buffer.New_Line;

      Buffer.Increase_Indent;

      Buffer.Wide_Wide_Put
        ("F : "
         & Arg.F'Wide_Wide_Image);
      Buffer.New_Line;

      Buffer.Wide_Wide_Put
        ("I : "
        & Arg.I'Wide_Wide_Image);

      Buffer.Decrease_Indent;
      Buffer.New_Line;

      Buffer.Wide_Wide_Put (")");
   end Put_Float_Integer;

end Custom_Numerics;