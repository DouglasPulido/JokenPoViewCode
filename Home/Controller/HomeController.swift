//
//  HomeController.swift
//  JokenPoViewCode
//
//  Created by user218860 on 6/28/22.
//

import Foundation
import UIKit

class Observer <T> {
    
    var value: T?{
        didSet{
            observerBlock?(value)
        }
    }
    init(value: T?){
        self.value = value
    }
    
    private var observerBlock: ((T?) -> Void)?
    
    func add(_ observer: @escaping (T?) -> Void){
        self.observerBlock = observer
    }
}


class HomeController: UIViewController {
    
    
    var random = Observer(value: [""])
    
    private var playerOne = Observer(value: ["paper", "scissors", "stone"])
    
    
    let homeView = HomeView()
    
    override func loadView() {
        let homeView = HomeView()
        self.view = homeView
        
        view.backgroundColor = .systemIndigo
        addSubview()
        homeView.setup()
        homeView.setupLayoutConstraints()
        homeView.setupAdditionalConfiguration()
        
        
        for x in 0..<200{
            DispatchQueue.main.asyncAfter(deadline: .now()+(2 * TimeInterval(x))) {
                homeView.randomizeImage()
            }
            
        }
        
        func addSubview(){
            self.homeView.addSubview(homeView)
            
        }
        
    }
}
extension HomeView{
    
    func randomizeImage(){
        let imagePaper = UIImage(imageLiteralResourceName: "paper")
        let imageStone = UIImage(imageLiteralResourceName: "stone")
        let imageScissor = UIImage(imageLiteralResourceName: "scissors")
        
        let imageArray = [imagePaper,imageStone,imageScissor]
        let randomImage1 = imageArray.randomElement()
        let randomImage2 = imageArray.randomElement()
        
        switch randomImage1{
        case imagePaper:
            self.emptyImage.image = imagePaper
        case imageStone:
            self.emptyTwoImage.image = imageStone
        default:
            self.emptyImage.image = imageScissor
        }
        
        switch randomImage2{
        case imagePaper:
            self.emptyTwoImage.image = imagePaper
        case imageStone:
            self.emptyTwoImage.image = imageStone
        default:
            self.emptyTwoImage.image = imageScissor
        }
        
        if emptyTwoImage.image == imagePaper && emptyTwoImage.image == imagePaper{
            resultLabel.text = "     EMPATE      "
        }
        if emptyImage.image == imagePaper && emptyTwoImage.image == imageScissor{
            resultLabel.text = "VITÓRIA PLAYER 2"
            scoreboardTwo+=1
            scoreboardOneLabel.text = String(scoreboardTwo)
        }
        if emptyImage.image == imagePaper && emptyImage.image == imageStone{
            resultLabel.text = "VITÓRIA PLAYER 1"
            scoreboardOne+=1
            scoreboardOneLabel.text = String(scoreboardOne)
        }
        if emptyImage.image == imageScissor && emptyTwoImage.image == imagePaper{
            resultLabel.text = "VITÓRIA PLAYER 1"
            scoreboardOne+=1
            scoreboardOneLabel.text = String (scoreboardOne)
        }
        if emptyImage.image == imageScissor && emptyTwoImage.image == imageScissor{
            resultLabel.text = "     EMPATE      "
        }
        if emptyImage.image == imageScissor && emptyTwoImage.image == imageStone{
            resultLabel.text = "VITÓRIA PLAYER 2"
            scoreboardTwo+=1
            scoreboardTwoLabel.text = String(scoreboardTwo)
        }
        if emptyImage.image == imageStone && emptyTwoImage.image == imagePaper{
            resultLabel.text = "VITÓRIA PLAYER 2"
            scoreboardTwo+=1
            scoreboardTwoLabel.text = String(scoreboardTwo)
        }
        if emptyImage.image == imageStone && emptyTwoImage.image == imageScissor{
            resultLabel.text = "VITÓRIA PLAYER 1"
            scoreboardOne+=1
            scoreboardOneLabel.text = String (scoreboardOne)
        }
        if emptyImage.image == imageStone && emptyTwoImage.image == imageStone{
            resultLabel.text = "     EMPATE      "
        }
        
        
        
    }
    
}
