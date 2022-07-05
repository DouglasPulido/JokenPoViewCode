//
//  HomeView.swift
//  JokenPoViewCode
//
//  Created by user218860 on 6/28/22.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    var scoreboardOne = 0, scoreboardTwo = 0
    
    var playerOneLabel: UILabel = {
        let label = UILabel()
        label.text = "Player 1"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var emptyImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "empty")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var playerTwoLabel: UILabel = {
        let label = UILabel()
        label.text = "Player 2"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var scoreboardOneLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var scoreboardTwoLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    var emptyTwoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "empty")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var resultLabel: UILabel = {
        let label = UILabel()
        label.text = "Resultado"
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var stoneImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "stone")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var paperImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "paper")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var scissorsImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "scissors")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    //MARK: - SETUP
    //Init
    init() {
        super.init(frame: .zero)
        setup()
        setupLayoutConstraints()
        setupAdditionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //SetupView
    func setup() {
        self.addSubview(playerOneLabel)
        self.addSubview(emptyImage)
        self.addSubview(playerTwoLabel)
        self.addSubview(emptyTwoImage)
        self.addSubview(resultLabel)
    }
    
    func setupAdditionalConfiguration () {
        self.backgroundColor = .systemBackground
    }
    
    //Constraits
    func setupLayoutConstraints() {
        NSLayoutConstraint.activate([
            
            playerOneLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            playerOneLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            playerOneLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            playerOneLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            emptyImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 140),
            emptyImage.topAnchor.constraint(equalTo: playerOneLabel.bottomAnchor, constant: 40),
            emptyImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -140),
            emptyImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            
            playerTwoLabel.topAnchor.constraint(equalTo: emptyImage.bottomAnchor, constant: 60),
            playerTwoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            playerTwoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            emptyTwoImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            emptyTwoImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 140),
            emptyTwoImage.topAnchor.constraint(equalTo: playerTwoLabel.bottomAnchor, constant: 30),
            emptyTwoImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -140),
            
            resultLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            resultLabel.topAnchor.constraint(equalTo: emptyTwoImage.bottomAnchor, constant: 90),
            resultLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            resultLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
        ])
        
    }
}



