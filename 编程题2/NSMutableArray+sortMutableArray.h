//
//  NSMutableArray+sortMutableArray.h
//  入学测试
//
//  Created by 周伟昕 on 15/5/12.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (sortMutableArray)
//方法1:通过sortedArrayUsingSelector
-(void)sortWithNSNumerUsingSEL;
//方法2:通过block
-(void)sortWithNSNumberUsingBlock;
@end
