with Library_Level; use Library_Level;

procedure Show_Library_Level is
   type L1_Integer_Access is
     access all Integer;

   L0_IA_2 : L0_Integer_Access;
   L1_IA   : L1_Integer_Access;

   L1_Var : aliased Integer;

   procedure Test is
      type L2_Integer_Access is
        access all Integer;

      L2_IA  : L2_Integer_Access;

      L2_Var : aliased Integer;
   begin
      L1_IA := L2_Var'Access;
      --       ^^^^^^
      --       ILLEGAL: L2 object to
      --                L1 access object

      L2_IA := L2_Var'Access;
      --       ^^^^^^
      --       LEGAL: L2 object to
      --              L2 access object
   end Test;

begin
   L0_IA := new Integer'(22);
   --       ^^^^^^^^^^^
   --       LEGAL: L0 object to
   --              L0 access object

   L0_IA_2 := new Integer'(22);
   --         ^^^^^^^^^^^
   --         LEGAL: L0 object to
   --                L0 access object

   L0_IA := L1_Var'Access;
   --       ^^^^^^
   --       ILLEGAL: L1 object to
   --                L0 access object

   L0_IA_2 := L1_Var'Access;
   --         ^^^^^^
   --         ILLEGAL: L1 object to
   --                  L0 access object

   L1_IA := L0_Var'Access;
   --       ^^^^^^
   --       LEGAL: L0 object to
   --              L1 access object

   L1_IA := L1_Var'Access;
   --       ^^^^^^
   --       LEGAL: L1 object to
   --              L1 access object

   L0_IA := L1_IA;
   --       ^^^^^
   --       ILLEGAL: type mismatch

   L0_IA := L0_Integer_Access (L1_IA);
   --       ^^^^^^^^^^^^^^^^^
   --       ILLEGAL: cannot convert
   --                L1 access object to
   --                L0 access object

   Test;
end Show_Library_Level;