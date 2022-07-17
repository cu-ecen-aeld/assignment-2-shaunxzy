/**
* A simple file to validate your automated test setup for AESD
*/

#include "autotest-validate.h"
#include <stdbool.h>
#include "stdlib.h"

/**
* @return true (as you may have guessed from the name)
*/
bool this_function_returns_true()
{
    return true;
}

/**
* @return false (as you may have guessed from the name)
*/
bool this_function_returns_false()
{
    return false;
}

/**
 * @return a string which contains the username you use for
 * git submissions.  This string should match the string in conf/username.txt
 */
const char *my_username()
{
	FILE* fp;


	fp = fopen("/home/shaunxu/UIUC/linux-programming/assignment-1-shaunxzy/finder-app/conf/username.txt",
            "r");

	int size;

    fseek(fp, 0L, SEEK_END);
    size = (int) ftell(fp);

    fclose(fp);

    fp = fopen("/home/shaunxu/UIUC/linux-programming/assignment-1-shaunxzy/finder-app/conf/username.txt",
               "r");

    char buff[size];
    const char* reading;

	fgets(buff, size, fp);

	reading = buff;

    return reading;
}
