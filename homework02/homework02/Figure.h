//
//  Figure.h
//  homework02
//
//  Created by Dmitry An on 26/12/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Figure : NSObject

@property (nonatomic) CGFloat perimeter;
@property (nonatomic) CGFloat area;

- (void) calculatePerimeter;
- (void) calculateArea;
- (NSString*) description;

@end

NS_ASSUME_NONNULL_END
