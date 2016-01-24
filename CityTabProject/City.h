//
//  City.h
//  CityTabProject
//
//  Created by etudiant on 24/01/2016.
//  Copyright © 2016 iia.antoinetrouve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
{
    // City attribut
    NSString* name;
    NSString* region;
    NSString* country;
    int nbHab;
}

//Initialize getter and setter
@property(strong, nonatomic) NSString* name;
@property(strong, nonatomic) NSString* region;
@property(strong, nonatomic) NSString* country;
@property(assign, nonatomic) int nbHab;

@end
