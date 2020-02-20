//
//  AppDelegate.m
//  DZ5
//
//  Created by IOSfish on 08.02.2020.
//  Copyright © 2020 IOSfish. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "TDvelo.h"
#import "TDrunner.h"
#import "TDswimmer.h"
#import "Student.h"
#import "monkey.h"
#import "Dog.h"
#import "TDAnimal.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    TDvelo* velo1 = [[TDvelo alloc] init];
    TDrunner* runner1 = [[TDrunner alloc] init];
    TDswimmer* swimmer1 = [[TDswimmer alloc] init];
    Student* student1 = [[Student alloc] init];
    velo1.name = @"Messi";
    velo1.height = 170;
    velo1.weight = 65.5f;
    runner1.name = @"Suarez";
    runner1.height = 180;
    runner1.weight = 92.3f;
    swimmer1.name = @"Griezmann";
    swimmer1.height = 1175;
    swimmer1.weight = 73.f;
    student1.name = @"Ivanov";
    student1.height = 174;
    student1.weight = 65.f;
    student1.favoriteteam = @"Barcelona";
    student1.iq = 200;
    
    Dog* dog1 = [[Dog alloc] init];
    monkey* monkey1 = [[monkey alloc] init];
    dog1.petname = @"Sharik";
    dog1.cuteness = 5;
    monkey1.petname = @"Bonobo";
    monkey1.cuteness = 3;
    
    NSArray* humans = [[NSArray alloc] initWithObjects:velo1, runner1, swimmer1, student1, nil];
    NSArray* animals = [[NSArray alloc] initWithObjects:dog1, monkey1, nil];
    
    int countingH = [humans count];
    int countingA = [animals count];
    int maxCount = MAX(countingH, countingA);
    
    for (int i = 0; i < maxCount; i++) {
        if (i < countingH) {Human* hum = [humans objectAtIndex:i];
            NSLog(@"name - %@", hum.name);
            [hum move];
        }
        if (i < countingA) {
        TDAnimal* anim = [animals objectAtIndex: i];
            NSLog(@"petname - %@", anim.petname);
            [anim move];
        }
    }
    
        
    
 /*   NSArray* array1 = [[NSArray alloc] initWithObjects: velo1, runner1, swimmer1, student1, nil];
    for (int i = 0; i < [array1 count]; i++){
       // NSLog (@"%@", [array1 objectAtIndex:i]);
        Human* hum = [array1 objectAtIndex:i];
        
        NSLog(@"name = %@, height = %ld, weight = %f", hum.name, (long)hum.height, hum.weight);
     
        
        if ([hum isKindOfClass:[Student class]]){
            Student* stud = (Student*) hum;
            NSLog (@"favoriteteam = %@, iq = %ld", stud.favoriteteam, stud.iq);}
        
            [hum move];

        for (int i2 = [array1 count] - 1; i2>=0; i2-- ) {
                Human* hum = [array1 objectAtIndex:i2];
            NSLog(@"name = %@, height = %ld, weight = %f", hum.name, (long)hum.height, hum.weight);
               
        }
        
    }*/
    
   /* NSArray* array1 = [[NSArray alloc] initWithObjects: velo1, runner1, swimmer1, student1, dog1, monkey1, nil];
    for (int i = 0; i < [array1 count]; i++){
        NSObject* something = [array1 objectAtIndex:i];
              
        if ([something isKindOfClass:[Human class]]){
       Human* hum = (Human*) something;
            NSLog (@"human");
              NSLog(@"name = %@, height = %ld, weight = %f", hum.name, (long)hum.height, hum.weight);
            [hum move];
        }
        if ([something isKindOfClass:[TDAnimal class]]){
              TDAnimal* anim = (TDAnimal*) something;
                   NSLog (@"animal");
                     NSLog(@"petname = %@, cuteness= %ld", anim.petname, anim.cuteness);
                   [anim move];
               }
        
            
    }*/
        
            
    NSLog (@"test is over");
    
    


return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
