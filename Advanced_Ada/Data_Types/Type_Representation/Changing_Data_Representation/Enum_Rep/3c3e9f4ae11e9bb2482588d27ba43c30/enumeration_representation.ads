package Enumeration_Representation is

   type Status is (Off, On, Unknown);
   for Status use (Off     => 2#001#,
                   On      => 2#010#,
                   Unknown => 2#100#);

end Enumeration_Representation;