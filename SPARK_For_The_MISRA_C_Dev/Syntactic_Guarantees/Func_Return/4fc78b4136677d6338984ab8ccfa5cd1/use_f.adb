with Fun; use Fun;

procedure Use_F (Z : out Integer) is
   X, Y : Integer;
begin
   X := F;

   Y := F;
   X := Y;

   Z := F;
end Use_F;