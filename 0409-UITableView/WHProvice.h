//
//  WHProvice.h
//  0409-UITableView
//
//  Created by Ibokan on 15/4/10.
//  Copyright (c) 2015年 focus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WHProvice : NSObject
@property (nonatomic,copy) NSString * header;
@property (nonatomic,strong) NSArray * cities;
@property (nonatomic,copy) NSString * footer;
+ (WHProvice *) proviceWithheader:(NSString *) header andcities:(NSArray *)citiex andfooter:(NSString *)footer;
@end
