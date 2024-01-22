//
//  PostRequestViewController.h
//  recitation05uikit
//
//  Created by Dmitry An on 22/01/2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

NS_ASSUME_NONNULL_BEGIN

@interface PostRequestViewController : UIViewController

@property (nonatomic, strong) Loader * loader;
@property (strong, nonatomic) UITextField * inputTextField1;
@property (strong, nonatomic) UITextField * inputTextField2;
@property (strong, nonatomic) UIButton * button;
@property (strong, nonatomic) UITextView * outputTextView;

- (void) performLoadingForPostRequest:(NSDictionary*)dictionary;
- (void) setupConstraints;

@end

NS_ASSUME_NONNULL_END
