with Ada.Text_IO;

procedure Ada_Numeric_Literals is
   Lights_On  : constant := 2#1000_1000#;
   Lights_Off : constant := 2#0111_0111#;

   type Byte is mod 256;
   Output_Devices : Byte := 0;

   --  for Output_Devices'Address
   --    use 16#DEAD_BEEF#;
   --  ^^^^^^^^^^^^^^^^^^^^^^^^^^
   --  Memory mapped Output

   use Ada.Text_IO;
begin
   Output_Devices := Output_Devices or
                       Lights_On;

   Put_Line ("Output_Devices (lights on ) = "
             & Byte'Image (Output_Devices));

   Output_Devices := Output_Devices and
                       Lights_Off;

   Put_Line ("Output_Devices (lights off) = "
             & Byte'Image (Output_Devices));
end Ada_Numeric_Literals;