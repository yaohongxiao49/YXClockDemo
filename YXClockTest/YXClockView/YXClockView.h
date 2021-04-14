//
//  YXClockView.h
//  YXClockTest
//
//  Created by ios on 2021/4/13.
//

#import <UIKit/UIKit.h>
#import "YXClockModel.h"

NS_ASSUME_NONNULL_BEGIN

#define kDegreeDiameter CGRectGetWidth(self.imgV.bounds)
 
/** 一秒钟秒针转动度数 */
#define kDegreeSeconds 6
/** 一分钟分针转动度数 */
#define kDegreeMinutes 6
/** 一小时时针转动度数 */
#define kDegreeHours 30
/** 每秒钟分针转动度数 */
#define kDegreeMinutesBySecond 0.1
/** 每分钟时针转动度数 */
#define kDegreeHoursByMinutes 0.5
/** 角度 */
#define kAngle2raditon(degree) ((degree) /180.0 *M_PI)

@class YXClockView;
@interface YXClockView : UIView

/** 秒针 */
@property(nonatomic, strong) CALayer *secondsHand;
/** 分针 */
@property(nonatomic, strong) CALayer *minutesHand;
/** 时针 */
@property(nonatomic, strong) CALayer *hoursHand;

@property (nonatomic, strong) YXClockModel *model;

- (instancetype)initWithFrame:(CGRect)frame model:(YXClockModel *)model;
/** 关闭定时器 */
- (void)stopTimer;

@end

NS_ASSUME_NONNULL_END
