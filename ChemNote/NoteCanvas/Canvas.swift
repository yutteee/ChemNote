//
//  Canvas.swift
//  ChemNote
//
//  Created by nakamura yusaku on 2022/12/13.
//

import PencilKit
import UIKit
import SwiftUI

class MyViewController: UIViewController, PKCanvasViewDelegate {
    private let canvasView: PKCanvasView = {
        let canvas = PKCanvasView()
        canvas.drawingPolicy = .anyInput
        return canvas
    }()
    
    // 書いた内容を保存するためのもの
    let drawing = PKDrawing()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canvasView.drawing = drawing
        canvasView.delegate = self
        addMyLabel()
    }
    
    // ノートの書く場所を追加
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        canvasView.frame = view.bounds
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // ペンツールの設定
        let toolPicker = PKToolPicker()
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
    }
    
    private func addMyLabel() {
        // autoLayautをfalseにすることで反映させることができる
        canvasView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(canvasView)
        canvasView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        canvasView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
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
