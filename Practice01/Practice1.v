module carWarning(Alarm, DoorClose, Ignition, SeatBelt);
  
  output      Alarm            ;
  
  input       DoorClose        ;
  input       Ignition         ; 
  input       SeatBelt         ;
  
  wire        DoorOpened       ;
  wire        NoSeatBelt       ;
  
  wire        Node1            ;
  wire        Node2            ;
  
  not         NOT_U0(DoorOpened, DoorClose)              ;
  not         NOT_U1(NoSeatBelt, SeatBelt)               ;
  
  and         AND_U0(NODE1, DoorOpened, Ignition)        ;
  and         AND_U1(NODE2, NoSeatBelt, Ignition)        ;
  
  or          OR_U0(Alarm, NODE1, NODE2)                 ;

endmodule