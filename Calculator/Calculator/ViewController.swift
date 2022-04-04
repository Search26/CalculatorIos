//
//  ViewController.swift
//  Calculator
//
//  Created by Ney on 02/06/2021.
//
import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var stLine5: UIStackView!
    @IBOutlet weak var stLine4: UIStackView!
    @IBOutlet weak var stLine3: UIStackView!
    @IBOutlet weak var stLine2: UIStackView!
    @IBOutlet weak var stLine1: UIStackView!
    @IBOutlet weak var parenctStackView: UIStackView!
    @IBOutlet weak var btnSignn: UIButton!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnCal: UIButton!
    @IBOutlet weak var btnC: UIButton!
    @IBOutlet weak var btnSemicolon: UIButton!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btnSub: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btnMul: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btnDiv: UIButton!
    @IBOutlet weak var btnPercent: UIButton!
    var a = 0.0
    var b = 0.0
    var c = 0.0
    var isFirst = true
    var numberAfterSemi = 0
    var num = 0
    var haveSemi = false
    var m = 1
    var calculation = 0
    var nega = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        btn0.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btnSemicolon.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btnCal.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btn1.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btn2.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btn3.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btnPlus.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btn4.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btn5.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btn6.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btn7.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btn8.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btn9.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btnSignn.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btnPercent.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btnDiv.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btnMul.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btnSub.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        btnC.addTarget(self, action: #selector(self.buttonClicked(_:)), for: .touchUpInside)
        
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        btn0.layer.cornerRadius = btnSemicolon.frame.height / 2  ;
        btnSemicolon.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btnCal.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btn1.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btn2.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btn3.layer.cornerRadius = btnSemicolon.frame.height / 2  ;
        btnPlus.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btn4.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btn5.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btn6.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btn7.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btn8.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btn9.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btnPercent.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btnDiv.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btnMul.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btnSub.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btnC.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
        btnSignn.layer.cornerRadius = btnSemicolon.frame.height / 2 ;
    }
    @objc func buttonClicked(_ sender :UIButton){
        if(isFirst == true){
            if (haveSemi == false){
                m = 10
                numberAfterSemi = 0
            }
            else {
                m = 1
                numberAfterSemi += 1
            }
            switch sender {
            case btn0:
                a = a * Double(m) + (0.0 / pow(10.0,Double(numberAfterSemi)))
            case btn1:
                a = a * Double(m) + (1.0 / pow(10.0,Double(numberAfterSemi)))
            case btn2:
                 a = a * Double(m) + (2.0 / pow(10.0,Double(numberAfterSemi)))
            case btn3 :
                a = a * Double(m) + (3.0 / pow(10.0,Double(numberAfterSemi)))
            case btn4 :
                a = a * Double(m) + (4.0 / pow(10.0,Double(numberAfterSemi)))
            case btn5 :
                a = a * Double(m) + (5.0 / pow(10.0,Double(numberAfterSemi)))
            case btn6 :
                a = a * Double(m) + (6.0 / pow(10.0,Double(numberAfterSemi)))
            case btn7 :
                a = a * Double(m) + (7.0 / pow(10.0,Double(numberAfterSemi)))
            case btn8 :
                a = a * Double(m) + (8.0 / pow(10.0,Double(numberAfterSemi)))
            case btn9 :
                a = a * Double(m) + (9.0 / pow(10.0,Double(numberAfterSemi)))
            case btnSemicolon :
                if(haveSemi == true ) {
                    numberAfterSemi -= 1
                }
                haveSemi = true
            case btnC :
                isFirst = true
                haveSemi = false
                a = 0
                b = 0
                calculation = 0
            case btnSignn :
                a = a * -1
            case btnPercent :
                a = a / 100
            case btnDiv :
                calculation = 1
                isFirst = false
                haveSemi = false
                b = 0.0
            case btnMul :
                calculation = 2
                isFirst = false
                haveSemi = false
                b = 0.0
            case btnSub :
                calculation = 3
                isFirst = false
                haveSemi = false
                b = 0.0
            case btnPlus :
                calculation = 4
                isFirst = false
                haveSemi = false
                b = 0.0
            case btnCal :
                calculation = 0
                isFirst = false
                haveSemi = false
                b = 0.0
            default:
                return
            }
            c = a
        }
        else {
            if (haveSemi == false){
                m = 10
                numberAfterSemi = 0
            }
            else {
                m = 1
                numberAfterSemi += 1
            }
            switch sender {
            case btn0:
                b = b * Double(m) + (0.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btn1:
                b = b * Double(m) + (1.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btn2:
                 b = b * Double(m) + (2.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btn3 :
                b = b * Double(m) + (3.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btn4 :
                b = b * Double(m) + (4.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btn5 :
                b = b * Double(m) + (5.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btn6 :
                b = b * Double(m) + (6.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btn7 :
                b = b * Double(m) + (7.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btn8 :
                b = b * Double(m) + (8.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btn9 :
                b = b * Double(m) + (9.0 / pow(10.0,Double(numberAfterSemi)))
                c = b
            case btnSemicolon :
                if(haveSemi == true ) {
                    numberAfterSemi -= 1
                }
                haveSemi = true
            case btnC :
                isFirst = true
                haveSemi = false
                c = 0
                a = 0
                b = 0
                calculation = 0
            case btnSignn :
                b = b * -1
                c = b
            case btnPercent :
                b = b / 100
                c = b
                a = b
                calculation = 0
            case btnDiv :
                b = cal(a: a, b: b, Calcul: calculation)
                calculation = 1
                a = b
                c = b
                b = 0.0
            case btnMul :
                b = cal(a: a, b: b, Calcul: calculation)
                calculation = 2
                a = b
                c = b
                b = 0.0
            case btnSub :
                b = cal(a: a, b: b, Calcul: calculation)
                calculation = 3
                a = b
                c = b
                b = 0.0
            case btnPlus :
                b = cal(a: a, b: b, Calcul: calculation)
                calculation = 4
                a = b
                c = b
                b = 0.0
            case btnCal :
                b = cal(a: a, b: b, Calcul: calculation)
                calculation = 0
                a = b
                c = b
            default:
                return
            }
        }
        if (c < 0 ){
            nega = -1
            c *= -1
        }
        else {
            nega = 1
        }
        var d = c
        print(c)
        d = d - floor(d)
        d = round((d * 100000000)) / 100000000
        num = 0
        while (d != 0 && num < 8){
            print(d)
            d = d * 10
            d = d - (floor(d))
            d = round((d * 100000000)) / 100000000
            num += 1
        }
        if (nega == -1 ) {
            lblResult.text = String(format: "-%."+num.description+"f", c)
        }
        else {
            lblResult.text = String(format: "%."+num.description+"f", c)
        }
        }
    func cal(a : Double , b : Double ,Calcul : Int) -> Double{
        switch Calcul {
        case 1:
            if (b == 0) {
                return a
            }
            return a / b
        case 2:
            return a * b
        case 3 :
            return a - b
        case 4 :
            return a + b
        default:
            return a
        }
    }
}

