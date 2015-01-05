@import Foundation;
@import UIKit;

@interface BOTNetworkActivityIndicator : NSObject

+ (instancetype)sharedIndicator;
- (void)pushNetworkActivity;
- (void)popNetowrkActivity;

@end
