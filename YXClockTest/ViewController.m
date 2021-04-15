//
//  ViewController.m
//  YXClockTest
//
//  Created by ios on 2021/4/13.
//

#import "ViewController.h"
#import "YXClockView.h"

@interface ViewController ()

@property (nonatomic, strong) YXClockView *clockView;
@property (nonatomic, strong) YXClockModel *model;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blackColor];
    
    UIImage *img = [UIImage imageNamed:@"YXWhiteClockImg"];
    
    _model = [[YXClockModel alloc] init];
    _model.typeChain(YXClockModelGoTypeContinuous).clockBgImgChain(img)
    .hoursDegreeColorChain([UIColor whiteColor]).hoursDegreeCornerChain(4).hoursDegreeWidthChain(2).hoursDegreeMarginChain(60)
    .minutesDegreeColorChain([UIColor whiteColor]).minutesDegreeCornerChain(3).minutesDegreeWidthChain(1.5).minutesDegreeMarginChain(55)
    .secondsDegreeColorChain([UIColor whiteColor]).secondsDegreeCornerChain(1).secondsDegreeWidthChain(0.5).secondsDegreeMarginChain(50)
    .centerDegreeColorChain([UIColor whiteColor]).centerDegreeWidthChain(10).centerDegreeCornerChain(5);
    
    _clockView = [[YXClockView alloc] initWithFrame:CGRectMake(0, 0, 175, 175) model:_model];
    _clockView.center = self.view.center;
    _clockView.yxClockViewTimeBlock = ^(CGFloat hours, CGFloat minutes, CGFloat seconds) {
      
        NSString *hoursShow = hours < 10 ? [NSString stringWithFormat:@"0%@", @(hours)] : [NSString stringWithFormat:@"%@", @(hours)];
        NSString *minutesShow = minutes < 10 ? [NSString stringWithFormat:@"0%@", @(minutes)] : [NSString stringWithFormat:@"%@", @(minutes)];
        NSString *secondsShow = seconds < 10 ? [NSString stringWithFormat:@"0%@", @(seconds)] : [NSString stringWithFormat:@"%@", @(seconds)];
        NSLog(@"当前时间 == %@:%@:%@", hoursShow, minutesShow, secondsShow);
    };
    [self.view addSubview:_clockView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if (_model.type == YXClockModelGoTypeDiscontinuous) {
        _model.type = YXClockModelGoTypeContinuous;
    }
    else {
        _model.type = YXClockModelGoTypeDiscontinuous;
    }
    _clockView.model = _model;
}

@end
