with Int_Array_Processing;
use  Int_Array_Processing;

procedure Main is
   A : Int_Array (1 .. 20) := (others => 3);
   B : Int_Array (1 .. 20) := (others => 4);
begin
   Process (A, A);
   --  In-place processing:
   --  sharing the exact same storage

   Process (A (1 .. 10), A (10 .. 20));
   --  Overlapping one component: A (10)

   Process (A (1 .. 10), A (11 .. 20));
   --  Out-of-place processing:
   --  same array, but not sharing any storage

   Process (A, B);
   --  Out-of-place processing:
   --  two different arrays
end Main;