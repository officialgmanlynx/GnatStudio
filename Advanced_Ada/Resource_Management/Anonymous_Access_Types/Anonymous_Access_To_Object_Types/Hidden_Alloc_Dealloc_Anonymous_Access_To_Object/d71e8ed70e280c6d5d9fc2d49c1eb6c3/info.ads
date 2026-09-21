with Hidden_Anonymous_Allocation;

package Info is

   type Rec is private;

   function New_Rec return not null access Rec;

   procedure Free (Obj : access Rec);

private

   type Rec is record
      I : Integer;
   end record;

   package Rec_Allocation is new
     Hidden_Anonymous_Allocation (T => Rec);

   function New_Rec return not null access Rec
     renames Rec_Allocation.New_T;

   procedure Free (Obj : access Rec)
     renames Rec_Allocation.Free;

end Info;