//
//  main.m
//  编程题2
//
//  Created by 周伟昕 on 15/5/12.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//
/*
 编程题2:2.使用Category给某类（哪个类自己思考）增加一个方法，用来完成一下功能：假设一个OC可变数组数组存放着很多整数字符串，比如@"10"、@"20"。要求调用完这个方法后，这个数组里面是数字字符串是升序排列的（从小到大排列）
 */

#import <Foundation/Foundation.h>
#import "NSMutableArray+sortMutableArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *array=[NSMutableArray arrayWithObjects:@2,@4,@3,@5,@19,@3,@2, nil];
        NSMutableArray *array1=[NSMutableArray arrayWithObjects:@2,@4,@47,@25,@19,@34,@2, nil];

        //方法1:通过sortedArrayUsingSelector:排序
        [array sortWithNSNumerUsingSEL];
        //方法2:通过block
        [array1 sortWithNSNumberUsingBlock];
    }
    return 0;
}
