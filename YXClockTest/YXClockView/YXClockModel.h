//
//  YXClockModel.h
//  YXClockTest
//
//  Created by ios on 2021/4/13.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/** 秒针走动模式枚举 */
typedef NS_ENUM(NSUInteger, YXClockModelGoType) {
    /** 间断 */
    YXClockModelGoTypeDiscontinuous,
    /** 连续 */
    YXClockModelGoTypeContinuous,
};

@interface YXClockModel : NSObject

#pragma mark - 基础信息
/** 背景图 */
@property (nonatomic, strong) UIImage *clockBgImg;
/** 秒针走动模式 */
@property (nonatomic, assign) YXClockModelGoType type;

#pragma mark - 时针
/** 时针颜色 */
@property (nonatomic, strong) UIColor *hoursDegreeColor;
/** 时针宽度 */
@property (nonatomic, assign) CGFloat hoursDegreeWidth;
/** 时针距离边距 */
@property (nonatomic, assign) CGFloat hoursDegreeMargin;
/** 时针圆角 */
@property (nonatomic, assign) CGFloat hoursDegreeCorner;

#pragma mark - 分针
/** 分针颜色 */
@property (nonatomic, strong) UIColor *minutesDegreeColor;
/** 分针宽度 */
@property (nonatomic, assign) CGFloat minutesDegreeWidth;
/** 分针距离边距 */
@property (nonatomic, assign) CGFloat minutesDegreeMargin;
/** 分针圆角 */
@property (nonatomic, assign) CGFloat minutesDegreeCorner;

#pragma mark - 秒针
/** 秒针颜色 */
@property (nonatomic, strong) UIColor *secondsDegreeColor;
/** 秒针宽度 */
@property (nonatomic, assign) CGFloat secondsDegreeWidth;
/** 秒针距离边距 */
@property (nonatomic, assign) CGFloat secondsDegreeMargin;
/** 秒针圆角 */
@property (nonatomic, assign) CGFloat secondsDegreeCorner;

#pragma mark - 中心点
/** 中心点颜色 */
@property (nonatomic, strong) UIColor *centerDegreeColor;
/** 中心点宽度 */
@property (nonatomic, assign) CGFloat centerDegreeWidth;
/** 中心点圆角 */
@property (nonatomic, assign) CGFloat centerDegreeCorner;

@end

NS_ASSUME_NONNULL_END
