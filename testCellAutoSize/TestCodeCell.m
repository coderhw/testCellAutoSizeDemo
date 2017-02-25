//
//  testCodeCell.m
//  testCellAutoSize
//
//  Created by Evan on 2017/2/16.
//  Copyright © 2017年 vanke. All rights reserved.
//

#import "TestCodeCell.h"
#import "TestBookModel.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#define kDarkGrayColor [UIColor colorWithHex:@"#333333"]
#define kGrayColor [UIColor colorWithHex:@"#999999"]
#define kLightGreenColor [UIColor colorWithHex:@"#17AF7B"]
#define kLineColor [UIColor colorWithHex:@"#e0e0e0"]



#define kTextFont   [UIFont systemFontOfSize:16]


@interface TestCodeCell ()

@property (nonatomic, strong) UIImageView *iconView;

@property (nonatomic, strong) UILabel *textView;

@end

@implementation TestCodeCell



- (UIImageView *)iconView {
    
    if (_iconView == nil) {
        
        _iconView = [[UIImageView alloc] init];
        [self.contentView addSubview:_iconView];
    }
    return _iconView;
}

- (UILabel *)textView {
    
    if (_textView == nil) {
        
        _textView = [[UILabel alloc] init];
        _textView.font = kTextFont;
        _textView.numberOfLines = 0;
        [self.contentView addSubview:_textView];
    }
    return _textView;
}


- (void)setBookFrame:(TestBookFrame *)bookFrame {
    
    _bookFrame = bookFrame;
    
    //  设置数据
    [self settingData];
    
    
    // 设置Frame
    [self settingFrame];
    
}


- (void)settingData {
    
    TestBookModel *bookModel = self.bookFrame.bookModel;
    
    self.iconView.image = [UIImage imageNamed:bookModel.imageName];
    self.textView.text = bookModel.bookContent;
    
}

- (void)settingFrame {
    
    self.iconView.frame = _bookFrame.avatorF;
    
    self.textView.frame = _bookFrame.contentF;
    
}










@end
