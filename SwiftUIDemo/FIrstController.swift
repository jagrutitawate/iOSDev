//
//  FIrstController.swift
//  SwiftUIDemo
//
//  Created by Jagruti Tawate on 13/01/24.
//

import Foundation
import UIKit
import SwiftUI


struct UILabelWrapper : UIViewRepresentable{
    var text: String
    
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }
    
}

