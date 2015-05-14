//
//  NSArray+descriptionSEL.m
//  入学测试
//
//  Created by 周伟昕 on 15/5/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "NSArray+descriptionSEL.h"

@implementation NSArray (descriptionSEL)
//重写数组的舒服方法 
-(NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *str=[NSMutableString stringWithString:@"\n"];
    for(id obj in self)
    {
        [str appendFormat:@"%@\n",obj];
    }
         return str;
}

@end
