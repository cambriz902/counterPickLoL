//
//  SelectCounterPickChampion.m
//  counterPickLoL
//
//  Created by christian ambriz on 8/31/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "SelectCounterPickChampion.h"
#import "CustomCell.h"
#import "CounterSelectCell.h"
#import "CountersCollectionViewController.h"

@interface SelectCounterPickChampion () <SearchBarReturnDelegate>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation SelectCounterPickChampion

- (id)initWithCollectionViewLayout:(UICollectionViewLayout *)layout{
    if (self) {
        // additional setup here if required.
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.storyboard instantiateViewControllerWithIdentifier:@"SelectCounterPickChampion"];
    self.champions = [[ChampionList alloc] initWithJSON];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(initializeChampionList)
                                                 name:@"initWithJSONFinishedLoading"
                                               object:nil];
    self.title = @"Counter Pick";
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
    return self.championNames.count;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *customCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    customCell.championNameLabel.text = [NSString stringWithString:self.championNames[indexPath.item]];
    customCell.championPictureImageView.image = [UIImage imageNamed:self.champions.championNamesPortraits[self.championNames[indexPath.item]]];
    return customCell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *cell;
    if (kind == UICollectionElementKindSectionHeader) {
        CounterSelectCell *reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"championSearchBar" forIndexPath:indexPath];
        reusableView.delegate = self;
        [[UILabel appearanceWhenContainedIn:[UISearchBar class], nil] setTextColor:[UIColor colorWithRed:255/255.0 green:223/255.0 blue:99.0/255.0 alpha:1.0]];
        cell = reusableView;
    }
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    CountersCollectionViewController *counterView = [self.storyboard instantiateViewControllerWithIdentifier:@"CountersCollectionViewController"];
    
    counterView.headerChampionLabelText = self.championNames[indexPath.item];
    counterView.headerChampionImageName = self.champions.championNamesPortraits[self.championNames[indexPath.item]];
         
    [self.navigationController pushViewController:counterView animated:YES];
}

#pragma mark - SearchBarReturnDelegate
-(void) didPressSearch:(NSString *)championName championImage:(NSString *)championImage
{
    CountersCollectionViewController *counterView = [self.storyboard instantiateViewControllerWithIdentifier:@"CountersCollectionViewController"];
    counterView.headerChampionImageName = championName;
    counterView.headerChampionLabelText = championImage;
    
    [self.navigationController pushViewController:counterView animated:YES];
}

-(void) initializeChampionList
{
    self.championNames = [[NSArray alloc] init];
    self.championNames = self.champions.championNames;
    [self.collectionView reloadData];
}

@end
