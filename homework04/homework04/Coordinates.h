//
//  Coordinates.h
//  homework04
//
//  Created by Dmitry An on 16/01/2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Coordinates : NSObject

@property (nonatomic) float x;
@property (nonatomic) float y;

- (void) moveX:(float)deltaX andY:(float)deltaY;

@end

NS_ASSUME_NONNULL_END
