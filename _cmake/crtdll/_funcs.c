#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <io.h>

int write(int fd, const void* buffer, unsigned int count)
{
    return _write(fd, buffer, count);
}

unsigned long _beginthreadex
    (void* sec, unsigned stk, unsigned (__stdcall* start)(void*), void* arg, unsigned f, unsigned* pId)
{
    DWORD id = 0;
    HANDLE hThread = CreateThread(sec, stk, (LPTHREAD_START_ROUTINE)start, arg, f, &id);
    *pId = (unsigned)id;
    return (unsigned long)hThread;
}

void _endthreadex(unsigned retval)
{
    ExitThread(retval);
}
