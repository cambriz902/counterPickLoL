//
//  ChampionList.m
//  counterPickLoL
//
//  Created by christian ambriz on 10/24/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
#import "ChampionList.h"

@interface ChampionList ()

@property (strong, nonatomic) NSString *getLoLStaticDataChampions;
@property (strong, nonatomic) NSMutableArray *championJSON;
@property (strong, nonatomic) NSMutableDictionary *championDict;

@end
@implementation ChampionList

- (id) initWithJSON{
    self = [self init];
    if (self) {
        //initialize with get request
        self.getLoLStaticDataChampions = @"https://prototype-api.herokuapp.com/champions.json";
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        [manager GET:self.getLoLStaticDataChampions parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
            
            self.championJSON = (NSMutableArray *)responseObject;
            [self initializeChampionList:self.championJSON];
            
            
            [[NSNotificationCenter defaultCenter]
             postNotificationName:@"initWithJSONFinishedLoading"
             object:nil];
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
        }];
    }
    return self;
}

- (void)initializeChampionList:(NSMutableArray *) championList{
    if(championList == NULL){
        [NSException raise:@"Invalid NSDictionary NULL value" format:@"Invalid dictionary %@",championList];
        return;
    }
    self.championNames = [[NSMutableArray alloc] init];
    self.championNamesPortraits = [[NSMutableDictionary alloc] init];
    for (int i = 0 ; i < championList.count; i++) {
        [self.championNames addObject:championList[i][@"name"]];
        [self.championNamesPortraits setObject:championList[i][@"portrait"] forKey:championList[i][@"name"]];
        
    }
    [self.championNames sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
}
@end