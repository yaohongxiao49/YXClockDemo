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
    _model.typeChain(YXClockModelGoTypeContinuous).clockBgImgChain(img)
    .hoursDegreeColorChain([UIColor whiteColor]).hoursDegreeCornerChain(2).hoursDegreeWidthChain(2).hoursDegreeMarginChain(60)
    .minutesDegreeColorChain([UIColor whiteColor]).minutesDegreeCornerChain(1).minutesDegreeWidthChain(1.5).minutesDegreeMarginChain(40)
    .secondsDegreeColorChain([UIColor whiteColor]).secondsDegreeCornerChain(0).secondsDegreeWidthChain(1).secondsDegreeMarginChain(24)
    .centerDegreeColorChain([UIColor whiteColor]).centerDegreeWidthChain(10).centerDegreeCornerChain(5);
    
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
