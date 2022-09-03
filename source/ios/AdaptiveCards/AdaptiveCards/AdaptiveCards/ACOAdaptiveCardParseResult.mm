//
//  ACOAdaptiveCardParseResult.mm
//  ACOAdaptiveCardParseResult.h
//
//  Copyright © 2017 Microsoft. All rights reserved.
//

#ifdef SWIFT_PACKAGE
#import "ACOAdaptiveCardParseResult.h"
#else
#import <AdaptiveCards/ACOAdaptiveCardParseResult.h>
#endif

@implementation ACOAdaptiveCardParseResult

- (instancetype)init:(ACOAdaptiveCard *)card errors:(NSArray<NSError *> *)errors warnings:(NSArray<ACRParseWarning *> *)warnings;
{
    self = [super init];
    if (self) {
        _card = card;
        _isValid = (_card) ? YES : NO;
        _parseErrors = errors;
        _parseWarnings = warnings;
    }
    return self;
}

@end
