// Each new term in the Fibonacci sequence is generated by adding the previous two terms.
//By starting with 1 and 2, the first 10 terms will be:

//1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

//By considering the terms in the Fibonacci sequence whose values do not exceed four million,
//find the sum of the even-valued terms

#include "headers/eul_2_facilities.h"
#include <numeric>

int main ( int argc, char** argv ) {
    vector<int> v{0, 1, 1};
    int sum;

    do{
        vector<int>::iterator last = (end(v) - 1);
        vector<int>::iterator preLast = (end(v) - 2);
        sum = (*preLast) + (*last);
        v.push_back(sum);

    }while(sum < 4000000);

    for (auto &elem : v){
        cout << elem << '\n';
    }
    cout << "Sum before removing the odds is :" << sum << '\n';

    // Remove every odd number
    // Could use auto rmv,  but anyway
    vector<int>::iterator rmv;
    rmv = remove_if(begin(v), end(v), [](int x){return (x % 2);});
    v.erase(rmv, end(v));

    for(auto &elem : v){
        cout << elem << endl;
    }

    sum = accumulate(begin(v), end(v), 0);
    cout << "Sum after removing the odds is : " << sum << '\n';
    return ( 0 );
}