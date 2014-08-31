//
//  TierListCollectionViewController.m
//  counterPickLoL
//
//  Created by christian ambriz on 8/30/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "TierListCollectionViewController.h"
#import "customCell.h"
#import "TierHeaderCell.h"

typedef NS_ENUM(NSUInteger,Section) {
    SectionTierOne,
    SectionTierTwo,
    SectionTierThree
};
@interface TierListCollectionViewController ()
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation TierListCollectionViewController

- (id)initWithCollectionViewLayout:(UICollectionViewLayout *)layout{
    self = [super initWithCollectionViewLayout:layout];
    if (self) {
        // additional setup here if required.
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = self.tierName;
    
}

// datasource and delegate method
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    switch (section) {
        case SectionTierOne:
            return (self.tier1.count);
            break;
        case SectionTierTwo:
            return (self.tier2.count);
            break;
        case SectionTierThree:
            return (self.tier3.count);
            break;
        default:
            break;
    }
    return 0;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *champion;
    CustomCell *customCell;
    switch (indexPath.section) {
        case SectionTierOne:
            champion = self.tier1[indexPath.item];
            customCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
            customCell.championNameLabel.text = [NSString stringWithString:champion[@"championName"]];
            customCell.championPictureImageView.image = [UIImage imageNamed:champion[@"imageName"]];
            break;
        case SectionTierTwo:
            champion = self.tier2[indexPath.item];
            customCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
            customCell.championNameLabel.text = [NSString stringWithString:champion[@"championName"]];
            customCell.championPictureImageView.image = [UIImage imageNamed:champion[@"imageName"]];
            break;
        case SectionTierThree:
            champion = self.tier3[indexPath.item];
            customCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
            customCell.championNameLabel.text = [NSString stringWithString:champion[@"championName"]];
            customCell.championPictureImageView.image = [UIImage imageNamed:champion[@"imageName"]];
            break;
        default:
            break;
    }
    return customCell;
}
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *cell;
    if (kind == UICollectionElementKindSectionHeader) {
        TierHeaderCell *reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"header" forIndexPath:indexPath];
        switch (indexPath.section) {
            case SectionTierOne:
                reusableView.tierRankLabel.text = @"Tier 1";
                break;
            case SectionTierTwo:
                reusableView.tierRankLabel.text = @"Tier 2";
                break;
            case SectionTierThree:
                reusableView.tierRankLabel.text = @"Tier 3";
                break;
            default:
                break;
        }
        cell = reusableView;
    }
    
    return cell;
    
}
@end
