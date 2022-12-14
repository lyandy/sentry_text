//
//  ViewController.m
//  sentry_test
//
//  Created by 李扬 on 2022/12/8.
//

#import "ViewController.h"
#import "Sentry.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)crash:(UIButton *)sender {
    
    // make a crash
    NSString *str = nil;
    [[NSURL alloc] initWithString:str];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self installSentry];
    
    // Do any additional setup after loading the view.
}

- (void)installSentry {
    SentryOptions *options = [[SentryOptions alloc] init];
    options.dsn = @"https://xxxx";
    options.debug = YES;

    [SentrySDK startWithOptionsObject:options];
}



@end
