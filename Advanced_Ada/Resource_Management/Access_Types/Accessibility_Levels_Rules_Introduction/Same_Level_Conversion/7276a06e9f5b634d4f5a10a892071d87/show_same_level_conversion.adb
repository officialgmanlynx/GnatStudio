procedure Show_Same_Level_Conversion is
   type L1_Integer_Access is
     access all Integer;

   type L1_B_Integer_Access is
     access all Integer;

   L1_IA   : L1_Integer_Access;
   L1_B_IA : L1_B_Integer_Access;

   L1_Var  : aliased Integer;
begin
   L1_IA := L1_Var'Access;

   L1_B_IA := L1_B_Integer_Access (L1_IA);
   --         ^^^^^^^^^^^^^^^^^^^
   --         LEGAL: conversion from
   --                L1 access object to
   --                L1 access object
end Show_Same_Level_Conversion;