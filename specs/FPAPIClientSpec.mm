#import "FPAPIClient.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(FPAPIClientSpec)

describe(@"FPAPIClient", ^{
    __block FPAPIClient *apiClient;

    beforeEach(^{
        apiClient = [[FPAPIClient alloc] initWithKey:@"fake-key"];
    });
    
    it(@"has an api key", ^{
        apiClient.apiKey should equal(@"fake-key");
    });
    
    describe(@"-getArticlesList", ^{
        it(@"does stuff", ^{
            
        });
    });
});

SPEC_END
