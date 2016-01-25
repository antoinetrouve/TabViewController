//
//  ViewController.m
//  CityTabProject
//
//  Created by etudiant on 24/01/2016.
//  Copyright © 2016 iia.antoinetrouve. All rights reserved.
//

#import "ViewController.h"
#import "City.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize city;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.labelCity.text = city.name;
    self.labelCountry.text = city.country;
    self.labelRegion.text = city.region;
    self.labelHab.text = [NSString stringWithFormat:@"%i",city.nbHab ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
