with Devices; use Devices;

procedure Show_Object_View is
   Dev      : constant Device := Init (5);
   --  Constant object with
   --  variable view.

   Default  : constant Device_Settings
               := (Started => False);
   --  Constant object with
   --  constant view.

   Settings : Device_Settings;

begin
   Settings := (Started => True);
end Show_Object_View;