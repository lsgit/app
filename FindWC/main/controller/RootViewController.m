//
//  RootViewController.m
//  FindWC
//
//  Created by liushuai on 14/11/13.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "RootViewController.h"
#import "IOANTLayoutSize.h"
@interface RootViewController ()
@property(nonatomic,strong)UIButton *findButton;
@property(nonatomic,strong)UIButton *gameButton;
@property(nonatomic,strong)UIView *backgroudView;
@end

@implementation RootViewController
-(void)dealloc
{
    _findButton = nil;
    _gameButton = nil;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setSubViews];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setSubViews
{
    self.backgroudView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(WIDTH(_backgroudView)/2-SCREEN_HEIGHT/4, HEIGHT(_backgroudView)/2-SCREEN_HEIGHT/4, SCREEN_HEIGHT/2, SCREEN_HEIGHT/2)];
    imageView.image = [UIImage imageNamed:@"thinker"];
    [_backgroudView addSubview:imageView];
    [self.view addSubview:self.backgroudView];
    CGFloat height = HEIGHT(_backgroudView) - (FRAME_Y(imageView)+HEIGHT(imageView));
    _findButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _findButton.frame = CGRectMake(SCREEN_WIDTH/2-height+10, (FRAME_Y(imageView)+HEIGHT(imageView)), height-10, height-10);
    [_findButton setTitle:@"寻找" forState:UIControlStateNormal];
    [_findButton setBackgroundColor:[UIColor blueColor]];
    [_backgroudView addSubview:_findButton];
    _gameButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _gameButton.frame = CGRectMake(FRAME_X(_findButton)+WIDTH(_findButton)+10, (FRAME_Y(imageView)+HEIGHT(imageView)), height-10, height-10);
    [_gameButton setTitle:@"厕游" forState:UIControlStateNormal];
    [_gameButton setBackgroundColor:[UIColor redColor]];
    [_backgroudView addSubview:_gameButton];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
