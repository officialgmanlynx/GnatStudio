with Transceivers; use Transceivers;

 package Abstract_Transceivers is

    type Abstract_Transceiver is abstract new Send_Interface and
      Receive_Interface with null record;

    procedure Send (D : in out Abstract_Transceiver);
    --  We don't implement Receive for Abstract_Transceiver!

 end Abstract_Transceivers;