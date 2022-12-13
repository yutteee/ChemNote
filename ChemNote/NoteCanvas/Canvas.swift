//
//  Canvas.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/13.
//

import PencilKit
import UIKit
import SwiftUI

class MyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        addMyLabel()
    }
    
    lazy var myLabel: UILabel = {
        let label:UILabel = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        label.text = "Open MyViewController"
        label.textColor = .black
        return label
    }()
    
    private func addMyLabel() {
        // autoLayautをfalseにすることで反映させることができる
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(myLabel)
        myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

struct MyViewControllerRepresentable : UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> MyViewController {
        return MyViewController()
    }
    func updateUIViewController(_ uiViewController: MyViewController, context: Context) {
    }
}

struct MyViewController_Previews: PreviewProvider {
    static var previews: some View {
        MyViewControllerRepresentable()
    }
}
