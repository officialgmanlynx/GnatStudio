int main() {
   typedef struct { int x; int y; int z; } rec;
   rec a = {0};
   rec b = {0, 0};
   rec c = {0, .y = 0};
   rec d = {0, .y = 0, 0};
   rec e = {0, .y = 0, 0, .y = 1};
   return 0;
}