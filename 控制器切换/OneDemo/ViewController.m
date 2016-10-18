//
//  ViewController.m
//  OneDemo
//
//  Created by 大地 on 16/10/15.
//  Copyright © 2016年 大地. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView1;

@property (nonatomic, strong) NSMutableArray *mutableArray;

@end

@implementation ViewController

- (NSMutableArray *)mutableArray
{
    if (_mutableArray == nil) {
        _mutableArray = [[NSMutableArray alloc] init];
    }
    
    return _mutableArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self dataForTableView];
    
    
}

- (void)dataForTableView
{
    
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    
    cell.detailTextLabel.text = @"我是";
    cell.textLabel.text = @"中国人";
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
