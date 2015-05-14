//
//  main.m
//  编程题4
//
//  Created by 周伟昕 on 15/5/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//
/*
 编程题4:使用Category给NSString类增加以下功能(需要用到的方法自己查资料或者猜)
 1> 计算英文字母的个数(比如@"324fdsfk656HF99Jp"调用方法后返回的是9)
 2> 字符串反转(比如@"abc"调用方法后返回@"cba")
 3> 去除字符串两端空格（比如@"  jack rose "调用方法后返回@"jack rose"）
 4> 截取网站域名中www.和.com之间的字符串（比如@"http://www.baidu.com"调用方法返回@"baidu"）
 */
#import <Foundation/Foundation.h>
#import "NSString+otherSelectorOfString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1:计算英文字母个数
        int a=[@"4AAAXXXSSS1234 55za za zaza" countOFletters];
        NSLog(@"英文字母个数为：%d",a);
     
        //2:字符串反转
        NSString *str=@"  asd 123asd  ";
        NSLog(@"反转后：%@",[str rollBackString]);
        //3:除去字符串两端空格
        NSString * str1=@"     az x c   ";
        NSLog(@"去空格后的字符串为:%@,---",[str1 removeBlank]);
        //4:截取网站域名中的字符串
        NSString *str2=@"http://www.baidu.com";
        NSLog(@"%@",[str2 getSubArray]);
        
    }

    return 0;
}
