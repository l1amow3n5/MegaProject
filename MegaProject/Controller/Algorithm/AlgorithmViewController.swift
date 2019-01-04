//
//  ViewController.swift
//  AlgorithmLiamOwen
//
//  Created by Owen, Liam on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
    @IBOutlet weak var algorithmText: UILabel!
    @IBOutlet weak var algorithmView: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }
    
    private func formatAlgorithm() -> Void
    {
        let title : String = "How to make an iOS app"
        
        let stepOne : String = "Open Xcode and select the create a new Xcode project, Name your project whatever you want to name it and do not use spaces."
        let stepTwo : String = "Select the folder you want your project to be saved in, now on the right hand side in the Navigator make four new groups and and name them the Model, Resources, Controller, and View, then create a new file in the Model group and call it somethingTool.swift ex. AlgorithmTool.swift"
        let stepThree : String = "Now you should move the AppDelegate.swift, Assets.xcassests, and Info.plist files into the Resources group, next move the ViewController.swift file into the Controller group, Last you need to add the Main.storyboard and LaunchScreen."
        let stepFour : String = "you need to click on you project in the navigator and select your info.plist in the Identity section"
        let stepFive : String = "Now you have to connect your ViewConroller file to you Main.storyboard by going to the Main.storyboard selecting the yellow circle with the square in the middle and making sure the name in the identity inspector is the same as your ViewController.swift file."
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDicitonary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDicitonary)
        
        for step in algorithm
            /*
             This code sets up the fortmat and bullet
                */
        {
            let bullet : String = "🤖"
            let formattedStep : String = "\n\(bullet)  \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString (string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range:
                NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
            
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    

    
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

}

