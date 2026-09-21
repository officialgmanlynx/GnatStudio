package Show_Full_Access_Only_Objects is

   Nonatomic_Full_Access_Obj : Long_Float
     with Volatile, Full_Access_Only;

   Atomic_Full_Access_Obj : Long_Float
     with Atomic, Full_Access_Only;

end Show_Full_Access_Only_Objects;