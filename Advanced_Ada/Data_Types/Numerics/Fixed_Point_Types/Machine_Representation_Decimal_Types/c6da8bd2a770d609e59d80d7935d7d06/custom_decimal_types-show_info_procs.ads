with Gen_Show_Info;

package Custom_Decimal_Types.Show_Info_Procs is

   procedure Show_Info is new
     Gen_Show_Info (T_Decimal     => T0_D4,
                    T_Int_Decimal => Int_T0_D4);
   procedure Show_Info is new
     Gen_Show_Info (T_Decimal     => T2_D6,
                    T_Int_Decimal => Int_T2_D6);
   procedure Show_Info is new
     Gen_Show_Info (T_Decimal     => T2_D12,
                    T_Int_Decimal => Int_T2_D12);

end Custom_Decimal_Types.Show_Info_Procs;