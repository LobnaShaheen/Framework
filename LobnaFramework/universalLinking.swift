//
//  universalLinking.swift
//  waffarX
//
//  Created by Lobna Shaheen on 30/11/2022.
//

import Foundation


public class UniversalLinking{
    
    var userActivity: NSUserActivity
    
    public init(userActivity: NSUserActivity) {
        self.userActivity = userActivity;
        }

    public func checkLink() -> Bool{
        // Get URL components from the incoming user activity.
            guard userActivity.activityType == NSUserActivityTypeBrowsingWeb,
                let incomingURL = userActivity.webpageURL,
                let components = NSURLComponents(url: incomingURL, resolvingAgainstBaseURL: true) else {
                return false
            }

            // Check for specific URL components that you need.
            guard let path = components.path,
            let params = components.queryItems else {
                return false
            }
            print("path = \(path)")

            if let uid = params.first(where: { $0.name == "uid" } )?.value,
                let afd = params.first(where: { $0.name == "afd" })?.value {

                print("uid = \(uid)")
                print("afd = \(afd)")
                return true

            } else {
                print("Either album name or photo index missing")
                return false
            }
    }
}
