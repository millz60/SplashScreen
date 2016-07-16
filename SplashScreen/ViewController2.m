//
//  ViewController2.m
//  SplashScreen
//
//  Created by Matt Milner on 7/10/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2



- (void)viewDidLoad {
    [super viewDidLoad];

        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSString *appHasRun = @"NO";
    
        [defaults setObject:appHasRun forKey:@"AppHasRun"];
    
        UIView *splashScreen = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        splashScreen.backgroundColor = [UIColor greenColor];
        UILabel *splashLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 25)];
        splashLabel.center = splashScreen.center;
        splashLabel.textColor = [UIColor blackColor];
        splashLabel.text = @"Splashhhhh Screen";
        splashLabel.textAlignment = NSTextAlignmentCenter;
        splashLabel.font = [UIFont fontWithName:@"Apple SD Gothic Neo" size:22.0];
        
        [self.view addSubview:splashScreen];
        [splashScreen addSubview:splashLabel];
        
        [UIView animateWithDuration:2.0 animations:^{ splashScreen.frame = CGRectMake(0, -5000, 1000, 1000);}];

    
        [defaults synchronize];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
