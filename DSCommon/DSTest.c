//
//  DSTest.c
//  DSCommon
//
//  Created by Sincere on 16/9/21.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#include "DSTest.h"

extern int foo(void* self){
    printf("self:%p",self);
    
    return  0;
}