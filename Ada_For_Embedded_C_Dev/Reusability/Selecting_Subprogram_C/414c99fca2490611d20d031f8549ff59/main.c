#include <stdio.h>
#include <stdlib.h>

void show_msg_v1 (char *msg)
{
    printf("Using version #1: %s\n", msg);
}

void show_msg_v2 (char *msg)
{
    printf("Using version #2:\n %s\n", msg);
}

int main()
{
    int selection = 1;
    void (*current_show_msg) (char *);

    switch (selection)
    {
        case 1:  current_show_msg = &show_msg_v1;    break;
        case 2:  current_show_msg = &show_msg_v2;    break;
        default: current_show_msg = NULL;            break;
    }

    if (current_show_msg != NULL)
    {
        current_show_msg ("Hello there!");
    }
    else
    {
        printf("ERROR: no version of show_msg() selected!\n");
    }

    return 0;
}