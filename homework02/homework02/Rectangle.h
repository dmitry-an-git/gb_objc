//
//  Rectangle.h
//  homework02
//
//  Created by Dmitry An on 26/12/2023.
//

#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Figure

@property (nonatomic) CGFloat sideA;
@property (nonatomic) CGFloat sideB;

- (id)initWithSideA:(CGFloat) sideA sideB: (CGFloat) sideB;

@end

NS_ASSUME_NONNULL_END
