//
//  Circle.h
//  homework02
//
//  Created by Dmitry An on 26/12/2023.
//

#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : Figure

@property (nonatomic) CGFloat radius;

- (id) initWithRadius: (CGFloat) radius;

@end

NS_ASSUME_NONNULL_END
