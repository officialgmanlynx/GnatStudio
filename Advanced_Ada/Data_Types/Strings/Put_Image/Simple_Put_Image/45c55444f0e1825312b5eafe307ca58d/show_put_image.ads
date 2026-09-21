with Ada.Strings.Text_Buffers;

package Show_Put_Image is

   type T is null record
     with Put_Image => Put_Image_T;
   --     ^ Custom version of Put_Image

   use Ada.Strings.Text_Buffers;

   procedure Put_Image_T
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        T);

end Show_Put_Image;