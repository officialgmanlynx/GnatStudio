with Ada.Text_IO; use Ada.Text_IO;

package body Devices is

   function Create (Active : Boolean)
                    return Device
   is
      pragma Unreferenced (Active);
   begin
      Put_Line ("Creating device...");
      return (null record);
   end Create;

   procedure Reset (D : out Device)
   is
      pragma Unreferenced (D);
   begin
      Put_Line ("Processing on device...");
   end Reset;

   procedure Process (D : in out Device)
   is
      pragma Unreferenced (D);
   begin
      Put_Line ("Deactivating device...");
   end Process;

   procedure Activate (D : in out Device)
   is
      pragma Unreferenced (D);
   begin
      Put_Line ("Activating device...");
   end Activate;

   procedure Deactivate (D : in out Device)
   is
      pragma Unreferenced (D);
   begin
      Put_Line ("Resetting device...");
   end Deactivate;

end Devices;