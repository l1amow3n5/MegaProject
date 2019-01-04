//
//  DrawingView.swift
//  MultiAppProject
//
//  Created by Owen, Liam on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createZach().stroke()
        drawTurtle()
        createJosh().stroke()
    }
 
    private func createZach() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.red.setStroke()
        figure.lineWidth = 7.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }

    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.green.setFill()
        logo.move(to: CGPoint (x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func createJosh() -> UIBezierPath
    {
        let figure2 : UIBezierPath = UIBezierPath()
        
        UIColor.green.setStroke()
        figure2.lineWidth = 6.90
        
        figure2.addArc(withCenter: CGPoint(x: 150, y: 150),
                      radius: CGFloat(80),
                      startAngle: CGFloat(45),
                      endAngle: CGFloat(90) * CGFloat.pi,
                      clockwise: true)
        
        figure2.move(to: CGPoint(x: 150, y: 230))
        figure2.addLine(to: CGPoint(x: 150, y: 330))
        figure2.move(to: CGPoint(x: 120, y: 280))
        figure2.addLine(to: CGPoint(x: 180, y: 280))
        figure2.move(to: CGPoint(x: 150, y: 330))
        figure2.addLine(to: CGPoint(x: 120, y: 390))
        figure2.move(to: CGPoint(x: 150, y: 330))
        figure2.addLine(to: CGPoint(x: 180, y: 390))
        
        
        return figure2
        
    }
}
