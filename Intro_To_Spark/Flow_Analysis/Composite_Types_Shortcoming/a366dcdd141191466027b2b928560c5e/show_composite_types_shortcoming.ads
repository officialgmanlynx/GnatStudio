package Show_Composite_Types_Shortcoming is

   type T is array (Natural range <>) of Integer;

   procedure Init_Chunks (A : out T);
   procedure Init_Loop (A : out T);
   procedure Init_Aggregate (A : out T);

end Show_Composite_Types_Shortcoming;