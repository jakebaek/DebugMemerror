// assert.m -- make a false assertion, thereby dumping core

// gcc -g -Wall -o assert assert.m

#import <assert.h>  // for assert
#import <stdio.h>   // for printf
#import <string.h>  // for strlen
#import <stdlib.h>  // for EXIT_SUCCESS

void anotherFunction (const char *ook) {
    assert (strlen(ook) > 0);
    printf ("wheeee! Got string %s\n", ook);
}  // anotherFunction

void someFunction (const char *blah) {
    anotherFunction (blah);
}  // someFunction

int main (int argc, char *argv[]) {
    someFunction (argv[1]);
    return EXIT_SUCCESS;
}  // main
