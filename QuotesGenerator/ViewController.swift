//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 맥북 on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "기회는 새와 같은 것. 날아가기 전에 꼭 잡아라.", name: "쉴러"),
        Quote(contents: "남들보다 더 잘하려고 고민하지 마라. 지금의 나보다 잘하려고 애쓰는게 더 중요하다.", name: "윌리엄 포크너"),
        Quote(contents: "노력이란 좀 더 주체적이고 목적을 가지고 하는 걸 말한다.", name: "무라카미 하루키"),
        Quote(contents: "성공을 확신하는 것이 성공의 첫 걸음이다.", name: "로버트 슐러"),
        Quote(contents: "순간을 지배하는 사람이 인생을 지배한다.", name: "에센바흐"),
        Quote(contents: "시도해보지도 않고는 누구도 자신이 얼마만큼 해 낼 수 있는지 알지 못한다.", name: "푸블릴리우스 시루스")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(6))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

