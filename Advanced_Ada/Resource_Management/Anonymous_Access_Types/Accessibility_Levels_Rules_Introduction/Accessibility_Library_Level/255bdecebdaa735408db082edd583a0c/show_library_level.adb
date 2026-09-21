with Library_Level; use Library_Level;

procedure Show_Library_Level is
   L1_Var : aliased Integer;

   L1_AO  : access Integer;

   procedure Test is
      L2_AO  : access Integer;

      L2_Var : aliased Integer;
   begin
      L1_AO := L2_Var'Access;
      --       ^^^^^^
      --       ILLEGAL: L2 object to
      --                L1 access object

      L2_AO := L2_Var'Access;
      --       ^^^^^^
      --       LEGAL: L2 object to
      --              L2 access object
   end Test;

begin
   L0_AO := new Integer'(22);
   --       ^^^^^^^^^^^
   --       LEGAL: L0 object to
   --              L0 access object

   L0_AO := L1_Var'Access;
   --       ^^^^^^
   --       ILLEGAL: L1 object to
   --                L0 access object

   L1_AO := L0_Var'Access;
   --       ^^^^^^
   --       LEGAL: L0 object to
   --              L1 access object

   L1_AO := L1_Var'Access;
   --       ^^^^^^
   --       LEGAL: L1 object to
   --              L1 access object

   L0_AO := L1_AO;  -- legal!!
   --       ^^^^^
   --       LEGAL:   L1 access object to
   --                L0 access object
   --
   --       ILLEGAL: L1 object
   --                (L1_AO = L1_Var'Access)
   --                to
   --                L0 access object
   --
   --       This is actually OK at compile time,
   --       but the accessibility check fails at
   --       runtime.

   Test;
end Show_Library_Level;