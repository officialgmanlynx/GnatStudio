extern int var;
extern int fun();
extern void print();

int main() {
   var = fun();
   print();
   return 0;
}