//
//  CarModel.m
//  汽车品牌
//
//  Created by 王为 on 17/2/28.
//  Copyright © 2017年 王为. All rights reserved.
//

#import "CarModel.h"

@implementation CarModel

-(instancetype)initWithDict:(NSDictionary *)dict{
    if(self == [super init]){
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

+(instancetype)carWithDict:(NSDictionary *)dict{
    return [[CarModel alloc]initWithDict:dict];
}

@end
