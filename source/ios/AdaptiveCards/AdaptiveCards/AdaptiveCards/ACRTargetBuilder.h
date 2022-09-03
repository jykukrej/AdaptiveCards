//
//  ACRTargetBuilder.h
//  AdaptiveCards
//
//  Copyright © 2020 Microsoft. All rights reserved.
//

#ifdef SWIFT_PACKAGE
#import "ACRView.h"
#else
#import <AdaptiveCards/ACRView.h>
#endif
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ACRTargetCapability) {
    ACRAction = 0,
    ACRSelectAction,
    ACRQuickReply,
};

@class ACRTargetBuilderDirector;

@protocol ACRITargetBuilder

- (NSObject *)build:(ACOBaseActionElement *)action
           director:(ACRTargetBuilderDirector *)director;
- (NSObject *)build:(ACOBaseActionElement *)action
           director:(ACRTargetBuilderDirector *)director
          ForButton:(UIButton *)button;

@end

// provides singleton interface
@interface ACRTargetBuilder : NSObject <ACRITargetBuilder>

+ (ACRTargetBuilder *)getInstance;

@end

// build target for submit and openUrl actions
@interface ACRAggregateTargetBuilder : ACRTargetBuilder
@end

@interface ACRShowCardTargetBuilder : ACRTargetBuilder
@end

@interface ACRToggleVisibilityTargetBuilder : ACRTargetBuilder
@end

// build target for overflow actions ("..." button)
@interface ACROverflowActionTargetBuilder : ACRTargetBuilder
@end

// build target for unknown actions
@interface ACRUnknownActionTargetBuilder : ACRTargetBuilder
@end
