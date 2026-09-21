package Transceivers is

   type Send_Interface is interface;

   procedure Send (Obj : in out Send_Interface) is abstract;

   type Receive_Interface is interface;

   procedure Receive (Obj : in out Receive_Interface) is abstract;

   type Transceiver is new Send_Interface and Receive_Interface
     with null record;

   procedure Send (D : in out Transceiver);
   procedure Receive (D : in out Transceiver);

end Transceivers;