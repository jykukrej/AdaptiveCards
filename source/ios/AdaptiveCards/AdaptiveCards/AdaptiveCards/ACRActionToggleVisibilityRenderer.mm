//
//  ACRActionToggleVisibilityRenderer
//  ACRActionToggleVisibilityRenderer.mm
//
//  Copyright © 2018 Microsoft. All rights reserved.
//

#import <AdaptiveCards/ACRActionToggleVisibilityRenderer.h>
#import <AdaptiveCards/ACOBaseActionElementPrivate.h>
#import <AdaptiveCards/ACOHostConfigPrivate.h>
#import <AdaptiveCards/ACRBaseActionElementRenderer.h>
#import <AdaptiveCards/ACRButton.h>
#import <AdaptiveCards/ACRToggleVisibilityTarget.h>
#import <AdaptiveCards/ToggleVisibilityAction.h>
#import <AdaptiveCards/UtiliOS.h>

@implementation ACRActionToggleVisibilityRenderer

+ (ACRActionToggleVisibilityRenderer *)getInstance
{
    static ACRActionToggleVisibilityRenderer *singletonInstance = [[self alloc] init];
    return singletonInstance;
}

- (UIButton *)renderButton:(ACRView *)view
                    inputs:(NSArray *)inputs
                 superview:(UIView<ACRIContentHoldingView> *)superview
         baseActionElement:(ACOBaseActionElement *)acoElem
                hostConfig:(ACOHostConfig *)acoConfig;
{
    std::shared_ptr<BaseActionElement> elem = [acoElem element];
    std::shared_ptr<ToggleVisibilityAction> action = std::dynamic_pointer_cast<ToggleVisibilityAction>(elem);

    NSString *title = [NSString stringWithCString:action->GetTitle().c_str() encoding:NSUTF8StringEncoding];

    UIButton *button = [ACRButton rootView:view baseActionElement:acoElem title:title andHostConfig:acoConfig];

    ACRToggleVisibilityTarget *target;
    if (ACRRenderingStatus::ACROk == buildTargetForButton([view getActionsTargetBuilderDirector], acoElem, button, &target)) {
        [superview addTarget:target];
    }

    [button setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];

    [button setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];

    return button;
}
@end
