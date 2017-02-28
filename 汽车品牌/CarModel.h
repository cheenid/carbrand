//
//  CarModel.h
//  汽车品牌
//
//  Created by 王为 on 17/2/28.
//  Copyright © 2017年 王为. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarModel : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *icon;

-(instancetype) initWithDict:(NSDictionary *)dict;
+(instancetype) carWithDict:(NSDictionary *)dict;

@end
