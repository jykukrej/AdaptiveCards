//
//  ACRRenderResult.h
//  ACRRenderResult
//
//  Copyright © 2017 Microsoft. All rights reserved.
//

@class ACRView;
@class ACRRenderer;

#ifdef SWIFT_PACKAGE
#import "ACRViewController.h"
#else
#import <AdaptiveCards/ACRViewController.h>
#endif
#import <Foundation/Foundation.h>

@interface ACRRenderResult : NSObject

@property ACRView *view;
@property ACRViewController *viewcontroller;
@property BOOL succeeded;
@property (weak) NSArray<ACOWarning *> *warnings;

@end
