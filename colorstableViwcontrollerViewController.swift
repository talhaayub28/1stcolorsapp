//
//  colorstableViwcontrollerViewController.swift
//  UIKIT Intro
//
//  Created by Apple on 12/05/2023.
//  Copyright © 2023 Apple. All rights reserved.
//

import UIKit

class colorstableViwcontrollerViewController: UIViewController

{
    
    
    var colors: [UIColor] = []
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addrandomcolors() //thi is the first thing happens after our screen loads
    }
    
    
    
    func random() -> UIColor
    {
        let randomcolor = UIColor(red: CGFloat.random(in: 0...1.0),
                                  green: CGFloat.random(in: 0...1) ,
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomcolor
    }
    
    
    func addrandomcolors()
        
{
    for _ in 0..<50
    {
        colors.append(random())
    }

    }
    

    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVc = segue.destination as! colorsdetailVC
        destVc.color = sender as? UIColor
    }
    
}

extension colorstableViwcontrollerViewController: UITableViewDelegate, UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count //this will return the number of rows whatever is in our array
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "colorcell")
            
            else
        {
                return UITableViewCell()
                
        }
        
        
        cell.backgroundColor = colors[indexPath.row]
        //whichever row is on index send the color to that
        
        return cell //this will return a new cell row
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "tocolorsdetailVC" , sender: color)
    }
}
