//
//  UserDefaultsStorage.h
//  homework06
//
//  Created by Dmitry An on 29/01/2024.
//

#import <Foundation/Foundation.h>
#import "StorageProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserDefaultsStorage : NSObject <StorageProtocol>

@property (nonatomic) NSUserDefaults * userDefaults;

@end

NS_ASSUME_NONNULL_END
