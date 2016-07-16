//
//  ViewController.m
//  SplashScreen
//
//  Created by Matt Milner on 7/10/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *appHasRun = [defaults objectForKey:@"AppHasRun"];

    if(![appHasRun isEqualToString:@"YES"]) {
        
        appHasRun = @"YES";
        [defaults setObject:appHasRun forKey:@"AppHasRun"];
        [self executeSplashScreen];
        [defaults synchronize];
    }

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) executeSplashScreen{
    
    UIView *splashScreenView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    splashScreenView.backgroundColor = [UIColor greenColor];
    
    UILabel *splashLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
    splashLabel.textColor = [UIColor blackColor];
    splashLabel.center = splashScreenView.center;
    splashLabel.text = @"SPLASHHH SCREEN";
    
    [splashScreenView addSubview:splashLabel];
    [self.view addSubview:splashScreenView];
    
    [UIView animateWithDuration:2.5 animations:^{ splashScreenView.frame = CGRectMake(0, -(self.view.frame.size.height), self.view.frame.size.width, self.view.frame.size.height);
        
    } completion:nil];
    
    
    
}

-(IBAction)clearDefaults:(id)sender{

    NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
    [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:appDomain];
    [self.view setNeedsDisplay];
}


@end
