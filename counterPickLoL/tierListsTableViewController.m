//
//  tierListsTableViewController.m
//  counterPickLoL
//
//  Created by christian ambriz on 8/28/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "tierListsTableViewController.h"
#import "tierListViewController.h"
#import "TierListCollectionViewController.h"

@interface tierListsTableViewController ()

@end

@implementation tierListsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    self.title = @"Tier Lists";
    self.differentTierLists = [[NSArray alloc] initWithObjects:@"Solo Queue Tier list",
                                                               @"Competitive Tier List",
                                                               @"Top Tier List",
                                                               @"Mid Tier List",
                                                               @"Jungle Tier List",
                                                               @"Support Tier List",
                                                               @"ADC Tier List",nil];
    [self initializeSoloQueueTierList];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.differentTierLists.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Title" forIndexPath:indexPath];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"Title"];
    }
    
    cell.textLabel.text = self.differentTierLists[indexPath.row];
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
//    flowLayout.itemSize = CGSizeMake(480, 320);
//    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    TierListCollectionViewController *tierVC  = [self.storyboard instantiateViewControllerWithIdentifier:@"TierListCollectionViewController"];
    switch (indexPath.row) {
        case 0:
            tierVC.tier1 = self.soloQueueTierList1;
            tierVC.tier2 = self.soloQueueTierList2;
            tierVC.tier3 = self.soloQueueTierList3;
            tierVC.tierName = self.differentTierLists[0];
            break;
        case 1:
            tierVC.tier1 = self.competitiveTierList;
            tierVC.tierName = self.differentTierLists[1];
            break;
        case 2:
            tierVC.tier1 = self.topTierList;
            tierVC.tierName = self.differentTierLists[2];
            break;
        case 3:
            tierVC.tier1 = self.midTierList;
            tierVC.tierName = self.differentTierLists[3];
            break;
        case 4:
            tierVC.tier1 = self.jungleTierList;
            tierVC.tierName = self.differentTierLists[4];
            break;
        case 5:
            tierVC.tier1 = self.supportTierList;
            tierVC.tierName = self.differentTierLists[5];
            break;
        case 6:
            tierVC.tier1 = self.adcTierList;
            tierVC.tierName = self.differentTierLists[6];
            break;
        default:
            break;
    }
    [self.navigationController pushViewController:tierVC animated:YES];
}
-(void) initializeSoloQueueTierList
{
    self.soloQueueTierList1 = @[
                               @{@"tier": @1, @"imageName": @"Yasuo.png",@"championName":@"Yasuo"},
                               @{@"tier": @1, @"imageName": @"Braum.png",@"championName":@"Braum"},
                               @{@"tier": @1, @"imageName": @"Morgana.png",@"championName":@"Morgana"},
                               @{@"tier": @1, @"imageName": @"Alistar.png",@"championName":@"Alistar"},
                               @{@"tier": @1, @"imageName": @"Talon.png",@"championName":@"Talon"},
                               @{@"tier": @1, @"imageName": @"Tristana.png",@"championName":@"Tristana"},
                               @{@"tier": @1, @"imageName": @"Nidalee.png",@"championName":@"Nidalee"},
                               @{@"tier": @1, @"imageName": @"Maokai.png",@"championName":@"Maokai"},
                               @{@"tier": @1, @"imageName": @"Fizz.png",@"championName":@"Fizz"},
                               @{@"tier": @1, @"imageName": @"Vi.png",@"championName":@"Vi"},
                               @{@"tier": @1, @"imageName": @"JarvanIV.png",@"championName":@"Jarvan IV"},
                               @{@"tier": @1, @"imageName": @"Khazix.png",@"championName":@"Khazix"},
                               @{@"tier": @1, @"imageName": @"Amumu.png",@"championName":@"Amumu"},
                               @{@"tier": @1, @"imageName": @"Leona.png",@"championName":@"Leona"},
                               @{@"tier": @1, @"imageName": @"Blitzcrank.png",@"championName":@"Blitzcrank"},
                               @{@"tier": @1, @"imageName": @"Syndra.png",@"championName":@"Syndra"},
                               @{@"tier": @1, @"imageName": @"Akali.png",@"championName":@"Akali"},
                               ];
    self.soloQueueTierList2 = @[
                               @{@"tier": @2, @"imageName": @"Warwick.png",@"championName":@"Warwick"},
                               @{@"tier": @2, @"imageName": @"Ahri.png",@"championName":@"Ahri"},
                               @{@"tier": @2, @"imageName": @"Katarina.png",@"championName":@"Katarina"},
                               @{@"tier": @2, @"imageName": @"Zed.png",@"championName":@"Zed"},
                               @{@"tier": @2, @"imageName": @"Fiora.png",@"championName":@"Fiora"},
                               @{@"tier": @2, @"imageName": @"Nami.png",@"championName":@"Nami"},
                               @{@"tier": @2, @"imageName": @"Lulu.png",@"championName":@"Lulu"},
                               @{@"tier": @2, @"imageName": @"Lucian.png",@"championName":@"Lucian"},
                               @{@"tier": @2, @"imageName": @"Sona.png",@"championName":@"Sona"},
                               @{@"tier": @2, @"imageName": @"Rengar.png",@"championName":@"Rengar"},
                               @{@"tier": @2, @"imageName": @"LeeSin.png",@"championName":@"Lee Sin"},
                               @{@"tier": @2, @"imageName": @"Ryze.png",@"championName":@"Ryse"},
                               @{@"tier": @2, @"imageName": @"Thresh.png",@"championName":@"Thresh"},
                               @{@"tier": @2, @"imageName": @"Riven.png",@"championName":@"Riven"},
                               @{@"tier": @2, @"imageName": @"Lux.png",@"championName":@"Lux"},
                               ];
    self.soloQueueTierList3 = @[
                               @{@"tier": @3, @"imageName": @"Draven.png",@"championName":@"Draven"},
                               @{@"tier": @3, @"imageName": @"Pantheon.png",@"championName":@"Pantheon"},
                               @{@"tier": @3, @"imageName": @"Nasus.png",@"championName":@"Nasus"},
                               @{@"tier": @3, @"imageName": @"Irelia.png",@"championName":@"Evelynn"},
                               @{@"tier": @3, @"imageName": @"MasterYi.png",@"championName":@"Master Yi"},
                               @{@"tier": @3, @"imageName": @"Ziggs.png",@"championName":@"Ziggs"},
                               @{@"tier": @3, @"imageName": @"Malphite.png",@"championName":@"Malphite"},
                               @{@"tier": @3, @"imageName": @"Orianna.png",@"championName":@"Orianna"},
                               @{@"tier": @3, @"imageName": @"Kayle.png",@"championName":@"Kayle"},
                               @{@"tier": @3, @"imageName": @"KogMaw.png",@"championName":@"KogMaw"},
                               @{@"tier": @3, @"imageName": @"Rumble.png",@"championName":@"Rumble"},
                               @{@"tier": @3, @"imageName": @"Gnar.png",@"championName":@"Gnar"},
                               @{@"tier": @3, @"imageName": @"Corki.png",@"championName":@"Corki"},
                               @{@"tier": @3, @"imageName": @"Irelia.png",@"championName":@"Irelia"},
                               ];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
