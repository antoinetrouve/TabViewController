//
//  ViewController.h
//  CityTabProject
//
//  Created by etudiant on 24/01/2016.
//  Copyright © 2016 iia.antoinetrouve. All rights reserved.
//
#import "City.h"
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelRegion;
@property (weak, nonatomic) IBOutlet UILabel *labelCity;
@property (weak, nonatomic) IBOutlet UILabel *labelCountry;

@property (weak, nonatomic) IBOutlet UILabel *labelHab;
@property (strong, nonatomic) City *city;


@end

