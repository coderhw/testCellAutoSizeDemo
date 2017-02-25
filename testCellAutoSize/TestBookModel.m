
//
//  testBookModel.m
//  testCellAutoSize
//
//  Created by Evan on 2017/2/16.
//  Copyright © 2017年 vanke. All rights reserved.
//

#import "TestBookModel.h"

@implementation TestBookModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)bookModelWithDict:(NSDictionary *)dict {
    
    return [[self alloc] initWithDict:dict];
}


@end
