//
//  FileStorage.h
//  homework06
//
//  Created by Dmitry An on 30/01/2024.
//

#import <Foundation/Foundation.h>
#import "StorageProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface FileStorage : NSObject <StorageProtocol>

@property (nonatomic) NSFileManager * fileManager;
@property (nonatomic) NSURL * robotFolderPath;
@property (nonatomic) NSURL * robotFilePath;

@end

NS_ASSUME_NONNULL_END
