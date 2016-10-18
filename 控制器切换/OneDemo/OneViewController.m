//
//  OneViewController.m
//  OneDemo
//
//  Created by 大地 on 16/10/15.
//  Copyright © 2016年 大地. All rights reserved.
//

#import "OneViewController.h"
#import "DLTabedSlideView.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface OneViewController ()<DLTabedSlideViewDelegate>
@property (weak, nonatomic) IBOutlet DLTabedSlideView *slideView;

@property (nonatomic, strong) TwoViewController *ctrl1;

@property (nonatomic, strong) ThreeViewController *ctrl2;

@property (nonatomic, strong) NSMutableArray *ctrls;

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    self.view.backgroundColor = [UIColor yellowColor];
//    UIButton *btn = [[UIButton alloc] init];
//    
//    btn.frame = CGRectMake(0, 0, 100, 100);
//    
////    btn.backgroundColor = [UIColor redColor];
//    
//    [self.view addSubview:btn];
    
    [self initSlideView];
    
    
    _slideView.selectedIndex = _index;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    _slideView.selectedIndex = _index;
}

- (void)initSlideView
{
    self.ctrls = [NSMutableArray array];
    
    self.ctrl1 = [[TwoViewController alloc] init];
    [_ctrls addObject:_ctrl1];
    self.ctrl2 = [[ThreeViewController alloc] init];
    [_ctrls addObject:_ctrl2];
    
    _slideView.baseViewController = self;
    _slideView.backgroundColor = [UIColor whiteColor];
    _slideView.tabItemNormalColor = [UIColor blackColor];
    _slideView.tabItemSelectedColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    _slideView.tabbarTrackColor = [UIColor colorWithRed:0.083 green:0.052 blue:0.130 alpha:1.000];
    
    _slideView.tabbarBackgroundImage = [UIImage imageNamed:@"slideTabbarBk"];
    _slideView.tabbarBottomSpacing = .0;
    
    DLTabedbarItem *item1 = [DLTabedbarItem itemWithTitle:@"哈哈"image:nil selectedImage:nil];
    DLTabedbarItem *item2 = [DLTabedbarItem itemWithTitle:@"呵呵" image:nil selectedImage:nil];
    _slideView.tabbarItems = @[item1,item2];
    [_slideView buildTabbar];
    
}

- (NSInteger)numberOfTabsInDLTabedSlideView:(DLTabedSlideView *)sender
{
    return 2;
}

- (UIViewController *)DLTabedSlideView:(DLTabedSlideView *)sender controllerAt:(NSInteger)index
{
    UIViewController *ctrl = [_ctrls objectAtIndex:index];
    return ctrl;
}

- (void)DLTabedSlideView:(DLTabedSlideView *)sender didSelectedAt:(NSInteger)index
{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
