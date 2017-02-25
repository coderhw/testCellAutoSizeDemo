//
//  ViewController.m
//  testCellAutoSize
//
//  Created by Evan on 2017/2/16.
//  Copyright © 2017年 vanke. All rights reserved.
//

#import "ViewController.h"
#import "testXibCell.h"
#import "testCodeCell.h"
#import "TestBookFrame.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong)TestBookFrame *bookFrame;

@property (nonatomic, strong)NSMutableArray *dataSources;

@end

@implementation ViewController

- (NSMutableArray *)dataSources
{
    if (_dataSources == nil) {
        _dataSources = [[NSMutableArray alloc] init];
    }
    return _dataSources;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    _bookFrame = [TestBookFrame bookModelFrame];
    [self.dataSources addObject:_bookFrame];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataSources.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellId = @"cellId";
    TestCodeCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(cell == nil){
        cell = [[TestCodeCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    TestBookFrame *bookFrmae = (TestBookFrame *)self.dataSources[indexPath.row];
    cell.bookFrame = bookFrmae;
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TestBookFrame *bookFrmae = (TestBookFrame *)self.dataSources[indexPath.row];
    
    return bookFrmae.cellHeight;
}




@end
