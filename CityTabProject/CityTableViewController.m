//
//  CityTableViewController.m
//  CityTabProject
//
//  Created by Antoine Trouvé on 24/01/2016.
//  Copyright © 2016 iia.antoinetrouve. All rights reserved.
//

#import "ViewController.h"
#import "CityTableViewController.h"
#import "City.h"

@interface CityTableViewController ()

@end

@implementation CityTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _cities = [NSMutableArray arrayWithCapacity:20];
    
    //create data to test application
    City *paris = [City new];
    paris.name = @"Paris";
    paris.region = @"Isle of France";
    paris.country = @"France";
    paris.nbHab = 1200000;
    [_cities addObject:paris];
    
    City *ny = [City new];
    ny.name = @"New-York";
    ny.region = @"New-York";
    ny.country = @"United States";
    ny.nbHab = 18000000;
    [_cities addObject:ny];
    
    
    City *london = [City new];
    london.name = @"London";
    london.region = @"Great London";
    london.country = @"England";
    london.nbHab = 45000000;
    [_cities addObject:london];
    
    City *laval = [City new];
    laval.name = @"Laval";
    laval.region = @"Loire's country";
    laval.country = @"France";
    laval.nbHab = 60000;
    [_cities addObject:laval];
    
    //integrates data into cityViewController which is linked with TableView.
    CityTableViewController* ctvc = [CityTableViewController new];
    ctvc.cities = _cities;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    return [self.cities count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CityCell" forIndexPath:indexPath];
    
    // Configure the cell...
    City* city = (self.cities)[indexPath.row];
    cell.textLabel.text = city.name;
    cell.detailTextLabel.text = city.country;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    // recuperation du nom du segue
    if ([[segue identifier] isEqualToString:@"CityDetailSegue"]) {
        // if OK
        ViewController* vc = [segue destinationViewController];
    }
    
}


@end
