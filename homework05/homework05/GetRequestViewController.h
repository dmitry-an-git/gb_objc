//
//  GetRequestViewController.h
//  recitation05uikit
//
//  Created by Dmitry An on 22/01/2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

NS_ASSUME_NONNULL_BEGIN

@interface GetRequestViewController : UIViewController

@property (nonatomic, strong) Loader * loader;
@property (strong, nonatomic) UITextView *textView;

- (void) performLoadingForGetRequest;
- (void) setupConstraints;

@end

NS_ASSUME_NONNULL_END
