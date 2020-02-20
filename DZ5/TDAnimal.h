//
//  TDAnimal.h
//  DZ5
//
//  Created by IOSfish on 08.02.2020.
//  Copyright © 2020 IOSfish. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TDAnimal : NSObject

@property (strong, nonatomic) NSString* petname;
@property (assign, nonatomic) NSInteger cuteness;

-(void) move;


@end

NS_ASSUME_NONNULL_END
