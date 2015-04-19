//
//  WHProvice.m
//  0409-UITableView
//
//  Created by Ibokan on 15/4/10.
//  Copyright (c) 2015年 focus. All rights reserved.
//

#import "WHProvice.h"

@implementation WHProvice
+ (WHProvice *)proviceWithheader:(NSString *)header andcities:(NSArray *)cities andfooter:(NSString *)footer{
    WHProvice * provice = [[WHProvice alloc] init];
    provice.header = header;
    provice.cities = cities;
    provice.footer = footer;
    return provice;
}
@end
