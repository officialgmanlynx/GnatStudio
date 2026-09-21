package body Generic_Containers is

   function Find (Cont : Container;
                  Elem : T_Cmp)
                  return Ref_Type is
   begin
      for I in Cont'Range loop
         if Matches (Cont (I), Elem) then
            return Ref_Type'(Ref => Cont (I));
         end if;
      end loop;

      return Ref_Type'(Ref => null);
   end Find;

end Generic_Containers;