//
//  Building.swift
//  BuilderPattern
//
//  Created by Ashif Iqbal on 09/12/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class Building: NSObject {
    fileprivate var buildingComponents: [String] = [String]()
    
    func addComponents(component: String){
        buildingComponents.append(component)
    }
    
    func renderBuilding(){
        for component in buildingComponents{
            print("component: \(component)")
        }
    }
}
