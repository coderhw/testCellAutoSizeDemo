//
//  testCodeCellFrameModel.h
//  testCellAutoSize
//
//  Created by Evan on 2017/2/16.
//  Copyright © 2017年 vanke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TestBookModel.h"

@interface TestBookFrame : NSObject


@property (nonatomic, assign) CGRect avatorF;

@property (nonatomic, assign) CGRect contentF;

@property (nonatomic, assign, readonly) CGFloat cellHeight;

@property (nonatomic, strong) TestBookModel *bookModel;


//传入数据源
+ (TestBookFrame *)bookModelFrame;

@end
