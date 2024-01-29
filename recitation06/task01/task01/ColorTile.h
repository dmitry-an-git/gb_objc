//
//  ColorTile.h
//  task01
//
//  Created by Dmitry An on 29/01/2024.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorTile : NSObject<NSCoding>

@property (nonatomic) UIColor * tileColor;
@property (nonatomic) CGPoint tileOrigin;

- (instancetype) initWithColor: (UIColor *) color andPoint: (CGPoint) point;

@end

NS_ASSUME_NONNULL_END
