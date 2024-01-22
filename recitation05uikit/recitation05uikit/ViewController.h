//
//  ViewController.h
//  recitation05uikit
//
//  Created by Dmitry An on 22/01/2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) Loader * loader;

- (void) performLoadingForGetRequest;
- (void) performLoadingForPostRequest;

@end

