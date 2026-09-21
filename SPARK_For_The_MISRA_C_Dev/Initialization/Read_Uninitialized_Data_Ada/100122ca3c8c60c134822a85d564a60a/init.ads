with Interfaces; use Interfaces;

package Init is
   U : Unsigned_16;
   procedure F (B : Boolean);
   procedure G with Global => (Output => U);
end Init;