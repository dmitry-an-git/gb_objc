//
//  Triangle.h
//  homework02
//
//  Created by Dmitry An on 26/12/2023.
//

#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Triangle : Figure

@property (nonatomic) CGFloat sideA;
@property (nonatomic) CGFloat sideB;
@property (nonatomic) CGFloat sideC;

- (id) initWithSideA: (CGFloat) sideA SideB: (CGFloat) sideB SideC: (CGFloat) sideC;

@end

NS_ASSUME_NONNULL_END
