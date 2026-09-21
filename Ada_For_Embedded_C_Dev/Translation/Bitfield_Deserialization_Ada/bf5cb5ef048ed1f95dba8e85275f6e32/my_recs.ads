with Serializer;  use Serializer;

package My_Recs is

   type Rec is record
      V : Integer;
      S : String (1 .. 3);
   end record;

   procedure To_Rec (B :     Bit_Field;
                     R : out Rec);

   function To_Rec (B : Bit_Field) return Rec;

   procedure Display (R : Rec);

end My_Recs;