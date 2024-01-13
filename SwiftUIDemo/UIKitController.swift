//
//  UIKitController.swift
//  SwiftUIDemo
//
//  Created by Jagruti Tawate on 13/01/24.
//

import Foundation
import UIKit
import SwiftUI

class UIKitController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let swiftUIView = SampleSwiftUIView()
        let hostingController = UIHostingController(rootView: swiftUIView)
    addChild(hostingController)
    hostingController.view.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(hostingController.view)

    NSLayoutConstraint.activate([
        hostingController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])

    hostingController.didMove(toParent: self)
}
}

