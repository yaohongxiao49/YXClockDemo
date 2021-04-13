//
//  ViewController.m
//  YXClockTest
//
//  Created by ios on 2021/4/13.
//

#import "ViewController.h"
#import "YXClockView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage *img = [UIImage imageNamed:@"YXClockImg"];
    
    YXClockModel *model = [[YXClockModel alloc] init];
    model.type = YXClockModelGoTypeContinuous;
    model.clockBgImg = img;
    
    model.hoursDegreeColor = [UIColor whiteColor];
    model.hoursDegreeCorner = 2;
    model.hoursDegreeWidth = 2;
    model.hoursDegreeMargin = 58;
    
    model.minutesDegreeColor = [UIColor whiteColor];
    model.minutesDegreeCorner = 1;
    model.minutesDegreeWidth = 1.5;
    model.minutesDegreeMargin = 38;
    
    model.secondsDegreeColor = [UIColor whiteColor];
    model.secondsDegreeCorner = 0;
    model.secondsDegreeWidth = 1;
    model.secondsDegreeMargin = 10;
    
    model.centerDegreeColor = [UIColor whiteColor];
    model.centerDegreeWidth = 10;
    model.centerDegreeCorner = 5;
    
    YXClockView *view = [[YXClockView alloc] initWithFrame:CGRectMake(0, 0, 175, 175) model:model];
    view.center = self.view.center;
    [self.view addSubview:view];
}

@end
