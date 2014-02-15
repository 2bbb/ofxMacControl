//
//  ofxMacControl.h
//
//  Created by ISHII 2bit.
//

#pragma once

#include "ofMain.h"

#import "ofxAppleScript.h"

bool ofxMacRestart();
bool ofxMacShutdown();
bool ofxMacShutdownForce(string adminName, string adminPass);
bool ofxMacLogOut();
bool ofxMacSleep();
