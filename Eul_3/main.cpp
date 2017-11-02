//
//  main.cpp
//  Eul_3
//
//  Created by Petros on 01/11/2017.

#include "class.hpp"

int main()
{
    Rectangle* box = new Rectangle(2,4);
    box->set_length(5);
    box->set_width(2);
    std::cout << box->get_area() << std::endl;
    std::cout << box->get_length();
    std::cout << "\nExit" << std::endl;
    delete box;
    return(0);
}
