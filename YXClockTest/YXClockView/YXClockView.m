//
//  YXClockView.m
//  YXClockTest
//
//  Created by ios on 2021/4/13.
//

#import "YXClockView.h"

@interface YXClockView () <CAAnimationDelegate>

@property (nonatomic, strong) UIImageView *imgV;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) CALayer *pointLayer;
@property (nonatomic, assign) CGFloat publicDegreeSeconds;
@property (nonatomic, strong) YXClockModel *model;

@end

@implementation YXClockView

- (instancetype)initWithFrame:(CGRect)frame model:(YXClockModel *)model {
    self = [super initWithFrame:frame];
    
    if (self) {
        self.model = model;
        [self initView];
    }
    return self;
}

#pragma mark - 关闭定时器
- (void)stopTimer {
    
    [_timer invalidate];
    _timer = nil;
}

#pragma mark - 时间流逝
- (void)timeChangeMethod {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *date = [calendar components:NSCalendarUnitSecond | NSCalendarUnitMinute | NSCalendarUnitHour  fromDate:[NSDate date]];
    NSInteger seconds = date.second;
    NSInteger minutes = date.minute;
    NSInteger hours = date.hour;
    
    CGFloat degreeSeconds = seconds *kDegreeSeconds;
    CGFloat degreeMinutes = minutes *kDegreeMinutes + seconds *kDegreeMinutesBySecond;
    CGFloat degreeHours = hours *kDegreeHours + minutes *kDegreeHoursByMinutes;
    
    _publicDegreeSeconds = kAngle2raditon(degreeSeconds - 1);
    if (self.model.type == YXClockModelGoTypeContinuous) {
        [self.secondsHand removeAnimationForKey:@"transform"];
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
        animation.duration = 1.f;
        animation.removedOnCompletion = NO;
        animation.delegate = self;
        animation.fromValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(_publicDegreeSeconds, 0, 0, 1)];
        animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(kAngle2raditon(degreeSeconds), 0, 0, 1)];
        [self.secondsHand addAnimation:animation forKey:@"transform"];
    }
    else {
        [self.secondsHand removeAnimationForKey:@"transform"];
        self.secondsHand.transform = CATransform3DMakeRotation(kAngle2raditon(degreeSeconds), 0, 0, 1);
    }
    self.minutesHand.transform = CATransform3DMakeRotation(kAngle2raditon(degreeMinutes), 0, 0, 1);
    self.hoursHand.transform = CATransform3DMakeRotation(kAngle2raditon(degreeHours), 0, 0, 1);
}

#pragma mark - <CAAnimationDelegate>
- (void)animationDidStart:(CAAnimation *)anim {
    
    self.secondsHand.transform = CATransform3DMakeRotation(_publicDegreeSeconds, 0, 0, 1);
}
- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    
    self.secondsHand.transform = CATransform3DMakeRotation(_publicDegreeSeconds, 0, 0, 1);
}

#pragma mark - setting
- (void)setModel:(YXClockModel *)model {
    
    _model = model;
    
    [self.imgV setImage:_model.clockBgImg];
    
    self.hoursHand.backgroundColor = _model.hoursDegreeColor.CGColor;
    self.hoursHand.bounds = CGRectMake(0, 0, _model.hoursDegreeWidth, kDegreeDiameter *0.5 - _model.hoursDegreeMargin);
    self.hoursHand.cornerRadius = _model.hoursDegreeCorner;
    
    self.minutesHand.backgroundColor = _model.minutesDegreeColor.CGColor;
    self.minutesHand.bounds = CGRectMake(0, 0, _model.minutesDegreeWidth, kDegreeDiameter *0.5 - _model.minutesDegreeMargin);
    self.minutesHand.cornerRadius = _model.minutesDegreeCorner;
    
    self.secondsHand.backgroundColor = _model.secondsDegreeColor.CGColor;
    self.secondsHand.bounds = CGRectMake(0, 0, _model.secondsDegreeWidth, kDegreeDiameter *0.5 - _model.secondsDegreeMargin);
    self.secondsHand.cornerRadius = _model.secondsDegreeCorner;
    
    self.pointLayer.backgroundColor = _model.centerDegreeColor.CGColor;
    self.pointLayer.bounds = CGRectMake(0, 0, _model.centerDegreeWidth, _model.centerDegreeWidth);
    self.pointLayer.cornerRadius = _model.centerDegreeCorner;
}

#pragma mark - 初始化视图
- (void)initView {
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timeChangeMethod) userInfo:nil repeats:YES];
//    [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    
    [self timeChangeMethod];
    self.pointLayer.hidden = NO;
}

#pragma mark - 懒加载
- (UIImageView *)imgV {
    
    if (!_imgV) {
        _imgV = [[UIImageView alloc] initWithFrame:self.bounds];
        _imgV.contentMode = UIViewContentModeScaleAspectFit;
        _imgV.backgroundColor = [UIColor clearColor];
        [self addSubview:_imgV];
    }
    return _imgV;
}
- (CALayer *)hoursHand {
    
    if (!_hoursHand) {
        _hoursHand = [CALayer layer];
        _hoursHand.backgroundColor = [UIColor blackColor].CGColor;
        _hoursHand.bounds = CGRectMake(0, 0, 4, kDegreeDiameter *0.5 - 40);
        _hoursHand.anchorPoint = CGPointMake(0.5, 1);
        _hoursHand.position = CGPointMake(kDegreeDiameter *0.5, kDegreeDiameter *0.5);
        _hoursHand.cornerRadius = 4;
        [self.imgV.layer addSublayer:_hoursHand];
    }
    return _hoursHand;
}
- (CALayer *)minutesHand {
    
    if (!_minutesHand) {
        _minutesHand = [CALayer layer];
        _minutesHand.bounds = CGRectMake(0, 0, 4, kDegreeDiameter *0.5 - 20);
        _minutesHand.backgroundColor = [UIColor blackColor].CGColor;
        _minutesHand.anchorPoint = CGPointMake(0.5, 1);
        _minutesHand.position = CGPointMake(kDegreeDiameter *0.5, kDegreeDiameter *0.5);
        _minutesHand.cornerRadius = 4;
        [self.imgV.layer addSublayer:_minutesHand];
    }
    return _minutesHand;
}
- (CALayer *)secondsHand {
    
    if (!_secondsHand) {
        _secondsHand = [CALayer layer];
        _secondsHand.bounds = CGRectMake(0, 0, 1.5, kDegreeDiameter *0.5 - 20);
        _secondsHand.backgroundColor = [UIColor redColor].CGColor;
        _secondsHand.anchorPoint = CGPointMake(0.5, 1);
        _secondsHand.position = CGPointMake(kDegreeDiameter *0.5, kDegreeDiameter *0.5);
        [self.imgV.layer addSublayer:_secondsHand];
    }
    return _secondsHand;
}
- (CALayer *)pointLayer {
    
    if (!_pointLayer) {
        _pointLayer = [CALayer layer];
        _pointLayer.bounds = CGRectMake(0, 0, 10, 10);
        _pointLayer.backgroundColor = [UIColor whiteColor].CGColor;
        _pointLayer.position = CGPointMake(kDegreeDiameter *0.5, kDegreeDiameter *0.5);
        _pointLayer.cornerRadius = 5;
        [self.imgV.layer addSublayer:_pointLayer];
    }
    return _pointLayer;
}

@end
