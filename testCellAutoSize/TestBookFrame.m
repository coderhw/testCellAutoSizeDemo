//
//  testCodeCellFrameModel.m
//  testCellAutoSize
//
//  Created by Evan on 2017/2/16.
//  Copyright © 2017年 vanke. All rights reserved.
//

#import "TestBookFrame.h"
#import "TestBookModel.h"
#import "NSString+ContentSize.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#define kView_W(View) (View.frame.origin.x + View.bounds.size.width)
#define kView_H(View) (View.frame.origin.y + View.bounds.size.height)

#define kViewW(View) View.bounds.size.width
#define kViewH(View) View.bounds.size.height


/** 正文字体 */
#define kTextFont   [UIFont systemFontOfSize:18]


@implementation TestBookFrame

- (void)setBookModel:(TestBookModel *)bookModel {
    
    CGFloat padding = 10;

    
    _bookModel = bookModel;
    CGFloat iconX = padding;
    CGFloat iconY = padding;
    
    CGFloat iconW = 60;
    CGFloat iconH = 60;
    
    _avatorF = CGRectMake(iconX, iconY, iconW, iconH);
    
    NSDictionary *contentDict = @{NSFontAttributeName: kTextFont};
    CGRect contentFrame =
    [self.bookModel.bookContent textRectWithSize:CGSizeMake(kScreenWidth-iconW-10-10-10, MAXFLOAT) attributes:contentDict];
    
    contentFrame.origin.x = CGRectGetMaxX(self.avatorF) + padding;
    contentFrame.origin.y = iconY;
    _contentF = contentFrame;
    _cellHeight = contentFrame.size.height;
    
    _cellHeight = (_cellHeight > iconX) ? _cellHeight+5 : iconX;
    _cellHeight += 10;
    
}

+ (TestBookFrame *)bookModelFrame {
    
    NSDictionary *dic1 = @{@"imageName":@"123",@"bookName":@"百年孤独", @"bookContent":@"百年孤独》，是哥伦比亚作家加西亚·马尔克斯的代表作，也是拉丁美洲魔幻现实主义文学的代表作，被誉为“再现拉丁美洲历史社会图景的鸿篇巨著”。"};
    
    NSDictionary *dic2 = @{@"imageName":@"123", @"bookName":@"红楼梦", @"bookContent":@"红楼梦》，中国古典四大名著之首，清代作家曹雪芹创作的章回体长篇小说，又名《石头记》《金玉缘》。此书分为120回“程本”和80回“脂本”两种版本系统。"};
    
    TestBookFrame *bookFrame = [[TestBookFrame alloc] init];
    TestBookModel *bookModel = [TestBookModel bookModelWithDict:dic1];
    bookFrame.bookModel = bookModel;
    return bookFrame;
}

@end
