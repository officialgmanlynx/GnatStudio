package Recs is

   type Usage_Mode is (Off,
                       Simple_Usage,
                       Advanced_Usage);

   type Priv_Info is private;

   type Priv_Info_Access is access Priv_Info;

   type Proc_Access is
     access procedure (P : in out Priv_Info);

   type Priv_Rec (Last  : Positive;
                  Usage : Usage_Mode;
                  Info  : Priv_Info_Access;
                  Proc  : Proc_Access) is
     private;

private

   type Priv_Info is record
     A : Positive;
     B : Positive;
   end record;

   type Priv_Rec (Last  : Positive;
                  Usage : Usage_Mode;
                  Info  : Priv_Info_Access;
                  Proc  : Proc_Access) is
     null record;

end Recs;