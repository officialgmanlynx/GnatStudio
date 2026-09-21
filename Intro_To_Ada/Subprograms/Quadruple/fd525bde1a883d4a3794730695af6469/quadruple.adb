function Quadruple (I : Integer)
                    return Integer is

    function Double (I : Integer)
                     return Integer is
    begin
       return I * 2;
    end Double;

   Res : Integer;
begin
   Double (Double (I));
   --  ERROR: cannot use call to function
   --         "Double" as a statement

   Res := Double (Double (I));
   --  OK: return value of Double is
   --      assigned to Res

   return Res;
end Quadruple;