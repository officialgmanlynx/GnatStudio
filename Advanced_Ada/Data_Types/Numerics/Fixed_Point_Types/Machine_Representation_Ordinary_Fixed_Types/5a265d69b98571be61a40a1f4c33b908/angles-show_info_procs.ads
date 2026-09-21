with Gen_Show_Info;

package Angles.Show_Info_Procs is

   procedure Show_Info is new
     Gen_Show_Info (T_Fixed     => Angle,
                    T_Int_Fixed => Int_Angle);
   procedure Show_Info is new
     Gen_Show_Info (T_Fixed     => Angle_Adj,
                    T_Int_Fixed => Int_Angle_Adj);

end Angles.Show_Info_Procs;