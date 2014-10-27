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
@property (strong, nonatomic) NSMutableDictionary *championJSON;
@property (strong, nonatomic) NSMutableDictionary *championDict;

@end
@implementation ChampionList

- (id) initWithJSON{
    self = [self init];
    if (self) {
        //initialize with get request
        self.getLoLStaticDataChampions = @"https://na.api.pvp.net/api/lol/static-data/na/v1.2/champion?api_key=1f5886ea-53bc-4ed1-bdcb-55acb3e39bcc";
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        [manager GET:self.getLoLStaticDataChampions parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
            
            self.championJSON = (NSMutableDictionary *)responseObject;
            [self initializeChampionNames:self.championJSON[@"data"]];
            
            [[NSNotificationCenter defaultCenter]
             postNotificationName:@"initWithJSONFinishedLoading"
             object:nil];
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
        }];
    }
    return self;
}

- (void)initializeChampionNames:(NSMutableDictionary *) championList{
    if(championList == NULL){
        [NSException raise:@"Invalid NSDictionary NULL value" format:@"Invalid dictionary %@",championList];
        return;
    }
    self.championDict = [[NSMutableDictionary alloc] initWithDictionary:championList];
    [self.championDict setObject: [self.championDict objectForKey: @"MonkeyKing"] forKey: @"Wukong"];
    [self.championDict removeObjectForKey: @"MonkeyKing"];
    [self.championDict setObject: [self.championDict objectForKey: @"Velkoz"] forKey: @"VelKoz"];
    [self.championDict removeObjectForKey: @"Velkoz"];
    [self.championDict setObject: [self.championDict objectForKey: @"FiddleSticks"] forKey: @"Fiddlesticks"];
    [self.championDict removeObjectForKey: @"FiddleSticks"];
    self.championNames = [[NSMutableArray alloc] initWithArray:[self.championDict allKeys]];
    self.championNames = [self.championNames sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
}
@end