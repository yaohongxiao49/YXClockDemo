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
- (YXClockModel *(^)(UIImage *))clockBgImgChain;

/** 秒针走动模式 */
@property (nonatomic, assign) YXClockModelGoType type;
- (YXClockModel *(^)(YXClockModelGoType))typeChain;

#pragma mark - 时针
/** 时针颜色 */
@property (nonatomic, strong) UIColor *hoursDegreeColor;
- (YXClockModel *(^)(UIColor *))hoursDegreeColorChain;

/** 时针宽度 */
@property (nonatomic, assign) CGFloat hoursDegreeWidth;
- (YXClockModel *(^)(CGFloat))hoursDegreeWidthChain;

/** 时针距离边距 */
@property (nonatomic, assign) CGFloat hoursDegreeMargin;
- (YXClockModel *(^)(CGFloat))hoursDegreeMarginChain;

/** 时针圆角 */
@property (nonatomic, assign) CGFloat hoursDegreeCorner;
- (YXClockModel *(^)(CGFloat))hoursDegreeCornerChain;

#pragma mark - 分针
/** 分针颜色 */
@property (nonatomic, strong) UIColor *minutesDegreeColor;
- (YXClockModel *(^)(UIColor *))minutesDegreeColorChain;

/** 分针宽度 */
@property (nonatomic, assign) CGFloat minutesDegreeWidth;
- (YXClockModel *(^)(CGFloat))minutesDegreeWidthChain;

/** 分针距离边距 */
@property (nonatomic, assign) CGFloat minutesDegreeMargin;
- (YXClockModel *(^)(CGFloat))minutesDegreeMarginChain;

/** 分针圆角 */
@property (nonatomic, assign) CGFloat minutesDegreeCorner;
- (YXClockModel *(^)(CGFloat))minutesDegreeCornerChain;

#pragma mark - 秒针
/** 秒针颜色 */
@property (nonatomic, strong) UIColor *secondsDegreeColor;
- (YXClockModel *(^)(UIColor *))secondsDegreeColorChain;

/** 秒针宽度 */
@property (nonatomic, assign) CGFloat secondsDegreeWidth;
- (YXClockModel *(^)(CGFloat))secondsDegreeWidthChain;

/** 秒针距离边距 */
@property (nonatomic, assign) CGFloat secondsDegreeMargin;
- (YXClockModel *(^)(CGFloat))secondsDegreeMarginChain;

/** 秒针圆角 */
@property (nonatomic, assign) CGFloat secondsDegreeCorner;
- (YXClockModel *(^)(CGFloat))secondsDegreeCornerChain;

#pragma mark - 中心点
/** 中心点颜色 */
@property (nonatomic, strong) UIColor *centerDegreeColor;
- (YXClockModel *(^)(UIColor *))centerDegreeColorChain;

/** 中心点宽度 */
@property (nonatomic, assign) CGFloat centerDegreeWidth;
- (YXClockModel *(^)(CGFloat))centerDegreeWidthChain;

/** 中心点圆角 */
@property (nonatomic, assign) CGFloat centerDegreeCorner;
- (YXClockModel *(^)(CGFloat))centerDegreeCornerChain;

@end

NS_ASSUME_NONNULL_END
