with Ada.Strings.Text_Buffers;

package Custom_Numerics is

   type Float_Integer is record
     F : Float   := 0.0;
     I : Integer := 0;
   end record
     with Dynamic_Predicate =>
            Integer (Float_Integer.F) =
              Float_Integer.I,
          Put_Image         => Put_Float_Integer;
   --     ^ Custom version of Put_Image

   use Ada.Strings.Text_Buffers;

   procedure Put_Float_Integer
     (Buffer : in out Root_Buffer_Type'Class;
      Arg    :        Float_Integer);

end Custom_Numerics;