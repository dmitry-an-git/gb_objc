//
//  Person.h
//  task01
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>
@class Passport;


NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic, weak) Passport * passport;

@end

NS_ASSUME_NONNULL_END
