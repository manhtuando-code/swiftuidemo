//
//  MyColorUISlider.swift
//  SwiftUIDemo
//
//  Created by Do Tuan on 14/05/2022.
//

import UIKit
import SwiftUI

struct MyColorUISlider: UIViewRepresentable {
    
    typealias UIViewType = UISlider
    var color: UIColor
    @Binding var value: Double
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.value = Float(value)
        slider.thumbTintColor = color
        slider.tintColor = color
        
        //taget
        slider.addTarget(context.coordinator, action: #selector(Coordinator.updateColorSlider(_:)), for: .valueChanged)
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        print("updating")
        uiView.value = Float(self.value)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var parent: MyColorUISlider

        init(_ parent: MyColorUISlider) {
                self.parent = parent
        }
        @objc func updateColorSlider(_ sender: UISlider){
            parent.value = Double(sender.value)
        }
    }
}

struct MyColorUISlider_Previews: PreviewProvider {
    static var previews: some View {
        MyColorUISlider(color: .red, value: .constant(0.5))
    }
}
