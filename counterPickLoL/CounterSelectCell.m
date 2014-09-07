//
//  CounterSelectCell.m
//  counterPickLoL
//
//  Created by christian ambriz on 9/1/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "CounterSelectCell.h"
#import "SelectCounterPickChampion.h"
#import "CountersCollectionViewController.h"

@implementation CounterSelectCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        // Initialization code
    }
    return self;
}

- (void) viewDidLoads
{
    
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self initializeChampionList];
    BOOL championNotFound = YES;
    self.selectChampionCounter.text = [self.selectChampionCounter.text capitalizedString];
    for(NSString *championNames in self.championList){
        if ([self.selectChampionCounter.text isEqualToString:championNames]) {
            [self.delegate didPressSearch:self.selectChampionCounter.text championImage:self.selectChampionCounter.text];
            championNotFound = NO;
            break;
        }
    }
    if(championNotFound)
    {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:
                                  @"Error" message:@"Check Champion Spelling" delegate:self
                                                 cancelButtonTitle:@"Ok" otherButtonTitles:Nil, nil];
        [alertView show];
        //self.selectChampionCounter.text = @"Check Champion Spelling";
    }
    [self.selectChampionCounter resignFirstResponder];
    
}

-(void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
{

}

- (void) initializeChampionList
{
    self.championList = @[
                          @"Aatrox",@"Ahri",@"Akali",@"Alistar",@"Amumu",@"Anivia",@"Annie",@"Ashe",
                          @"Blitzcrank",@"Brand",@"Braum",@"Caitlyn",@"Cassiopeia",@"Chogath",
                          @"Corki",@"Darius",@"Diana",@"Draven",@"Dr. Mundo",@"Elise",@"Evelynn",
                          @"Ezreal",@"Fiddlesticks",@"Fiora",@"Fizz",@"Galio",@"Gangplank",@"Garen",
                          @"Gnar",@"Gragas",@"Graves",@"Hecarim",@"Heimerdinger",@"Irelia",@"Janna",
                          @"Jarvan IV",@"Jax",@"Jayce",@"Jinx",@"Karma",@"Karthus",@"Kassadin",
                          @"Katarina",@"Kayle",@"Kennen",@"Kha'Zix",@"Kog'Maw",@"Leblanc",@"Lee Sin",
                          @"Leona",@"Lissandra",@"Lucian",@"Lulu",@"Lux",@"Malphite",@"Malzahar",
                          @"Maokai",@"Master Yi",@"Miss Fortune",@"Wukong",@"Mordekaiser",@"Morgana",
                          @"Nami",@"Nasus",@"Nautilus",@"Nidalee",@"Nocturne",@"Nunu",@"Olaf",@"Orianna",
                          @"Pantheon",@"Poppy",@"Quinn",@"Rammus",@"Renekton",@"Rengar",@"Riven",
                          @"Rumble",@"Ryze",@"Sejuani",@"Shaco",@"Shen",@"Shyvana",@"Singed",@"Sion",
                          @"Sivir",@"Skarner",@"Sona",@"Soraka",@"Swain",@"Syndra",@"Talon",@"Taric",
                          @"Teemo",@"Thresh",@"Tristana",@"Trundle",@"Tryndamere",@"Twisted Fate",
                          @"Twitch",@"Udyr",@"Urgot",@"Varus",@"Vayne",@"Veigar",@"Vel'Koz",@"Vi",
                          @"Viktor",@"Vladimir",@"Volibear",@"Warwick",@"Xerath",@"Xin'Zhao",@"Yasuo",
                          @"Yorick",@"Zac",@"Zed",@"Ziggs",@"Zilean",@"Zyra",
                          ];
}

@end
