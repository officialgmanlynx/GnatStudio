with Ada.Strings.Text_Buffers;

package Untagged_Put_Image is

   use Ada.Strings.Text_Buffers;

   type T is null record
     with Put_Image => Put_Image_T;

   procedure Put_Image_T
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        T);

   type T_Derived_1 is new T;

   type T_Derived_2 is new T
     with Put_Image => Put_Image_T_Derived_2;

   procedure Put_Image_T_Derived_2
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        T_Derived_2);

end Untagged_Put_Image;