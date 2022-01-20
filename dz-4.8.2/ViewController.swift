//
//  ViewController.swift
//  dz-4.8.2
//
//  Created by user on 20.01.2022.
//

import UIKit
import SnapKit


class Cafe: Codable {
    var cafe: [CafeModel] = []
    var coment: ComentModel? = nil
}

class CafeModel: Codable {
    var title: String? = nil
    var id: Int? = nil
    var image: String? = nil
    var bord: [Int] = []
}

class ComentModel: Codable {
    var id: String? = nil
}


class ViewController: UIViewController {
    override func viewDidLoad() {
        
        let json = """
{
  "cafe" : [
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [1, 2, 3, 4]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [1, 2, 3, 4]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [1, 2, 3, 4]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [1, 2, 3, 4]
    },
    {
      "title": "test1",
      "id": 1,
      "image": "URL",
      "bord": [1, 2, 3, 4]
    }
  ],
  "coment": {
    "id": "test"
  }
}
"""
        
        let model = try! JSONDecoder().decode(Cafe.self, from: Data(json.utf8))
        dump(model)
    }
}
