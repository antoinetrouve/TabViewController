//
//  CityTableViewController.h
//  CityTabProject
//
//  Created by Antoine Trouvé on 24/01/2016.
//  Copyright © 2016 iia.antoinetrouve. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityTableViewController : UITableViewController
//nonatomic car pas de thread
//NSArray non mutable car on aura pas à la modifier.
@property (nonatomic, strong) NSArray *cities;
@end
