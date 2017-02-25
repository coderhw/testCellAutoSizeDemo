//
//  testBookModel.h
//  testCellAutoSize
//
//  Created by Evan on 2017/2/16.
//  Copyright © 2017年 vanke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestBookModel : NSObject

@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, copy) NSString *bookContent;


- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)bookModelWithDict:(NSDictionary *)dict;


@end
