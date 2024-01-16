//
//  BlockClass.h
//  recitation04
//
//  Created by Dmitry An on 16/01/2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlockClass : NSObject

@property (nonatomic, copy, nullable) int (^blockProperty)(int, int);

- (void) printInt: (int)a
                b: (int)b
            block: (void (^)(int,int))block;
                   
//- (void)someMethodThatTakesABlock:(returnType (^nullability)(parameterTypes))blockName;

@end

NS_ASSUME_NONNULL_END
