package Aux is

   type Integer_Access is access all Integer;

   procedure Show (Name : String;
                   V    : Integer_Access);

end Aux;