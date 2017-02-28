//
//  ViewController.m
//  一级选择器
//
//  Created by apple on 17/2/21.
//  Copyright © 2017年 于亚会. All rights reserved.
//

#import "ViewController.h"
#import "LXKColorChoice.h"

@interface ViewController ()<LXKColorChoiceDelegate>

@property(nonatomic,strong)NSArray *bankArr;
@property(nonatomic,strong)LXKColorChoice *colorDatePickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(ceshisssss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.bankArr = [NSArray arrayWithObjects:@"中国银行",@"中国工商银行",@"中国农业银行",@"中国民生银行",@"中信银行",@"中国光大银行",@"中国建设银行",@"中国邮政",@"北京农村商业银行",@"北京银行",@"渤海银行",@"东亚银行",@"广发银行",@"杭州银行",@"河北银行",@"华夏银行",@"交通银行",@"南京银行",@"南洋商业银行",@"宁波银行",@"平安银行",@"上海银行",@"上海农商银行",@"上海浦东发展银行",@"深圳发展银行",@"兴业银行",@"招商银行",@"浙江秦隆商业银行",@"浙商银行", nil];
}

- (void)ceshisssss
{
    self.colorDatePickerView = [LXKColorChoice makeViewWithMaskDatePicker:self.view.frame setTitle:@"选择银行" Arr:self.bankArr];
    self.colorDatePickerView.delegate = self;
}

#pragma mark == 颜色代理方法
-(void)getColorChoiceValues:(NSString *)values
{
    NSLog(@"-------%@",values);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
