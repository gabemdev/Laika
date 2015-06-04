//
//  ViewController.m
//  Age of Laika
//
//  Created by Rockstar. on 5/16/15.
//  Copyright (c) 2015 BitLaunch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://s3.amazonaws.com/lecture_attachments/14029474122014-02-10_12-52-24__LaikaSpaceDog.jpg"]];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {

        if (data) {
            self.laikaImage.image = [UIImage imageWithData:data];
        }
    }];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onAgeButtonTapped:(UIButton *)sender {

    int age = (int)self.ageTextField.text.integerValue;
    int result = age * 7;
    self.ageLabel.text = [NSString stringWithFormat:@"%d", result];
    [self.ageTextField resignFirstResponder];
}
@end
