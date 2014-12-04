//
//  CountersCollectionViewController.m
//  counterPickLoL
//
//  Created by christian ambriz on 9/1/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "CountersCollectionViewController.h"
#import "CounterHeaderCell.h"
#import "CounterSelectCell.h"
#import "CounterChampionsCell.h"


typedef NS_ENUM(NSUInteger, Row) {
    WeakAgainst,
    StrongAgainst
};

@interface CountersCollectionViewController ()

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CountersCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.championsCounters = [[ChampionsCounters alloc] initWithJSON];
    self.championToCounter = [NSMutableString stringWithString:self.headerChampionLabelText];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(initializeChampionStrongWeakCounters) name:@"initWithJSONFinishedLoading"
                                               object:nil];
    [self.championToCounter appendString:@" Counters"];
    self.title = self.championToCounter;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 2;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CounterChampionsCell *counterChampionCell;
    [counterChampionCell setBackgroundColor:[UIColor grayColor]];
    NSMutableString *championTypeHeader = [NSMutableString stringWithString:self.headerChampionLabelText];
    counterChampionCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"counterChampionsCell" forIndexPath:indexPath];
    switch (indexPath.row) {
        case WeakAgainst:
            [championTypeHeader appendString:@"'s Weak Against"];
            counterChampionCell.counterType.text = championTypeHeader;
            counterChampionCell.counterLabelOne.text = self.championCounters.weakOne;
            counterChampionCell.counterLabelTwo.text = self.championCounters.weakTwo;
            counterChampionCell.counterLabelThree.text = self.championCounters.weakThree;
            counterChampionCell.counterLabelFour.text = self.championCounters.weakFour;
            counterChampionCell.counterLabelFive.text = self.championCounters.weakFive;
            
            counterChampionCell.counterImageOne.image = [UIImage imageNamed:self.championCounters.weakOne];
            counterChampionCell.counterImageTwo.image = [UIImage imageNamed:self.championCounters.weakTwo];
            counterChampionCell.counterImageThree.image = [UIImage imageNamed:self.championCounters.weakThree];
            counterChampionCell.counterImageFour.image = [UIImage imageNamed:self.championCounters.weakFour];
            counterChampionCell.counterImageFive.image = [UIImage imageNamed:self.championCounters.weakFive];
            break;
        case StrongAgainst:
            [championTypeHeader appendString:@"'s Strong Against"];
            counterChampionCell.counterType.text = championTypeHeader;
            counterChampionCell.counterLabelOne.text = self.championCounters.strongOne;
            counterChampionCell.counterLabelTwo.text = self.championCounters.strongTwo;
            counterChampionCell.counterLabelThree.text = self.championCounters.strongThree;
            counterChampionCell.counterLabelFour.text = self.championCounters.strongFour;
            counterChampionCell.counterLabelFive.text = self.championCounters.strongFive;
            
            counterChampionCell.counterImageOne.image = [UIImage imageNamed:self.championCounters.strongOne];
            counterChampionCell.counterImageTwo.image = [UIImage imageNamed:self.championCounters.strongTwo];
            counterChampionCell.counterImageThree.image = [UIImage imageNamed:self.championCounters.strongThree];
            counterChampionCell.counterImageFour.image = [UIImage imageNamed:self.championCounters.strongFour];
            counterChampionCell.counterImageFive.image = [UIImage imageNamed:self.championCounters.strongFive];
            break;
        default:
            break;
    }
    return counterChampionCell;
}
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *cell;
    if (kind == UICollectionElementKindSectionHeader) {
        CounterHeaderCell *reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"counterHeader" forIndexPath:indexPath];
        reusableView.counterChampionImage.image = [UIImage imageNamed:self.headerChampionImageName];
        reusableView.counterChampionLabel.text = self.championToCounter;
        cell = reusableView;
    }
    return cell;
}

-(void) initializeChampionStrongWeakCounters{
    self.championCounters = [self.championsCounters.championStrongWeakCounters objectForKey:self.headerChampionLabelText];
    [self.collectionView reloadData];
}

@end
