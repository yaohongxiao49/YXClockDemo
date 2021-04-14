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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage *img = [UIImage imageNamed:@"YXClockImg"];
    
    _model = [[YXClockModel alloc] init];
    _model.type = YXClockModelGoTypeContinuous;
    _model.clockBgImg = img;
    
    _model.hoursDegreeColor = [UIColor whiteColor];
    _model.hoursDegreeCorner = 2;
    _model.hoursDegreeWidth = 2;
    _model.hoursDegreeMargin = 58;
    
    _model.minutesDegreeColor = [UIColor whiteColor];
    _model.minutesDegreeCorner = 1;
    _model.minutesDegreeWidth = 1.5;
    _model.minutesDegreeMargin = 38;
    
    _model.secondsDegreeColor = [UIColor whiteColor];
    _model.secondsDegreeCorner = 0;
    _model.secondsDegreeWidth = 1;
    _model.secondsDegreeMargin = 10;
    
    _model.centerDegreeColor = [UIColor whiteColor];
    _model.centerDegreeWidth = 10;
    _model.centerDegreeCorner = 5;
    
    _clockView = [[YXClockView alloc] initWithFrame:CGRectMake(0, 0, 175, 175) model:_model];
    _clockView.center = self.view.center;
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
