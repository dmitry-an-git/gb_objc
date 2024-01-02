//
//  Passport.h
//  task01
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Passport : NSObject

@property (nonatomic) NSString * number;
@property (nonatomic) Person * person;

@end

NS_ASSUME_NONNULL_END
