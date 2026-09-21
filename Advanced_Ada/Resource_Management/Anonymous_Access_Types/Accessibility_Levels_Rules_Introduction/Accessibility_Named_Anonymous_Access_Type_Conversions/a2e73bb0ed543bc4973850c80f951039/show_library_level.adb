with Library_Level; use Library_Level;

procedure Show_Library_Level is
   type L1_Integer_Access is
     access all Integer;

   L1_IA  : L1_Integer_Access;
   L1_AO  : access Integer;

   L1_Var : aliased Integer;

begin
   ---------------------------------------
   --  From named type to anonymous type
   ---------------------------------------

   L0_IA := new Integer'(22);
   L1_IA := new Integer'(42);

   L0_AO := L0_IA;
   --       ^^^^^
   --       LEGAL: assignment from
   --              L0 access object (named type)
   --              to
   --              L0 access object
   --                (anonymous type)

   L0_AO := L1_IA;
   --       ^^^^^
   --       ILLEGAL: assignment from
   --                L1 access object (named type)
   --                to
   --                L0 access object
   --                  (anonymous type)

   L1_AO := L0_IA;
   --       ^^^^^
   --       LEGAL: assignment from
   --              L0 access object (named type)
   --              to
   --              L1 access object
   --                (anonymous type)

   L1_AO := L1_IA;
   --       ^^^^^
   --       LEGAL: assignment from
   --              L1 access object (named type)
   --              to
   --              L1 access object
   --                (anonymous type)

   ---------------------------------------
   --  From anonymous type to named type
   ---------------------------------------

   L0_AO := L0_Var'Access;
   L1_AO := L1_Var'Access;

   L0_IA := L0_Integer_Access (L0_AO);
   --       ^^^^^^^^^^^^^^^^^
   --       LEGAL: conversion / assignment from
   --              L0 access object
   --                (anonymous type)
   --              to
   --              L0 access object (named type)

   L0_IA := L0_Integer_Access (L1_AO);
   --       ^^^^^^^^^^^^^^^^^
   --       ILLEGAL: conversion / assignment from
   --                L1 access object
   --                  (anonymous type)
   --                to
   --                L0 access object (named type)
   --                (accessibility check fails)

   L1_IA := L1_Integer_Access (L0_AO);
   --       ^^^^^^^^^^^^^^^^^
   --       LEGAL: conversion / assignment from
   --              L0 access object
   --                (anonymous type)
   --              to
   --              L1 access object (named type)

   L1_IA := L1_Integer_Access (L1_AO);
   --       ^^^^^^^^^^^^^^^^^
   --       LEGAL: conversion / assignment from
   --              L1 access object
   --                (anonymous type)
   --              to
   --              L1 access object (named type)
end Show_Library_Level;