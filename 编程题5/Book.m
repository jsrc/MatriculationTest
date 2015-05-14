//
//  Book.m
//  入学测试
//
//  Created by 周伟昕 on 15/5/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "Book.h"

@implementation Book
//类的构造方法
+(instancetype)bookWithName:(NSString *)name AndYear:(int)year AndPrice:(float)price
{
    return [[Book alloc] initWithName:name AndYear:year AndPrice:price];
}
//对象的构造方法
-(instancetype)initWithName:(NSString *)name AndYear:(int)year AndPrice:(float)price
{
    if(self=[super init])
    {
        _bookName=name;
        _year=year;
        _price=price;
    }
    return self;
}
//重写description，使得按照格式要求输出
-(NSString *)description
{
    return [NSString stringWithFormat:@"这本书叫做%@,价格是%d,出版的年份是%.2f",_bookName,_year,_price];
}

@end
