//
//  FocusSquare.swift
//  ARKitProject
//
//  Created by Павел Курзо on 1.11.22.
//

import SceneKit

class FocusSquare: SCNNode {
    
    var isClosed: Bool = true {
        didSet {
            geometry?.firstMaterial?.diffuse.contents =  self.isClosed ? UIImage(named: "FocusSquare/close") : UIImage(named: "FocusSquare/open")
        }
    }
    
    override init() {
        super.init()
        
        let plane = SCNPlane(width: 0.1, height: 0.1)
        plane.firstMaterial?.diffuse.contents = UIImage(named: "FocusSquare/close")
        plane.firstMaterial?.isDoubleSided = true
        
        geometry = plane
        
        eulerAngles.x = GLKMathDegreesToRadians(-90)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
