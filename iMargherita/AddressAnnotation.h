//
//  AddressAnnotation.h
//  iMargherita
//
//  Created by Sebastiano Ronzulli on 23/01/13.
//  Copyright (c) 2013 Sebastiano Ronzulli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface AddressAnnotation : NSObject <MKAnnotation> {
    
    CLLocationCoordinate2D coordinate;

}

-(id)initWithCoordinate:(CLLocationCoordinate2D) c;

@end
