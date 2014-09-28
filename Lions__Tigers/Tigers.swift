//
//  Tigers.swift
//  Lions__Tigers
//
//  Created by Mark Stuver on 9/28/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation
// import UIKit for UIImage capabilities
import UIKit

/* Struct is like a class but struts are always copied and do not participate in reference counting.
//Structs cannot be inherited or type-cast */
/// Tiger struct will be called when an instance of Tiger is to be created.
struct Tiger {
    
    // Properties that can be set when an instance of Tiger has been created.
    var name = ""
    var breed = ""
    var age = 0
    var image = UIImage(named: "")
}

