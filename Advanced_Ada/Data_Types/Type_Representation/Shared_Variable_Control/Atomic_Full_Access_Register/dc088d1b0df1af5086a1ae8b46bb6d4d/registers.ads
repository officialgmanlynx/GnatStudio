with System;

package Registers is

   type Boolean_Bit is new Boolean
     with Size => 1;

   type UInt1 is mod 2**1
     with Size => 1;

   type UInt2 is mod 2**2
     with Size => 2;

   type UInt14 is mod 2**14
     with Size => 14;

   type Window_Register is record
      --  horizontal line count
      Horizontal_Cnt : UInt14 := 16#0#;

      --  unspecified
      Reserved_14_15 : UInt2  := 16#0#;

      --  vertical line count
      Vertical_Cnt   : UInt14 := 16#0#;

      --  refresh signalling
      Refresh_Needed : Boolean_Bit := False;

      --  unspecified
      Reserved_30    : UInt1  := 16#0#;
   end record
     with Size      => 32,
          Bit_Order => System.Low_Order_First,
          Atomic,
          Full_Access_Only;

   for Window_Register use record
      Horizontal_Cnt at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      Vertical_Cnt   at 0 range 16 .. 29;
      Refresh_Needed at 0 range 30 .. 30;
      Reserved_30    at 0 range 31 .. 31;
   end record;

   procedure Show (WR : Window_Register);

end Registers;