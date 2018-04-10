//
//  ViewController.m
//  LLWPlusPopViewDemo
//
//  Created by Eleven on 2018/4/10.
//  Copyright © 2018年 TGF. All rights reserved.
//

#import "ViewController.h"
#import "LLWPlusPopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = HexColorInt32_t(f8f8f8);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.center = self.view.center;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}


- (void)click {
    NSMutableArray *imgs = @[].mutableCopy;
    for (NSInteger i = 0; i < 7; i ++) {
        [imgs addObject:[NSString stringWithFormat:@"publish_%zi", i]];
    }
    NSArray *titles = @[@"文字", @"图片", @"视频", @"语言", @"投票", @"签到",  @"文字",];
    [LLWPlusPopView showWithImages:imgs titles:titles selectBlock:^(NSInteger index) {
        NSLog(@"index:%zi", index);
    }];
}


@end
