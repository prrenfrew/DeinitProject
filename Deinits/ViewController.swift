//
//  ViewController.swift
//  Deinits
//
//  Created by MAC on 8/24/20.
//  Copyright © 2020 PaulRenfrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var person: Person!

  override func viewDidLoad() {
    super.viewDidLoad()
    let person = Person(name: "Paul")
    print(person.name)
    let dwelling = Dwelling(address: "SomeAddress")
    print(dwelling.address)
    person.dwelling = dwelling
    dwelling.tenant = person
  }
}

class Person {
  let name: String
  var dwelling: Dwelling?
  
  deinit {
    print("Person has been deinitialized")
  }
  
  init(name: String) {
    self.name = name
  }
}

class Dwelling {
  let address: String
  weak var tenant: Person?
  
  deinit {
    print("Dwelling has been deinitialized")
  }
  
  init(address: String) {
    self.address = address
  }
}
