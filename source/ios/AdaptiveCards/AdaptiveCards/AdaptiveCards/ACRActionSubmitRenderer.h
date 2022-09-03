//
//  ACRActionSubmitRenderer
//  ACRActionSubmitRenderer.h
//
//  Copyright © 2017 Microsoft. All rights reserved.
//

#ifdef SWIFT_PACKAGE
#import "ACRBaseActionElementRenderer.h"
#else
#import <AdaptiveCards/ACRBaseActionElementRenderer.h>
#endif

@interface ACRActionSubmitRenderer : ACRBaseActionElementRenderer

+ (ACRActionSubmitRenderer *)getInstance;

@end
