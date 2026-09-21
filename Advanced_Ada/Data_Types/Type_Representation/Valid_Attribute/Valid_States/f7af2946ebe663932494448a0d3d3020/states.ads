with Ada.Sequential_IO;

package States is

   type State is (Off, On, Waiting)
     with Size => Integer'Size;

   for State use (Off     => 1,
                  On      => 2,
                  Waiting => 4);

   package State_Sequential_IO is new
     Ada.Sequential_IO (State);

   procedure Read_Display_States
     (File_Name : String);

end States;