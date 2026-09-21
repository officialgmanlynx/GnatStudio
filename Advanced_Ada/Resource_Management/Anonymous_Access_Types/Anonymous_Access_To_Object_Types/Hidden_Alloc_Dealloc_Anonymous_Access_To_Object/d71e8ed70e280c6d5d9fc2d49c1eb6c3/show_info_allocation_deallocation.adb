with Info; use Info;

procedure Show_Info_Allocation_Deallocation is
   RA : constant not null access Rec := New_Rec;
begin
   Free (RA);
end Show_Info_Allocation_Deallocation;