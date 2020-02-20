//
//  Student.h
//  DZ5
//
//  Created by IOSfish on 08.02.2020.
//  Copyright © 2020 IOSfish. All rights reserved.
//

#import "Human.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : Human

@property (strong, nonatomic) NSString* favoriteteam;
@property (assign, nonatomic) NSInteger iq;

@end

NS_ASSUME_NONNULL_END
