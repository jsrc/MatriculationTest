//
//  NSMutableArray+sortMutableArray.m
//  入学测试
//
//  Created by 周伟昕 on 15/5/12.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "NSMutableArray+sortMutableArray.h"

@implementation NSMutableArray (sortMutableArray)
//方法1:通过sortUsingSelector
-(void)sortWithNSNumerUsingSEL
{
    [self sortUsingSelector:@selector(compare:)];
    NSLog(@"%@",self);
}
//方法2:通过block
-(void)sortWithNSNumberUsingBlock
{
    [self sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];
    }];
    NSLog(@"%@",self);
}
@end
