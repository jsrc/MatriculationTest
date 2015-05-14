//
//  main.m
//  编程题1
//
//  Created by 周伟昕 on 15/5/12.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//
/*
 编程题1:用2种不同的思路编写函数来计算下面式子
 1 + 2 + 3 + 4 + ... + n (n >= 1)
 （PS:一共要编写2个函数，仅仅是在for\while\do while之间更换不算新的思路）
 */

#import <Foundation/Foundation.h>

#pragma mark 方法1:通过循环
int sumOfNumWithSel1(int n)
{
    //sum用来存储和。初始化为0
    int sum=0;
    //通过循环来计算和，当n为0时终止循环。
    while(n>0)
    {
        sum+=n;
        n--;
    }
    return sum;
}
#pragma mark 方法2:通过递归
int sumOfNumWithSel2(int n)
{
    //当n为1时，返回1，否则通过递归求出和
    return (n==1)?1: sumOfNumWithSel2(n-1)+n;
}

#pragma 主函数
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //调用方法并打印结果
        int num=20;
        NSLog(@"sum1:%d,sum2:%d",sumOfNumWithSel1(num),sumOfNumWithSel2(num));

        
    }
}