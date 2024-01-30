//
//  Coordinates.h
//  homework06
//
//  Created by Dmitry An on 29/01/2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Coordinates : NSObject

@property (nonatomic) double x;
@property (nonatomic) double y;

- (void) setCoordinatesWithX: (double) x andY: (double) y;

@end

NS_ASSUME_NONNULL_END
