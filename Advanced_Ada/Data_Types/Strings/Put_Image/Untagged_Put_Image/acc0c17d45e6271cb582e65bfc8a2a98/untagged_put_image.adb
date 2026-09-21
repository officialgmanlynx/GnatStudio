package body Untagged_Put_Image is

   procedure Put_Image_T
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        T) is
      pragma Unreferenced (Arg);
   begin
      Buffer.Wide_Wide_Put ("Put_Image_T");
   end Put_Image_T;

   procedure Put_Image_T_Derived_2
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        T_Derived_2) is
      pragma Unreferenced (Arg);
   begin
      Buffer.Wide_Wide_Put
        ("Put_Image_T_Derived_2");
   end Put_Image_T_Derived_2;

end Untagged_Put_Image;