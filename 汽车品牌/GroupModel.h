//
//  GroupModel.h
//  汽车品牌
//
//  Created by 王为 on 17/2/28.
//  Copyright © 2017年 王为. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarModel.h"

@interface GroupModel : NSObject

@property (nonatomic, copy)NSString *title;
@property (nonatomic, strong)NSArray *cars;

-(instancetype) initWithDict:(NSDictionary *)dict;
+(instancetype) GroupWithDict:(NSDictionary *)dict;

@end
