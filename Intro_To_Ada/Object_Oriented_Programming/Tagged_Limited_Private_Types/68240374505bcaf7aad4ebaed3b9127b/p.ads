package P is
   type T is tagged limited private;

   procedure Init (A : in out T);
private
   type T is tagged limited record
      E : Integer;
   end record;
end P;