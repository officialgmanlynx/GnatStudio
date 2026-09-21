with Ada.Text_IO; use Ada.Text_IO;

with Drivers_Base;
with Drivers_1;
with Drivers_2;

procedure Main is
   D1 : aliased Drivers_1.Transceiver;
   D2 : aliased Drivers_2.Transceiver;
   D  : access Drivers_Base.Transceiver'Class;

   I  : Integer;

   type Driver_Number is range 1 .. 2;

   procedure Select_Driver (N : Driver_Number) is
   begin
      if N = 1 then
         D := D1'Access;
      else
         D := D2'Access;
      end if;
      D.Display;
   end Select_Driver;

begin
   Select_Driver (1);
   D.Send (999);
   D.Receive (I);
   Put_Line (Integer'Image (I));

   Select_Driver (2);
   D.Send (999);
   D.Receive (I);
   Put_Line (Integer'Image (I));
end Main;