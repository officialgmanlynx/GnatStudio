package body Show_Composite_Types_Shortcoming is

   procedure Init_Chunks (A : out T) is
   begin
      A (A'First) := 0;
      for I in A'First + 1 .. A'Last loop
         A (I) := 0;
      end loop;
      --  flow analysis doesn't know that A is initialized
   end Init_Chunks;

   procedure Init_Loop (A : out T) is
   begin
      for I in A'Range loop
         A (I) := 0;
      end loop;
      --  flow analysis knows that A is initialized
   end Init_Loop;

   procedure Init_Aggregate (A : out T) is
   begin
      A := (others => 0);
      --  flow analysis knows that A is initialized
   end Init_Aggregate;

end Show_Composite_Types_Shortcoming;