//
//  ACRInputTimeRenderer
//  ACRInputTimeRenderer.mm
//
//  Copyright © 2017 Microsoft. All rights reserved.
//

#import <AdaptiveCards/ACRInputTimeRenderer.h>
#import <AdaptiveCards/ACOBaseCardElementPrivate.h>
#import <AdaptiveCards/ACOHostConfigPrivate.h>
#import <AdaptiveCards/ACRDateTextField.h>
#import <AdaptiveCards/ACRInputLabelViewPrivate.h>
#import <AdaptiveCards/UtiliOS.h>

@implementation ACRInputTimeRenderer

+ (ACRInputTimeRenderer *)getInstance
{
    static ACRInputTimeRenderer *singletonInstance = [[self alloc] init];
    return singletonInstance;
}

+ (ACRCardElementType)elemType
{
    return ACRTimeInput;
}

- (UIView *)render:(UIView<ACRIContentHoldingView> *)viewGroup
           rootView:(ACRView *)rootView
             inputs:(NSMutableArray *)inputs
    baseCardElement:(ACOBaseCardElement *)acoElem
         hostConfig:(ACOHostConfig *)acoConfig;
{
    std::shared_ptr<HostConfig> config = [acoConfig getHostConfig];
    std::shared_ptr<BaseCardElement> elem = [acoElem element];
    std::shared_ptr<BaseInputElement> timeInput = std::dynamic_pointer_cast<BaseInputElement>(elem);
    ACRDateTextField *field = [[ACRDateTextField alloc] initWithTimeDateInput:timeInput dateStyle:NSDateFormatterNoStyle];

    ACRInputLabelView *inputLabelView = [[ACRInputLabelView alloc] initInputLabelView:rootView acoConfig:acoConfig adaptiveInputElement:timeInput inputView:field accessibilityItem:field.inputView viewGroup:viewGroup dataSource:nil];
    field.accessibilityTraits = UIAccessibilityTraitButton | UIAccessibilityTraitStaticText;
    field.accessibilityHint = NSLocalizedString(@"opens the time picker", nil);

    UIView *renderedview = inputLabelView;

    if (viewGroup) {
        [viewGroup addArrangedSubview:renderedview];
    }

    [inputs addObject:renderedview];

    return renderedview;
}

@end
