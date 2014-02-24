#import "FPHomeViewController.h"
#import "FPAPIClient.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(FPHomeViewControllerSpec)

describe(@"FPHomeViewController", ^{
    __block FPHomeViewController *controller;
    __block FPAPIClient *apiClient;

    beforeEach(^{
        apiClient = nice_fake_for([FPAPIClient class]);
        controller = [[FPHomeViewController alloc] initWithAPIClient:apiClient];
        controller.view should_not be_nil;
    });
    
    it(@"displays welcome text", ^{
        controller.welcomeLabel.text should equal(@"NPR Sample Client");
    });
    
    describe(@"tapping the Fetch button", ^{
        beforeEach(^{
            [controller.fetchButton sendActionsForControlEvents:UIControlEventTouchUpInside];
        });
        
        it(@"makes a call to NPR", ^{
            apiClient should have_received(@selector(getArticleList));
        });
    });
});

SPEC_END
