#define FLAG_1 0b0001
#define FLAG_2 0b0010
#define FLAG_3 0b0100
#define FLAG_4 0b1000

int main(int argc, const char * argv[])
{
    int value = 0;

    value |= FLAG_2 | FLAG_4;

    return 0;
}