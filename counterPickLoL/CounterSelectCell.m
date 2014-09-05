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

@interface CounterSelectCell ()

@end

@implementation CounterSelectCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        // Initialization code
    }
    return self;
}


- (void) viewDidLoad
{
    [self initializeChampionList];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{/*
    for(NSString *championNames in self.championList){
        
        if ([self.selectChampionCounter.text isEqualToString:championNames]) {
            CountersCollectionViewController *counterView = [[UIStoryboard storyboardWithName:@"MainStoryboardName" bundle: nil] instantiateViewControllerWithIdentifier:@"CountersCollectionViewController"];
            counterView.headerChampionImageName = self.selectChampionCounter.text;
            counterView.headerChampionLabelText = self.selectChampionCounter.text;
            [[[self superclass] navigationController] pushViewController:counterView animated:YES];
        }
    }
    self.selectChampionCounter.text = @"yolo";
    [self.selectChampionCounter resignFirstResponder];*/
    return YES;
}


- (void)textFieldDidBeginEditing:(UITextField *)textField;
{

}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range
                                                    replacementString:(NSString *)string {
    return YES;
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
