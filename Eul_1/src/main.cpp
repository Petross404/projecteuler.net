// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
//The sum of these multiples is 23.
//Find the sum of all the multiples of 3 or 5 below 1000.

#include "eul_1_facilities.h"
#include <numeric>

int main ( int argc, char** argv ) {

    vector<int> v;

    for(auto i{0}; i < 1000; ++i) {
        if (!(i % 3) || !(i % 5)){
            v.push_back(i);
        }
    }

    for (auto &elem : v){
        cout << elem << endl;
    }

    auto summary = accumulate(begin(v), end(v), 0);
    cout << "Sum = " << summary;

    return ( 0 );
}