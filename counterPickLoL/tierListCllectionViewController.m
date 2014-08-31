//
//  tierListCllectionViewController.m
//  counterPickLoL
//
//  Created by christian ambriz on 8/29/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "tierListCllectionViewController.h"
#import "CustomCell.h"

@interface tierListCllectionViewController ()

@end

@implementation tierListCllectionViewController

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
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSLog(@"items in tier1  = %d", self.tier1.count);
    return (self.tier1.count);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self.collectionView registerClass:[CustomCell class] forCellWithReuseIdentifier:@"myCell"];
    CustomCell *customCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    NSDictionary *champion = self.tier1[indexPath.item];
    //customCell.championNameLabel.text = [NSString stringWithString:champion[@"championName"]];
    //customCell.championPictureImageView.image = [UIImage imageNamed:champion[@"imageName"]];
    
    return customCell;
}
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
