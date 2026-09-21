package Action_Sequence is

   type T is new Integer;

   V_Interm : T with Ghost;

   function First_Thing_Done (X, Y : T) return Boolean with Ghost;
   function Second_Thing_Done (X, Y : T) return Boolean with Ghost;

   procedure Do_Two_Things (V : in out T) with
     Post => First_Thing_Done (V'Old, V_Interm)
       and then Second_Thing_Done (V_Interm, V);

end Action_Sequence;