//
//  MyViewController.swift
//  CanvasUIKit
//
//  Created by Алексей Пархоменко on 05.11.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class MyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
}

struct MyProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<MyProvider.ContainerView>) -> MyViewController {
            return MyViewController()
        }
        
        func updateUIViewController(_ uiViewController: MyProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MyProvider.ContainerView>) {
            
        }
    }
}
