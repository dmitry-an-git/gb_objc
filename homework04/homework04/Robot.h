//
//  Robot.h
//  homework04
//
//  Created by Dmitry An on 16/01/2024.
//

#import <Foundation/Foundation.h>
#import "Coordinates.h"

NS_ASSUME_NONNULL_BEGIN

typedef NSString *_Nonnull(^DirectionBlock)(void);

@interface Robot : NSObject

@property (nonatomic) Coordinates * position;

//- (void) run: (NSString * (^)(void))block;
- (void) run: (DirectionBlock) block;

- (void) printPosition;

@end

NS_ASSUME_NONNULL_END
