package Lists with SPARK_Mode is

   type Index is new Integer;

   function Goes_To (I, J : Index) return Boolean;

   procedure Link (I, J : Index) with Post => Goes_To (I, J);

private

   type Cell (Is_Set : Boolean := True) is record
      case Is_Set is
      when True =>
         Next : Index;
      when False =>
         null;
      end case;
   end record;

   type Cell_Array is array (Index) of Cell;

   Memory : Cell_Array;

   function Goes_To (I, J : Index) return Boolean is
     (Memory (I).Is_Set and then Memory (I).Next = J);

end Lists;