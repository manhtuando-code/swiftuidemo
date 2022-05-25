//
//  AvatarView.swift
//  SwiftUIDemo
//
//  Created by Do Tuan on 15/05/2022.
//

import UIKit
//
protocol AvatarViewDelegate: AnyObject {
    func avatarView(avatarView: AvatarView, name: String)
}

class AvatarView: UIView {
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    weak var delegate: AvatarViewDelegate?
    
    //mark: properties
    var name: String = "Noname"
    var color: UIColor = .blue
    
    //mark: ConfigView
    func updateView() {
        nameLabel.text = name
        avatarImageView.tintColor = color
    }
    
    //Mark: Actions
    @IBAction func tap(_ sender: Any) {
        if let delegate = delegate {
            delegate.avatarView(avatarView: self, name: name)
        }
    }
}
