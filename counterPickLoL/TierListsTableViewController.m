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

@interface TierListsTableViewController ()

@end

@implementation TierListsTableViewController

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
    [self initializeSoloQueueTierLists];
    [self initializeompetitiveTierLists];
    [self initializeTopTierLists];
    [self initializeMidTierLists];
    [self initializeJungleTierLists];
    [self initializeSupportTierLists];
    [self initializeAdcTierLists];
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
    cell.backgroundColor = [UIColor blackColor];
    cell.textLabel.textColor = [UIColor colorWithRed:255/255.0 green:223/255.0 blue:99.0/255.0 alpha:1.0];
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TierListCollectionViewController *tierVC  = [self.storyboard instantiateViewControllerWithIdentifier:@"TierListCollectionViewController"];
    switch (indexPath.row) {
        case 0:
            tierVC.tier1 = self.soloQueueTierList1;
            tierVC.tier2 = self.soloQueueTierList2;
            tierVC.tier3 = self.soloQueueTierList3;
            tierVC.tierName = self.differentTierLists[0];
            break;
        case 1:
            tierVC.tier1 = self.competitiveTierList1;
            tierVC.tier2 = self.competitiveTierList2;
            tierVC.tier3 = self.competitiveTierList3;
            tierVC.tierName = self.differentTierLists[1];
            break;
        case 2:
            tierVC.tier1 = self.topTierList1;
            tierVC.tier2 = self.topTierList2;
            tierVC.tier3 = self.topTierList3;
            tierVC.tierName = self.differentTierLists[2];
            break;
        case 3:
            tierVC.tier1 = self.midTierList1;
            tierVC.tier2 = self.midTierList2;
            tierVC.tier3 = self.midTierList3;
            tierVC.tierName = self.differentTierLists[3];
            break;
        case 4:
            tierVC.tier1 = self.jungleTierList1;
            tierVC.tier2 = self.jungleTierList2;
            tierVC.tier3 = self.jungleTierList3;
            tierVC.tierName = self.differentTierLists[4];
            break;
        case 5:
            tierVC.tier1 = self.supportTierList1;
            tierVC.tier2 = self.supportTierList2;
            tierVC.tier3 = self.supportTierList3;
            tierVC.tierName = self.differentTierLists[5];
            break;
        case 6:
            tierVC.tier1 = self.adcTierList1;
            tierVC.tier2 = self.adcTierList2;
            tierVC.tier3 = self.adcTierList3;
            tierVC.tierName = self.differentTierLists[6];
            break;
        default:
            break;
    }
    [self.navigationController pushViewController:tierVC animated:YES];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] init];
    
    return view;
}

-(void) initializeSoloQueueTierLists
{
    self.soloQueueTierList1 = @[
                               @{@"imageName": @"Rammus.png",@"championName":@"Rammus"},
                               @{@"imageName": @"Yasuo.png",@"championName":@"Yasuo"},
                               @{@"imageName": @"Braum.png",@"championName":@"Braum"},
                               @{@"imageName": @"Alistar.png",@"championName":@"Alistar"},
                               @{@"imageName": @"Talon.png",@"championName":@"Talon"},
                               @{@"imageName": @"Tristana.png",@"championName":@"Tristana"},
                               @{@"imageName": @"Nidalee.png",@"championName":@"Nidalee"},
                               @{@"imageName": @"Maokai.png",@"championName":@"Maokai"},
                               @{@"imageName": @"Fizz.png",@"championName":@"Fizz"},
                               @{@"imageName": @"Vi.png",@"championName":@"Vi"},
                               @{@"imageName": @"Khazix.png",@"championName":@"Kha'zix"},
                               @{@"imageName": @"Amumu.png",@"championName":@"Amumu"},
                               @{@"imageName": @"Blitzcrank.png",@"championName":@"Blitzcrank"},
                               @{@"imageName": @"Syndra.png",@"championName":@"Syndra"},
                               @{@"imageName": @"Akali.png",@"championName":@"Akali"},
                               @{@"imageName": @"Warwick.png",@"championName":@"Warwick"},
                               @{@"imageName": @"Janna.png",@"championName":@"Janna"},
                               @{@"imageName": @"Katarina.png",@"championName":@"Katarina"},
                               ];
    self.soloQueueTierList2 = @[
                               @{@"imageName": @"Morgana.png",@"championName":@"Morgana"},
                               @{@"imageName": @"Ahri.png",@"championName":@"Ahri"},
                               @{@"imageName": @"Leona.png",@"championName":@"Leona"},
                               @{@"imageName": @"Zed.png",@"championName":@"Zed"},
                               @{@"imageName": @"Fiora.png",@"championName":@"Fiora"},
                               @{@"imageName": @"Nami.png",@"championName":@"Nami"},
                               @{@"imageName": @"Lulu.png",@"championName":@"Lulu"},
                               @{@"imageName": @"Lucian.png",@"championName":@"Lucian"},
                               @{@"imageName": @"Sona.png",@"championName":@"Sona"},
                               @{@"imageName": @"Rengar.png",@"championName":@"Rengar"},
                               @{@"imageName": @"LeeSin.png",@"championName":@"Lee Sin"},
                               @{@"imageName": @"Ryze.png",@"championName":@"Ryse"},
                               @{@"imageName": @"Thresh.png",@"championName":@"Thresh"},
                               @{@"imageName": @"Riven.png",@"championName":@"Riven"},
                               @{@"imageName": @"Lux.png",@"championName":@"Lux"},
                               ];
    self.soloQueueTierList3 = @[
                               @{@"imageName": @"Draven.png",@"championName":@"Draven"},
                               @{@"imageName": @"Pantheon.png",@"championName":@"Pantheon"},
                               @{@"imageName": @"Nasus.png",@"championName":@"Nasus"},
                               @{@"imageName": @"Evelynn.png",@"championName":@"Evelynn"},
                               @{@"imageName": @"MasterYi.png",@"championName":@"Master Yi"},
                               @{@"imageName": @"Ziggs.png",@"championName":@"Ziggs"},
                               @{@"imageName": @"Malphite.png",@"championName":@"Malphite"},
                               @{@"imageName": @"Orianna.png",@"championName":@"Orianna"},
                               @{@"imageName": @"Kayle.png",@"championName":@"Kayle"},
                               @{@"imageName": @"KogMaw.png",@"championName":@"KogMaw"},
                               @{@"imageName": @"Rumble.png",@"championName":@"Rumble"},
                               @{@"imageName": @"Gnar.png",@"championName":@"Gnar"},
                               @{@"imageName": @"Corki.png",@"championName":@"Corki"},
                               @{@"imageName": @"Irelia.png",@"championName":@"Irelia"},
                               @{@"imageName": @"JarvanIV.png",@"championName":@"Jarvan IV"},
                               ];
}

-(void) initializeompetitiveTierLists
{
    self.competitiveTierList1 = @[
                                  @{@"imageName": @"Nidalee.png",@"championName":@"Nidalee"},
                                  @{@"imageName": @"Maokai.png",@"championName":@"Maokai"},
                                  @{@"imageName": @"Alistar.png",@"championName":@"Alistar"},
                                  @{@"imageName": @"Morgana.png",@"championName":@"Morgana"},
                                  @{@"imageName": @"Syndra.png",@"championName":@"Syndra"},
                                  @{@"imageName": @"Nami.png",@"championName":@"Nami"},
                                  @{@"imageName": @"LeeSin.png",@"championName":@"Lee Sin"},
                                  @{@"imageName": @"Tristana.png",@"championName":@"Tristana"},
                                  @{@"imageName": @"Ryze.png",@"championName":@"Ryze"},
                                  @{@"imageName": @"Orianna.png",@"championName":@"Orianna"},
                                  @{@"imageName": @"Zed.png",@"championName":@"Zed"},
                                  @{@"imageName": @"Yasuo.png",@"championName":@"Yasuo"},
                                  @{@"imageName": @"Lucian.png",@"championName":@"Lucian"},
                                  @{@"imageName": @"Rengar.png",@"championName":@"Rengar"},
                                  @{@"imageName": @"Khazix.png",@"championName":@"Kha'zix"},
                                  @{@"imageName": @"Janna.png", @"championName":@"Janna"},
                                  @{@"imageName": @"Rumble.png", @"championName":@"Rumble"},
                                  @{@"imageName": @"Fizz.png",@"championName":@"Fizz"},
                                  @{@"imageName": @"Zilean.png",@"championName":@"Zilean"},
                                  ];
    self.competitiveTierList2 = @[
                                  @{@"imageName": @"Xerath.png",@"championName":@"Xerath"},
                                  @{@"imageName": @"Corki.png",@"championName":@"Corki"},
                                  @{@"imageName": @"Braum.png",@"championName":@"Braum"},
                                  @{@"imageName": @"Lulu.png",@"championName":@"Lulu"},
                                  @{@"imageName": @"DrMundo.png",@"championName":@"Dr. Mundo"},
                                  @{@"imageName": @"Twitch.png",@"championName":@"Twitch"},
                                  @{@"imageName": @"Irelia.png",@"championName":@"Irelia"},
                                  @{@"imageName": @"Ziggs.png",@"championName":@"Ziggs"},
                                  @{@"imageName": @"Riven.png",@"championName":@"Riven"},
                                  @{@"imageName": @"JarvanIV.png",@"championName":@"Jarvan IV"},
                                  @{@"imageName": @"Nocturne.png",@"championName":@"Nocturne"},
                                  @{@"imageName": @"Elise.png",@"championName":@"Elise"},
                                  @{@"imageName": @"Nunu.png",@"championName":@"Nunu"},
                                  @{@"imageName": @"Thresh.png",@"championName":@"Thresh"},
                                  @{@"imageName": @"Talon.png",@"championName":@"Talon"},
                                  @{@"imageName": @"Kassadin.png",@"championName":@"Kassadin"},
                                  @{@"imageName": @"Kayle.png",@"championName":@"Kayle"},
                                  ];
    
    self.competitiveTierList3 = @[
                                  @{@"imageName": @"Vi.png",@"championName":@"Vi"},
                                  @{@"imageName": @"Leona.png",@"championName":@"Leona"},
                                  @{@"imageName": @"Vayne.png",@"championName":@"Vayne"},
                                  @{@"imageName": @"Aatrox.png",@"championName":@"Aatrox"},
                                  @{@"imageName": @"Akali.png",@"championName":@"Akali"},
                                  @{@"imageName": @"Graves.png",@"championName":@"Graves"},
                                  @{@"imageName": @"Ezreal.png",@"championName":@"Ezreal"},
                                  @{@"imageName": @"TwistedFate.png",@"championName":@"Twisted Fate"},
                                  @{@"imageName": @"Olaf.png",@"championName":@"Olaf"},
                                  @{@"imageName": @"Jayce.png",@"championName":@"Jayce"},
                                  @{@"imageName": @"Evelynn.png",@"championName":@"Evelynn"},
                                  @{@"imageName": @"Nasus.png",@"championName":@"Nasus"},
                                  @{@"imageName": @"Jax.png",@"championName":@"Jax"},
                                  @{@"imageName": @"Amumu.png",@"championName":@"Amumu"},
                                  @{@"imageName": @"Ahri.png",@"championName":@"Ahri"},
                                  @{@"imageName": @"Caitlyn.png",@"championName":@"Caitlyn"},
                                  ];
}

-(void) initializeTopTierLists
{
    self.topTierList1 = @[
                           @{@"imageName": @"Alistar.png",@"championName":@"Alistar"},
                           @{@"imageName": @"Maokai.png",@"championName":@"Maokai"},
                           @{@"imageName": @"Nidalee.png",@"championName":@"Nidalee"},
                           @{@"imageName": @"Ryze.png",@"championName":@"Ryze"},
                           ];
    self.topTierList2 = @[
                          @{@"imageName": @"DrMundo.png",@"championName":@"Dr. Mundo"},
                          @{@"imageName": @"Lulu.png",@"championName":@"Lulu"},
                          @{@"imageName": @"Rumble.png",@"championName":@"Rumble"},
                          @{@"imageName": @"Nasus.png",@"championName":@"Nasus"},
                          @{@"imageName": @"Riven.png",@"championName":@"Riven"},
                          @{@"imageName": @"Irelia.png",@"championName":@"Irelia"},
                          @{@"imageName": @"Jax.png",@"championName":@"Jax"},
                          @{@"imageName": @"Kayle.png",@"championName":@"Kayle"},
                          ];
    self.topTierList3 = @[
                          @{@"imageName": @"Aatrox.png",@"championName":@"Aatrox"},
                          @{@"imageName": @"Yorick.png",@"championName":@"Yorick"},
                          @{@"imageName": @"Shyvana.png",@"championName":@"Shyvana"},
                          @{@"imageName": @"Jayce.png",@"championName":@"Jayce"},
                          @{@"imageName": @"Chogath.png",@"championName":@"Cho'gath"},
                          @{@"imageName": @"Olaf.png",@"championName":@"Olaf"},
                          @{@"imageName": @"Swain.png",@"championName":@"Swain"},
                          @{@"imageName": @"Malphite.png",@"championName":@"Malphite"},
                          ];
}

-(void) initializeMidTierLists
{
    self.midTierList1 = @[
                          @{@"imageName": @"Syndra.png",@"championName":@"Syndra"},
                          @{@"imageName": @"Yasuo.png",@"championName":@"Yasuo"},
                          @{@"imageName": @"Zed.png",@"championName":@"Zed"},
                          @{@"imageName": @"Orianna.png",@"championName":@"Orianna"},
                          ];
    
    self.midTierList2 = @[
                          @{@"imageName": @"Talon.png",@"championName":@"Talon"},
                          @{@"imageName": @"Xerath.png",@"championName":@"Xerath"},
                          @{@"imageName": @"Ziggs.png",@"championName":@"Ziggs"},
                          @{@"imageName": @"Fizz.png",@"championName":@"Fizz"},
                          @{@"imageName": @"Ahri.png",@"championName":@"Ahri"},
                          @{@"imageName": @"Akali.png",@"championName":@"Akali"},
                          @{@"imageName": @"Ryze.png",@"championName":@"Ryze"},
                          ];
    self.midTierList3 = @[
                          @{@"imageName": @"Tristana.png",@"championName":@"Tristana"},
                          @{@"imageName": @"KogMaw.png",@"championName":@"Kog'Maw"},
                          @{@"imageName": @"Lux.png",@"championName":@"Lux"},
                          @{@"imageName": @"Malzahar.png",@"championName":@"Malzahar"},
                          @{@"imageName": @"Lulu.png",@"championName":@"Lulu"},
                          @{@"imageName": @"Swain.png",@"championName":@"Swain"},
                          @{@"imageName": @"VelKoz.png",@"championName":@"Vel'Koz"},
                          @{@"imageName": @"Jayce.png",@"championName":@"Jayce"},
                          @{@"imageName": @"Kassadin.png",@"championName":@"Kassadin"},
                          ];
}

-(void) initializeJungleTierLists
{
    self.jungleTierList1 = @[
                             @{@"imageName": @"Khazix.png",@"championName":@"Kah'Zix"},
                             @{@"imageName": @"LeeSin.png",@"championName":@"Lee Sin"},
                             @{@"imageName": @"Nunu.png",@"championName":@"Nunu"},
                             @{@"imageName": @"Rengar.png",@"championName":@"Rengar"},
                             ];
    self.jungleTierList2 = @[
                             @{@"imageName": @"Nocturne.png",@"championName":@"Nocturne"},
                             @{@"imageName": @"Elise.png",@"championName":@"Elise"},
                             @{@"imageName": @"Evelynn.png",@"championName":@"Evelynn"},
                             @{@"imageName": @"Zac.png",@"championName":@"Zac"},
                             @{@"imageName": @"Maokai.png",@"championName":@"Maokai"},
                             @{@"imageName": @"JarvanIV.png",@"championName":@"Jarvan IV"},
                             @{@"imageName": @"Amumu.png",@"championName":@"Amumu"},
                             ];
    self.jungleTierList3 = @[
                             @{@"imageName": @"Aatrox.png",@"championName":@"Aatrox"},
                             @{@"imageName": @"Volibear.png",@"championName":@"Volibear"},
                             @{@"imageName": @"Pantheon.png",@"championName":@"Pantheon"},
                             @{@"imageName": @"Vi.png",@"championName":@"Vi"},
                             @{@"imageName": @"MasterYi.png",@"championName":@"Master Yi"},
                             @{@"imageName": @"Skarner.png",@"championName":@"Skarner"},
                             @{@"imageName": @"XinZhao.png",@"championName":@"Xin Zhao"},
                             @{@"imageName": @"Wukong.png",@"championName":@"Wukong"},
                             @{@"imageName": @"Shyvana.png",@"championName":@"Shyvana"},
                             ];
}

-(void) initializeSupportTierLists
{
    self.supportTierList1 = @[
                              @{@"imageName": @"Nami.png",@"championName":@"Nami"},
                              @{@"imageName": @"Braum.png",@"championName":@"Braum"},
                              @{@"imageName": @"Thresh.png",@"championName":@"Thresh"},
                              @{@"imageName": @"Janna.png",@"championName":@"Janna"},
                              @{@"imageName": @"Zilean.png",@"championName":@"Zilean"},
                              ];
    self.supportTierList2 = @[
                              @{@"imageName": @"Morgana.png",@"championName":@"Morgana"},
                              @{@"imageName": @"Leona.png",@"championName":@"Leona"},
                              @{@"imageName": @"Blitzcrank.png",@"championName":@"Blitzcrank"},
                              @{@"imageName": @"Lulu.png",@"championName":@"Lulu"},
                              @{@"imageName": @"Morgana.png",@"championName":@"Morgana"},
                              @{@"imageName": @"Alistar.png",@"championName":@"Alistar"},
                              ];
    self.supportTierList3 = @[
                              @{@"imageName": @"Sona.png",@"championName":@"Sona"},
                              @{@"imageName": @"Zyra.png",@"championName":@"Zyra"},
                              @{@"imageName": @"VelKoz.png",@"championName":@"Vel'Koz"},
                              @{@"imageName": @"Annie.png",@"championName":@"Annie"},
                              @{@"imageName": @"Nunu.png",@"championName":@"Nunu"},
                              ];
}

-(void) initializeAdcTierLists
{
    self.adcTierList1 = @[
                          @{@"imageName": @"Tristana.png",@"championName":@"Tristana"},
                          @{@"imageName": @"Lucian.png",@"championName":@"Lucian"},
                          @{@"imageName": @"KogMaw.png",@"championName":@"Kog'Maw"},
                          @{@"imageName": @"Corki.png",@"championName":@"Corki"},
                          ];
    self.adcTierList2 = @[
                          @{@"imageName": @"Jinx.png",@"championName":@"Jinx"},
                          @{@"imageName": @"Vayne.png",@"championName":@"Vayne"},
                          @{@"imageName": @"Twitch.png",@"championName":@"Twitch"},
                          @{@"imageName": @"Caitlyn.png",@"championName":@"Caitlyn"},
                          ];
    self.adcTierList3 = @[
                          @{@"imageName": @"Ezreal.png",@"championName":@"Ezreal"},
                          @{@"imageName": @"Draven.png",@"championName":@"Draven"},
                          @{@"imageName": @"Graves.png",@"championName":@"Graves"},
                          @{@"imageName": @"Varus.png",@"championName":@"Varus"},
                          ];
}

@end
