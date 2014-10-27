//
//  GuideCollectionViewController.m
//  counterPickLoL
//
//  Created by christian ambriz on 10/26/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "GuideCollectionViewController.h"
#import "CounterHeaderCell.h"
#import "StartingItemsCell.h"


typedef NS_ENUM(NSUInteger, Row) {
    SummonerSpells,
    RunePage,
    StartingItems,
    CoreItems,
};

@interface GuideCollectionViewController ()

@property (strong, nonatomic) IBOutlet UICollectionView *selectGuideController;

@end

@implementation GuideCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //custom initialization
    }
    return self;
}
static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    [self initializeStartingItems];
    [self initializeCoreItems];
    [self initializeSummonerSpells];
    [self initializeChampionRunePage];
    
    self.championGuide = [NSMutableString stringWithString:self.headerChampionLabelText];
    [self.championGuide appendString:@" Guide"];
    self.title = self.championGuide;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    StartingItemsCell *startingItemCell;
    [startingItemCell setBackgroundColor:[UIColor grayColor]];
    NSArray *championStartingItems = self.startingItems[self.headerChampionLabelText];
    NSArray *championCoreItems = self.coreItems[self.headerChampionImageName];
    NSArray *championSummonerSpells = self.summonerSpells[self.headerChampionImageName];
    NSArray *championRunePage = self.championRunePage[self.headerChampionImageName];
    startingItemCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"StartingItemsCell" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case RunePage:
            startingItemCell.startingItemsLabel.text = @"Champion Runes";
            
            startingItemCell.startItemLabelOne.text = championRunePage[0];
            startingItemCell.startItemLabelTwo.text = championRunePage[1];
            startingItemCell.startItemLabelThree.text = championRunePage[2];
            startingItemCell.startItemLabelFour.text = championRunePage[3];
            
            startingItemCell.startItemImageOne.image = [UIImage imageNamed:championRunePage[0]];
            startingItemCell.startItemImageTwo.image = [UIImage imageNamed:championRunePage[1]];
            startingItemCell.startItemImageThree.image = [UIImage imageNamed:championRunePage[2]];
            startingItemCell.startItemImageFour.image = [UIImage imageNamed:championRunePage[3]];
            break;
        case SummonerSpells:
            startingItemCell.startingItemsLabel.text = @"Summoner Spells";
            
            startingItemCell.startItemLabelOne.text = championSummonerSpells[0];
            startingItemCell.startItemLabelTwo.text = championSummonerSpells[1];
            startingItemCell.startItemLabelThree.text = championSummonerSpells[2];
            
            startingItemCell.startItemImageOne.image = [UIImage imageNamed:championSummonerSpells[0]];
            startingItemCell.startItemImageTwo.image = [UIImage imageNamed:championSummonerSpells[1]];
            startingItemCell.startItemImageThree.image = [UIImage imageNamed:championSummonerSpells[2]];
            break;
        case StartingItems:
            startingItemCell.startingItemsLabel.text = @"Starting Items";
            startingItemCell.startItemLabelOne.text = championStartingItems[0];
            startingItemCell.startItemLabelTwo.text = championStartingItems[1];
            startingItemCell.startItemLabelThree.text = championStartingItems[2];
            
            startingItemCell.startItemImageOne.image = [UIImage imageNamed:championStartingItems[0]];
            startingItemCell.startItemImageTwo.image = [UIImage imageNamed:championStartingItems[1]];
            startingItemCell.startItemImageThree.image =[UIImage imageNamed:championStartingItems[2]];
            break;
        case CoreItems:
            startingItemCell.startingItemsLabel.text = @"Core Items";
            startingItemCell.startItemLabelOne.text = championCoreItems[0];
            startingItemCell.startItemLabelTwo.text = championCoreItems[1];
            startingItemCell.startItemLabelThree.text = championCoreItems[2];
            startingItemCell.startItemLabelFour.text = championCoreItems[3];
            startingItemCell.startItemLabelFive.text = championCoreItems[4];
            
            startingItemCell.startItemImageOne.image = [UIImage imageNamed:championCoreItems[0]];
            startingItemCell.startItemImageTwo.image = [UIImage imageNamed:championCoreItems[1]];
            startingItemCell.startItemImageThree.image = [UIImage imageNamed:championCoreItems[2]];
            startingItemCell.startItemImageFour.image = [UIImage imageNamed:championCoreItems[3]];
            startingItemCell.startItemImageFive.image = [UIImage imageNamed:championCoreItems[4]];
        default:
            break;
    }
    return startingItemCell;
    
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *cell;
    if (kind == UICollectionElementKindSectionHeader)
    {
        CounterHeaderCell * reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"counterHeader" forIndexPath:indexPath];
        reusableView.counterChampionImage.image = [UIImage imageNamed:self.headerChampionImageName];
        reusableView.counterChampionLabel.text = self.championGuide;
        cell = reusableView;
    }
    return cell;
}

-(void) initializeStartingItems
{
    self.startingItems = @{
                           @"Aatrox": @[@"Health Potion",@"Doran's Blade",@"Warding Totem"],
                           };
}


-(void) initializeCoreItems
{
    self.coreItems = @{
                       @"Aatrox": @[@"Mercury's Treads", @"Spirit Visage",@"Blade of the Ruined King",@"Randuin's Omen",@"The Bloodthirster",@"Last Whisper"]
                       };
}

-(void) initializeSummonerSpells
{
    self.summonerSpells = @{
                            @"Aatrox": @[@"Flash",@"Ignite",@"Teleport"]
                            };
}

-(void) initializeChampionRunePage
{
    self.championRunePage = @{
                              @"Aatrox": @[@"Mark of Attack Damage", @"Seal of Armor",@"Glyph of Scaling Magic Resist", @"Quintessence of Attack Damage"]
                              };
}
@end