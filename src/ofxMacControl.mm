//
//  ofxMacControl.mm
//
//  Created by ISHII 2bit.
//

#import <Foundation/Foundation.h>
#import <ApplicationServices/ApplicationServices.h>

#import "ofxMacControl.h"
#import "ofxObjective-C++Utility.h"

bool __runAppleScriptToFinder(NSString *action) {
    NSString *script = [NSString stringWithFormat:@"tell application \"Finder\" to %@", action];
    
    return ofxRunAppleScript(script);
    
}

bool __runAppleScriptToSystem(NSString *action) {
    NSString *script = [NSString stringWithFormat:@"tell application \"System Events\" to %@", action];
    
    return ofxRunAppleScript(script);
    
}

bool ofxMacRestart() {
    return __runAppleScriptToSystem(@"restart");
}

bool ofxMacShutdown() {
    return __runAppleScriptToSystem(@"shut down");
}

bool ofxMacShutdownForce(string adminName, string adminPass) {
    // this function take long time...
    NSString *command = [NSString stringWithFormat:@"do shell script \"shutdown -h now &\" user name \"%@\" password \"%@\" with administrator privileges", convert(adminName), convert(adminPass)];
    return ofxRunAppleScript(command);
}

bool ofxMacLogOut() {
    return __runAppleScriptToFinder(@"log out");
}

bool ofxMacSleep() {
    return __runAppleScriptToFinder(@"sleep");
}