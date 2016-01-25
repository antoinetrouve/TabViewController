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
{
    City* cityClick;
}

@end

@implementation CityTableViewController
@synthesize cities;
//lancemet au premier chargement du controller
- (void)viewDidLoad {
    [super viewDidLoad];
    //cities = [NSMutableArray arrayWithCapacity:20];
    
    //create data to test application
    City *paris = [City new];
    paris.name = @"Paris";
    paris.region = @"Isle of France";
    paris.country = @"France";
    paris.nbHab = 1200000;
    
    City *ny = [City new];
    ny.name = @"New-York";
    ny.region = @"New-York";
    ny.country = @"United States";
    ny.nbHab = 18000000;
    
    City *london = [City new];
    london.name = @"London";
    london.region = @"Great London";
    london.country = @"England";
    london.nbHab = 45000000;
    
    City *laval = [City new];
    laval.name = @"Laval";
    laval.region = @"Loire's country";
    laval.country = @"France";
    laval.nbHab = 60000;

    self.cities = [NSArray arrayWithObjects:laval,london,ny,paris,nil];
    
    //integrates data into cityViewController which is linked with TableView.
    //CityTableViewController* ctvc = [CityTableViewController new];
    //ctvc.cities = _cities;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

//Vivement conseiller dans les listes si beaucoups de données
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//data source à intégrer
#pragma mark - Table view data source

// créer plusieurs sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

//constructeur pour le table view
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.cities.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"CityCell";
    //indexPath = position de la row
    //Recupere l'index de la ligne du tableau
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //verification si une cellule est déjà créée. Sinon on l'a créé.
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    // Configure the cell...
    cell.textLabel.text = [[self.cities objectAtIndex:indexPath.row] name];
    cell.detailTextLabel.text = [[self.cities objectAtIndex:indexPath.row] country];
    
    return cell;
}

//permet de rendre la ligne selectionnable (cliquable)
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    cityClick = [self.cities objectAtIndex:indexPath.row];
//    [self performSegueWithIdentifier:@"CitySegue" sender:self];
//    NSLog(cityClick.name);
//}

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
 //Déplace les élements de la liste
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
    if ([[segue identifier] isEqualToString:@"CitySegue"]) {
        // if OK
        ViewController *vc = [segue destinationViewController];
        
        //Index dans la table view de l'objet selectionné
        //NSIndexPath *index = [self.tableView indexPathForSelectedRow];
        //position de l'objet dans la liste cities grace à l'index
        //NSInteger position = index.row;
        //objet à la position
        //self->cityClick = [self.cities objectAtIndex:position];
        
        // ----OU ------
        NSIndexPath *IndexCell = [self.tableView indexPathForCell:sender];
        NSInteger positionCell = IndexCell.row;
        self->cityClick = [self.cities objectAtIndex:positionCell];
        
        
        
        // ---OU en 1 ligne-----
        //self->cityClick = [self.cities objectAtIndex:[self.tableView indexPathForSelectedRow].row];
        
        //-> car variable de classe donc private.
        vc.city = self->cityClick;
    }
    
}


@end
