//
//  YXClockModel.m
//  YXClockTest
//
//  Created by ios on 2021/4/13.
//

#import "YXClockModel.h"

@implementation YXClockModel

#pragma mark - 链式编程
#pragma mark - 基础信息
- (YXClockModel * _Nonnull (^)(UIImage * _Nonnull))clockBgImgChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^clockBgImgChainBlock)(UIImage *) = ^(UIImage *clockBgImgChain) {
      
        weakSelf.clockBgImg = clockBgImgChain;
        return weakSelf;
    };
    return clockBgImgChainBlock;
}
- (YXClockModel * _Nonnull (^)(YXClockModelGoType))typeChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^typeChainBlock)(YXClockModelGoType) = ^(YXClockModelGoType typeChain) {
      
        weakSelf.type = typeChain;
        return weakSelf;
    };
    return typeChainBlock;
}

#pragma mark - 时针
- (YXClockModel * _Nonnull (^)(UIColor * _Nonnull))hoursDegreeColorChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^hoursDegreeColorChainBlock)(UIColor *) = ^(UIColor *hoursDegreeColorChain) {
        
        weakSelf.hoursDegreeColor = hoursDegreeColorChain;
        return weakSelf;
    };
    return hoursDegreeColorChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))hoursDegreeWidthChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^hoursDegreeWidthChainBlock)(CGFloat) = ^(CGFloat hoursDegreeWidthChain) {
        
        weakSelf.hoursDegreeWidth = hoursDegreeWidthChain;
        return weakSelf;
    };
    return hoursDegreeWidthChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))hoursDegreeMarginChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^hoursDegreeMarginChainBlock)(CGFloat) = ^(CGFloat hoursDegreeMarginChain) {
        
        weakSelf.hoursDegreeMargin = hoursDegreeMarginChain;
        return weakSelf;
    };
    return hoursDegreeMarginChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))hoursDegreeCornerChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^hoursDegreeCornerChainBlock)(CGFloat) = ^(CGFloat hoursDegreeCornerChain) {
        
        weakSelf.hoursDegreeCorner = hoursDegreeCornerChain;
        return weakSelf;
    };
    return hoursDegreeCornerChainBlock;
}

#pragma mark - 分针
- (YXClockModel * _Nonnull (^)(UIColor * _Nonnull))minutesDegreeColorChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^minutesDegreeColorChainBlock)(UIColor *) = ^(UIColor *minutesDegreeColorChain) {
        
        weakSelf.minutesDegreeColor = minutesDegreeColorChain;
        return weakSelf;
    };
    return minutesDegreeColorChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))minutesDegreeWidthChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^minutesDegreeWidthChainBlock)(CGFloat) = ^(CGFloat minutesDegreeWidthChain) {
        
        weakSelf.minutesDegreeWidth = minutesDegreeWidthChain;
        return weakSelf;
    };
    return minutesDegreeWidthChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))minutesDegreeMarginChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^minutesDegreeMarginChainBlock)(CGFloat) = ^(CGFloat minutesDegreeMarginChain) {
        
        weakSelf.minutesDegreeMargin = minutesDegreeMarginChain;
        return weakSelf;
    };
    return minutesDegreeMarginChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))minutesDegreeCornerChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^minutesDegreeCornerChainBlock)(CGFloat) = ^(CGFloat minutesDegreeCornerChain) {
        
        weakSelf.minutesDegreeCorner = minutesDegreeCornerChain;
        return weakSelf;
    };
    return minutesDegreeCornerChainBlock;
}

#pragma mark - 秒针
- (YXClockModel * _Nonnull (^)(UIColor * _Nonnull))secondsDegreeColorChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^secondsDegreeColorChainBlock)(UIColor *) = ^(UIColor *secondsDegreeColorChain) {
        
        weakSelf.secondsDegreeColor = secondsDegreeColorChain;
        return weakSelf;
    };
    return secondsDegreeColorChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))secondsDegreeWidthChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^secondsDegreeWidthChainBlock)(CGFloat) = ^(CGFloat secondsDegreeWidthChain) {
        
        weakSelf.secondsDegreeWidth = secondsDegreeWidthChain;
        return weakSelf;
    };
    return secondsDegreeWidthChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))secondsDegreeMarginChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^secondsDegreeMarginChainBlock)(CGFloat) = ^(CGFloat secondsDegreeMarginChain) {
        
        weakSelf.secondsDegreeMargin = secondsDegreeMarginChain;
        return weakSelf;
    };
    return secondsDegreeMarginChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))secondsDegreeCornerChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^secondsDegreeCornerChainBlock)(CGFloat) = ^(CGFloat secondsDegreeCornerChain) {
        
        weakSelf.secondsDegreeCorner = secondsDegreeCornerChain;
        return weakSelf;
    };
    return secondsDegreeCornerChainBlock;
}

#pragma mark - 中心点
- (YXClockModel * _Nonnull (^)(UIColor * _Nonnull))centerDegreeColorChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^centerDegreeColorChainBlock)(UIColor *) = ^(UIColor *centerDegreeColorChain) {
        
        weakSelf.centerDegreeColor = centerDegreeColorChain;
        return weakSelf;
    };
    return centerDegreeColorChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))centerDegreeWidthChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^centerDegreeWidthChainBlock)(CGFloat) = ^(CGFloat centerDegreeWidthChain) {
        
        weakSelf.centerDegreeWidth = centerDegreeWidthChain;
        return weakSelf;
    };
    return centerDegreeWidthChainBlock;
}
- (YXClockModel * _Nonnull (^)(CGFloat))centerDegreeCornerChain {
    
    __weak typeof(self) weakSelf = self;
    YXClockModel *(^centerDegreeCornerChainBlock)(CGFloat) = ^(CGFloat centerDegreeCornerChain) {
        
        weakSelf.centerDegreeCorner = centerDegreeCornerChain;
        return weakSelf;
    };
    return centerDegreeCornerChainBlock;
}

@end
