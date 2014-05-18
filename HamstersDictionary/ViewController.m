//
//  ViewController.m
//  HamstersDictionary
//
//  Created by Victor  Adu on 5/6/14.
//  Copyright (c) 2014 Victor  Adu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *allText = @"";
    NSMutableDictionary *hamsters = [NSMutableDictionary dictionary]; //Create a mutable dictionary
    [hamsters setObject:@"3" forKey:@"Timmy"];//since its mutable, you can change the values in dictionary by running the 'setObject: forKey' method
    [hamsters setObject:@"4" forKey:@"Jimmy"];
    [hamsters setObject:@"5" forKey:@"Fimmy"];
    
    // for-in loop: Allows you to easily loop in the array or dictionary that you put after the word 'in'. So basically 'for-in loop' allows us to loop through each object and key pairs in our 'hamsters' array and gives us the key as a variable called name.
    
    for (NSString *name in hamsters) {
        allText = [allText stringByAppendingFormat:@"%@\n", name];
        
        //To grab(lets say objects info) within the array, you could write:
        //allText = [allText stringByAppendingFormat:@"%@\n", [hamsters objectForKey:name]];
    }
    _textView.text = allText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
