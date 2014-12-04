//
//  ChampionsCounters.m
//  counterPickLoL
//
//  Created by christian ambriz on 12/2/14.
//  Copyright (c) 2014 christian ambriz. All rights reserved.
//

#import "ChampionCounters.h"
#import "ChampionsCounters.h"
#import <AFNetworking/AFNetworking.h>


@interface ChampionsCounters ()

@property (strong, nonatomic) NSString *championsCountersURL;
@property (strong, nonatomic) NSMutableArray *championJSON;
@property (strong, nonatomic) NSMutableDictionary *championDict;

@end

@implementation ChampionsCounters

- (id) initWithJSON{
    self = [self init];
    if (self) {
        //initialize with get request
        self.championsCountersURL = @"https://prototype-api.herokuapp.com/champion_counters.json";
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        [manager GET:self.championsCountersURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
            
            self.championJSON = (NSMutableArray *)responseObject;
            [self initializeChampionStrongWeakCounters:self.championJSON];
            
            
            [[NSNotificationCenter defaultCenter]
             postNotificationName:@"initWithJSONFinishedLoading"
             object:nil];
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
        }];
    }
    return self;
}

- (void)initializeChampionStrongWeakCounters: (NSMutableArray *) championCountersList{
    if(championCountersList == NULL){
        [NSException raise:@"Invalid NSDictionary NULL value" format:@"Invalid dictionary %@",championCountersList];
        return;
    }
    ChampionCounters *championData = [[ChampionCounters alloc] init];
    self.championNames = [[NSMutableArray alloc] init];
    self.championStrongWeakCounters = [[NSMutableDictionary alloc] init];
    for (int i = 0 ; i < championCountersList.count; i++) {
        NSString *currChampion = championCountersList[i][@"name"];
        [self.championNames addObject:currChampion];
        championData = [[ChampionCounters alloc] initWithStrongOne:championCountersList[i][@"strongOne"] strongTwo:championCountersList[i][@"strongTwo"] strongThree:championCountersList[i][@"strongThree"] strongFour:championCountersList[i][@"strongFour"] strongFive:championCountersList[i][@"strongFive"] weakOne:championCountersList[i][@"weakOne"] weakTwo:championCountersList[i][@"weakTwo"] weakThree:championCountersList[i][@"weakThree"] weakFour:championCountersList[i][@"weakFour"] weakFive:championCountersList[i][@"weakFive"]];
        [self.championStrongWeakCounters setObject:championData forKey:currChampion];
        
    }
    [self.championNames sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
}
@end
