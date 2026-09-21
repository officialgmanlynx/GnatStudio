package body Show_Put_Image is

   procedure Put_Image_T
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        T) is
      pragma Unreferenced (Arg);
   begin
      --  Call Put with customized
      --  information
      Buffer.Put ("<custom info>");
   end Put_Image_T;

end Show_Put_Image;