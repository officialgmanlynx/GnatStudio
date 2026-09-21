with Abstract_Transceivers; use Abstract_Transceivers;

package Full_Transceivers is

   type Full_Transceiver is new Abstract_Transceiver with null record;
   procedure Receive (D : in out Full_Transceiver);

end Full_Transceivers;