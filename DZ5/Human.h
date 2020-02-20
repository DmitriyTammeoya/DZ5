//
//  Human.h
//  DZ5
//
//  Created by IOSfish on 08.02.2020.
//  Copyright © 2020 IOSfish. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger height;
@property (assign, nonatomic) float weight;
@property (strong, nonatomic) NSString* gender;
- (void) move;


@end

NS_ASSUME_NONNULL_END
