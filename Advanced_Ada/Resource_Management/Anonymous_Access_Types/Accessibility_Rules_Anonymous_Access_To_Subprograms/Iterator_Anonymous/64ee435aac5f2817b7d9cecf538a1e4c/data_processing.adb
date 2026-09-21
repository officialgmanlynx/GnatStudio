package body Data_Processing is

   procedure Append (D : in out Data_Container;
                     E :        Element) is
   begin
      if D.Curr < D.S'Last then
         D.Curr := D.Curr + 1;
         D.S (D.Curr) := E;
      else
         raise Data_Container_Full;
         --  NOTE: This is just a dummy
         --        implementation. A better
         --        strategy is to add actual error
         --        handling when the container is
         --        full.
      end if;
   end Append;

   procedure Iterate
     (D    : Data_Container;
      Proc : not null access
               procedure (E : Element)) is
   begin
      for I in D.S'First .. D.Curr loop
         Proc (D.S (I));
      end loop;
   end Iterate;

end Data_Processing;