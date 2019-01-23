//
//  InfoPlist.swift
//  BleClient-resolved-iOS
//
//  Created by Stijn on 23/01/2019.
//  Copyright © 2019 BleClient. All rights reserved.
//

import Foundation

struct InfoPlist: Decodable, CustomStringConvertible {
    
    let buildDirectory: String
    let headerSearchPath: String
    let librarySearchPath: String
    let frameworkSearchPath: String
    
    enum CodingKeys: String, CodingKey, CaseIterable {
        case buildDirectory = "COM_BLECLIENT_CONFIGURATION_BUILD_DIR"
        case headerSearchPath = "COM_BLECLIENT_HEADER_SEARCH_PATH"
        case librarySearchPath = "COM_BLECLIENT_LIBRARY_SEARCH_PATHS"
        case frameworkSearchPath = "COM_BLECLIENT_FRAMEWORK_SEARCH_PATHS"
    }
    
    var description: String {

        return """
        Important Directories are:
        
            >>> build per configuration = \(buildDirectory)
            >>> header search path (recursive): \(headerSearchPath)
            >>> library search path (for the .a files): \(librarySearchPath)
            >>> framework search path: \(frameworkSearchPath)
        
        Tip: When importing in your project ad:
            '$(BUILD_DIR)/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)'
        to project settings and for the keys
        
        \(CodingKeys.allCases.map { $0.rawValue.replacingOccurrences(of: "COM_BLECLIENT_", with: "") }.joined(separator: "\n"))

        """
    }
}
