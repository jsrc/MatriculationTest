//
//  NSString+otherSelectorOfString.m
//  入学测试
//
//  Created by 周伟昕 on 15/5/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "NSString+otherSelectorOfString.h"

@implementation NSString (otherSelectorOfString)
#pragma mark 计算字母个数
-(int)countOFletters
{
    //1:先把字符串中的字母都转换为大写，将新的字符串存放在临时字符串temStr中
    NSString *tempStr=[self uppercaseString];
    //2:对temStr进行遍历，统计字母个数。定义计数器并初始化为0.
    int count=0;
    for(int i=0;i<tempStr.length;i++)
    {
        //2.1:获取当前字母
        unichar tempChar=[tempStr characterAtIndex:i];
        //2.2:对当前字母进行判断
        if(tempChar>='A' && tempChar<='Z')
        {
            //2.3:若在范围内，计数器＋1。
            count++;
        }
    }
    return count;
    
}

#pragma mark 反转字符串
-(NSString *)rollBackString
{
    //创建一个动态字符串
    NSMutableString *str=[NSMutableString string];
    //对字符串从后往前进行遍历，将字符一个一个取出。然后按顺序插入到动态字符串中
    for(NSUInteger i=self.length;i>0;i--)
    {
        unichar a=[self characterAtIndex:i-1];
        [str appendFormat:@"%c",a];
    }
    //如果直接返回str，那么实际上返回的是NSMutableString。
    //假设 NSString * str1 用来接收返回的str;
    //如果有动态字符串指向str1(NSMutableString * mutableStr=str1)
    //那么当mutableStr的值发生改变时，str1的值也会跟着改变。
    //所以这里返回一个新的NSString.
    return [NSString stringWithString:str];
}
#pragma mark 删除两端空白
-(NSString *)removeBlank
{
    return[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}
#pragma mark 截取网站域名中的字符串
-(NSString *)getSubArray
{
    //定义http://www.前端的长度
    int location=11;
    //定义要截取的字符串的长度。
    int length=self.length -15;
    NSRange range={location,length};
    return [self substringWithRange:range];
}
@end
