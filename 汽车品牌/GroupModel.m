//
//  GroupModel.m
//  汽车品牌
//
//  Created by 王为 on 17/2/28.
//  Copyright © 2017年 王为. All rights reserved.
//

#import "GroupModel.h"

@implementation GroupModel

-(instancetype)initWithDict:(NSDictionary *)dict{
    if(self == [super init]){
        [self setValuesForKeysWithDictionary:dict];
        
        NSMutableArray *array = [NSMutableArray array];
        
        for(NSDictionary * carDict in dict[@"cars"]){
            CarModel *carModel = [[CarModel alloc]initWithDict:carDict];
            [array addObject:carModel];
        }
        
        self.cars = array;
        
    }
    return self;
}

+(instancetype)GroupWithDict:(NSDictionary *)dict{
    return [[GroupModel alloc]initWithDict:dict];
}

@end
