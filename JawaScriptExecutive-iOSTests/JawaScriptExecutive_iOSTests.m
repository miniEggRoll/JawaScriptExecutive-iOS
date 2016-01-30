//
//  JawaScriptExecutive_iOSTests.m
//  JawaScriptExecutive-iOSTests
//
//  Created by Chi-Wei (Jack) Wang on 2016/1/15.
//
//

#import <XCTest/XCTest.h>
#import "JawaExecutor.h"
#import "utility.h"

@interface JawaScriptExecutive_iOSTests : XCTestCase

@end

@implementation JawaScriptExecutive_iOSTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)test1 {
    JawaExecutor* ex = [[JawaExecutor alloc]init];
    NSError *error;
    NSString *parsed = @"{\"t\":0,\"0\":[{\"t\":37,\"33\":[{\"t\":34,\"26\":\"arr\",\"27\":{\"t\":27,\"7\":[{\"t\":25,\"8\":\"NUMERIC_LITERAL,5.0\"},{\"t\":25,\"8\":\"NUMERIC_LITERAL,1.0\"},{\"t\":25,\"8\":\"NUMERIC_LITERAL,6.0\"},{\"t\":25,\"8\":\"NUMERIC_LITERAL,2.0\"},{\"t\":25,\"8\":\"NUMERIC_LITERAL,9.0\"}]}}]},{\"t\":1,\"3\":\"insertion_sort\",\"23\":[\"arr\"],\"24\":{\"t\":2,\"0\":[{\"t\":33,\"24\":{\"t\":2,\"0\":[{\"t\":37,\"33\":[{\"t\":34,\"26\":\"min\",\"27\":{\"t\":22,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"i\"}}}]},{\"t\":37,\"33\":[{\"t\":34,\"26\":\"minp\",\"27\":{\"t\":24,\"3\":\"i\"}}]},{\"t\":33,\"24\":{\"t\":2,\"0\":[{\"t\":35,\"18\":{\"t\":2,\"0\":[{\"t\":5,\"14\":\"PUNCTUATOR,=\",\"20\":{\"t\":24,\"3\":\"min\"},\"21\":{\"t\":22,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"j\"}}},{\"t\":5,\"14\":\"PUNCTUATOR,=\",\"20\":{\"t\":24,\"3\":\"minp\"},\"21\":{\"t\":24,\"3\":\"j\"}}]},\"25\":{\"t\":13,\"15\":[{\"t\":5,\"v\":\"<\"}],\"16\":[{\"t\":22,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"j\"}},{\"t\":24,\"3\":\"min\"}]}}]},\"25\":{\"t\":13,\"15\":[{\"t\":5,\"v\":\"<\"}],\"16\":[{\"t\":24,\"3\":\"j\"},{\"t\":20,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"length\"}}]},\"30\":[{\"t\":34,\"26\":\"j\",\"27\":{\"t\":16,\"15\":[{\"t\":5,\"v\":\"+\"}],\"16\":[{\"t\":24,\"3\":\"i\"},{\"t\":25,\"8\":\"NUMERIC_LITERAL,1.0\"}]}}],\"31\":{\"t\":19,\"13\":{\"t\":24,\"3\":\"j\"},\"14\":\"PUNCTUATOR,++\"}},{\"t\":5,\"14\":\"PUNCTUATOR,=\",\"20\":{\"t\":22,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"minp\"}},\"21\":{\"t\":22,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"i\"}}},{\"t\":5,\"14\":\"PUNCTUATOR,=\",\"20\":{\"t\":22,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"i\"}},\"21\":{\"t\":24,\"3\":\"min\"}}]},\"25\":{\"t\":13,\"15\":[{\"t\":5,\"v\":\"<\"}],\"16\":[{\"t\":24,\"3\":\"i\"},{\"t\":20,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"length\"}}]},\"30\":[{\"t\":34,\"26\":\"i\",\"27\":{\"t\":25,\"8\":\"NUMERIC_LITERAL,0.0\"}}],\"31\":{\"t\":19,\"13\":{\"t\":24,\"3\":\"i\"},\"14\":\"PUNCTUATOR,++\"}}]}},{\"t\":1,\"3\":\"test\",\"23\":[],\"24\":{\"t\":2,\"0\":[{\"t\":37,\"33\":[{\"t\":34,\"26\":\"ret\",\"27\":{\"t\":25,\"8\":\"STRING_LITERAL,\"}}]},{\"t\":21,\"2\":{\"t\":26,\"2\":[{\"t\":24,\"3\":\"arr\"}]},\"12\":{\"t\":24,\"3\":\"insertion_sort\"}},{\"t\":33,\"24\":{\"t\":5,\"14\":\"PUNCTUATOR,+=\",\"20\":{\"t\":24,\"3\":\"ret\"},\"21\":{\"t\":16,\"15\":[{\"t\":5,\"v\":\"+\"}],\"16\":[{\"t\":25,\"8\":\"STRING_LITERAL, \"},{\"t\":22,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"i\"}}]}},\"25\":{\"t\":13,\"15\":[{\"t\":5,\"v\":\"<\"}],\"16\":[{\"t\":24,\"3\":\"i\"},{\"t\":20,\"10\":{\"t\":24,\"3\":\"arr\"},\"11\":{\"t\":24,\"3\":\"length\"}}]},\"30\":[{\"t\":34,\"26\":\"i\",\"27\":{\"t\":25,\"8\":\"NUMERIC_LITERAL,0.0\"}}],\"31\":{\"t\":19,\"13\":{\"t\":24,\"3\":\"i\"},\"14\":\"PUNCTUATOR,++\"}},{\"t\":36,\"32\":{\"t\":24,\"3\":\"ret\"}}]}}]}";

    NSData *data = [parsed dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSString *answer = @"{\"retType\":\"array\",\"retValue\":[30,40,49,57,59,63,73,90,103,129,131,139,151,161,167,180,182,203,209,224,251,253,255,265,297,301,320,328,329,333,341,348,352,414,440,452,454,456,457,458,461,462,475,478,494,506,515,516,520,527,543,557,567,575,577,582,598,600,607,629,639,646,660,675,682,712,722,723,739,744,746,756,757,779,785,792,814,820,832,852,865,881,896,898,903,905,906,907,920,923,928,931,943,945,949,956,961,969,980,993]}";

    [ex execute:json];
    XCTAssertTrue([[[ex invoke:@"test" with:nil] description] isEqualToString:answer]);
}
/*
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
*/
@end
