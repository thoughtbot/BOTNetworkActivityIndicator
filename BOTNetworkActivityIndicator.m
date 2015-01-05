#import "BOTNetworkActivityIndicator.h"

@interface BOTNetworkActivityIndicator ()

@property (nonatomic) dispatch_queue_t networkActivityCounterQueue;
@property (nonatomic) NSUInteger networkActivityCounter;

@end

@implementation BOTNetworkActivityIndicator

#pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;

    self.networkActivityCounterQueue = dispatch_queue_create("BOTNetworkActivityIndicator Queue", NULL);

    return self;
}

#pragma mark - Public Methods

+ (instancetype)sharedIndicator
{
    static BOTNetworkActivityIndicator *indicator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        indicator = [self new];
    });

    return indicator;
}

- (void)pushNetworkActivity
{
    dispatch_sync(self.networkActivityCounterQueue, ^{
        self.networkActivityCounter++;
        [self updateNetworkActivityIndicator];
    });
}

- (void)popNetowrkActivity
{
    dispatch_sync(self.networkActivityCounterQueue, ^{
        self.networkActivityCounter--;
        [self updateNetworkActivityIndicator];
    });
}

#pragma mark - Private Methods

- (void)updateNetworkActivityIndicator
{
    dispatch_async(dispatch_get_main_queue(), ^{
        BOOL indicatorVisible = (self.networkActivityCounter > 0);
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:indicatorVisible];
    });
}

@end
