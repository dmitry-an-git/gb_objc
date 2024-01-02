//
//  Student.h
//  task02
//
//  Created by Dmitry An on 24/12/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
    @property (nonatomic, readonly) NSInteger age;
    @property (nonatomic) NSString* name;
    @property (nonatomic) NSString* surname;

- (id) initWithName: (NSString*) name surname: (NSString*) surname age: (NSInteger) age;
- (void) getElder;
@end

NS_ASSUME_NONNULL_END
