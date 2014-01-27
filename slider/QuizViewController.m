//
//  QuizViewController.m
//  slider
//
//  Created by Krystle on 1/27/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()
- (IBAction)valueChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation QuizViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    static float choice;
    choice = self.slider.value;
    NSString *labelText = [NSString stringWithFormat: @ "%f", choice ];
    
    
    [self.label setText: labelText];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    

}


- (IBAction)valueChanged:(id)sender {
    static float choice;
      choice = self.slider.value;
    NSString *labelText = [NSString stringWithFormat: @ "%f", choice ];
  
    
    [self.label setText: labelText];
    
}
@end
