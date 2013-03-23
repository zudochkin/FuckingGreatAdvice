//
//  Adviser.m
//  FuckingGreatAdvice
//
//  Created by Dmitry Zudochkin on 3/24/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "Adviser.h"

#define LatestAdviceURL @"http://fucking-great-advice.ru/api/random"

@implementation Adviser

-(NSString *)getRandomAdvice
{
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:LatestAdviceURL]];
    
    //NSLog(@"%@", data);
    
    
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:data //1
                          
                          options:kNilOptions
                          error:&error];
    
    //NSLog(@"%@", json);
    
    //NSString* latestAdvice = [json objectForKey:@"text"]; //2
    
    //NSLog(@"loans: %@", latestAdvice); //3
    return [json objectForKey:@"text"];
}
@end
