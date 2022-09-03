//
//  ACOWarning
//  ACOWarning.m
//
//  Copyright © 2020 Microsoft. All rights reserved.
//

#ifdef SWIFT_PACKAGE
#import "ACOWarning.h"
#else
#import <AdaptiveCards/ACOWarning.h>
#endif

@implementation ACOWarning

- (instancetype)init
{
    return [self initWith:ACRUnknownElementType message:@""];
}

- (instancetype)initWith:(ACRWarningStatusCode)statusCode message:(NSString *)message
{
    self = [super init];

    if (self) {
        _statusCode = statusCode;
        _message = message;
    }

    return self;
}
@end
