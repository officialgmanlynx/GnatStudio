package Enumeration_Representation is

   type Status_In is (Off, On, Unknown);
   type Status_Out is new Status_In;

   for Status_In use (Off     => 2#001#,
                      On      => 2#010#,
                      Unknown => 2#100#);
   for Status_Out use (Off     => 103,
                       On      => 1045,
                       Unknown => 7700);

end Enumeration_Representation;