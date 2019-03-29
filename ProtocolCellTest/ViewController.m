//
//  ViewController.m
//  ProtocolCellTest
//
//  Created by Klaus on 2019/3/29.
//  Copyright © 2019年 Klaus. All rights reserved.
//

#import "ViewController.h"
#import "KTModel.h"
#import "ModuleACellConfigHelper.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic) UITableView *tableView;
@property (nonatomic) NSMutableArray<KTModel *> * dataArr;
@end

@implementation ViewController

#pragma mark - lift cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    
    [self loadData];
    
    
    
}

- (void)viewDidLayoutSubviews {
    self.tableView.frame = self.view.bounds;
}



#pragma mark - delegate
#pragma mark UITableViewDelegate,UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    KTModel *model = self.dataArr[indexPath.row];
    
    NSString * cellID = model.identifier;
    UITableViewCell<ModuleACellConfigPropotol> * cell= [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if ([cell respondsToSelector:@selector(configCellWithModel:)]) {
        [cell configCellWithModel:model];
    }
    
    return cell;
}


#pragma mark- networking
- (void)loadData {
    for (int i = 0; i<40; i++) {
        int x = arc4random() % (3 - 0 + 1) + 0;
        KTModel *model = [KTModel new];
        model.title = [NSString stringWithFormat:@"第 %d 个 cell",i];
        
        NSString *cellID = [NSString stringWithFormat:@"cellID_0%d",x];
        model.identifier = cellID;
      
        [self.dataArr addObject:model];
    }
    [self.tableView reloadData];
}



#pragma mark - setter && getter
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        for (int i = 0; i<4; i++) {
            NSString *cellID = [NSString stringWithFormat:@"cellID_0%d",i];
            NSString *cellClass = [NSString stringWithFormat:@"KTTableViewCell0%d",i];
            [_tableView registerClass:NSClassFromString(cellClass) forCellReuseIdentifier:cellID];
        }
    }
    return _tableView;
}

- (NSMutableArray<KTModel *> *)dataArr {
    if (!_dataArr) {
        _dataArr = [NSMutableArray new];
    }
    return _dataArr;
}


@end
