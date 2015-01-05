//
//  BOTNetworkActivityIndicator.h
//  Pods
//
//  Created by Mark Adams on 1/5/15.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BOTNetworkActivityIndicator : NSObject

+ (instancetype)sharedIndicator;
- (void)pushNetworkActivity;
- (void)popNetowrkActivity;

@end
