//
//  ViewController.m
//  UnitConverter
//
//  Created by Sharat Virunchipuram on 6/5/16.
//  Copyright © 2016 Sharat Virunchipuram. All rights reserved.
//

#import "ViewController.h"

double convertToFeet(double inches) {
    return inches / 12.0;
}

double convertToYards(double inches) {
    return inches / 36.0;
}

double convertToMeters(double inches) {
    return inches / 39.37;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    if(self.segmentController.selectedSegmentIndex == 0) {
        double feetValue = convertToFeet(userInput);
        
        [buf appendString: [@(feetValue) stringValue]];
    }
    
    else if(self.segmentController.selectedSegmentIndex == 1) {
        double yardsValue = convertToYards(userInput);
        
        [buf appendString:[@(yardsValue) stringValue]];
    }
    
    else {
        double metersValue = convertToMeters(userInput);
        [buf appendString: [@(metersValue) stringValue]];
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end