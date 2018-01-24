#include <iostream>
#include <random.cpp>
#include <boost/thread.hpp>
#include <boost.cpp>

using namespace fyx;
using namespace std;

int main(int argc, char **argv) {
    cout << Randomize<10>::generate() << endl;
    Boost bst;
    bst.run(); 
    bst.fileOP("/home/fyx/1.zip");
    while(true)
    {
      usleep(1000);
    }
    return 0;
}
