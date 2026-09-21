with Ada.Strings.Text_Buffers;

package Tagged_Put_Image is

   use Ada.Strings.Text_Buffers;

   type T is tagged record
      I : Integer := 0;
   end record
     with Put_Image => Put_Image_T;

   procedure Put_Image_T
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        T);

   type T_Child_1 is new T with record
      I1 : Integer;
   end record;

   type T_Child_2 is new T with null record;

   type T_Child_3 is new T with record
      I3 : Integer := 0;
   end record
     with Put_Image => Put_Image_T_Child_3;

   procedure Put_Image_T_Child_3
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        T_Child_3);

end Tagged_Put_Image;