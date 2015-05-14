//
//  main.m
//  编程题3
//
//  Created by 周伟昕 on 15/5/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//
/*
 编程题3:3.使用Category给所有OC对象增加一个run方法（对象方法），然后在run方法中NSLog打印对象本身
 */

#import <Foundation/Foundation.h>
#import "NSObject+runSEL.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1:创建对象
        NSString *str=@"abc";
        //2:调用方法
        [str run];
            }
    return 0;
}
