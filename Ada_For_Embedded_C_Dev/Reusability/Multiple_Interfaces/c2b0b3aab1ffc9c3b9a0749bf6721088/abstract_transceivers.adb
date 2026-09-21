with Ada.Text_IO; use Ada.Text_IO;

 package body Abstract_Transceivers is

    procedure Send (D : in out Abstract_Transceiver) is
       pragma Unreferenced (D);
    begin
       Put_Line ("Sending data...");
    end Send;

 end Abstract_Transceivers;