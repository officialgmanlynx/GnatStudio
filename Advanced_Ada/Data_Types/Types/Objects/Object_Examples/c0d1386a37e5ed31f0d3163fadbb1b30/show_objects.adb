procedure Show_Objects is

   type Device (Id : Positive) is
   record
      Value : Integer;
   end record;

   type Device_Access is
     access all Device;

   Dev : aliased Device (99);
   --                    ^^
   --  Discriminant `Id` is a
   --  constant object.
   --
   --  `Dev` is a variable object,
   --  though.

   Dev_Acc : Device_Access := Dev'Access;

   procedure Process (D : Device) is
     null;
   --                 ^
   --         constant object
begin
   Dev.Value := 0;
   --  ^^^^^
   --  variable object

   Dev_Acc.all.Value := 1;
   --  ^^^^^^^
   --  variable object
end Show_Objects;