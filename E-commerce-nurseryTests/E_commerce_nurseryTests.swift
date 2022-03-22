//
//  E_commerce_nurseryTests.swift
//  E-commerce-nurseryTests
//
//  Created by Ruchir on 3/21/22.
//

import XCTest
import Firebase
import SwiftUI
@testable import E_commerce_nursery

class E_commerce_nurseryTests: XCTestCase {
    
    @ObservedObject var loadViewModel = FetchProductsViewModel()
    
    @ObservedObject var cartViewModel = CartViewModel()
    
    func testcanGetProductsFromCart() throws {
        XCTAssertEqual("Floral",cartViewModel.cartProducts[1].category)
        XCTAssertEqual("Fig",cartViewModel.cartProducts[1].name)
        XCTAssertEqual(5,cartViewModel.cartProducts[1].quantity)
    }
    
    func testcanGetUploadsFromPosts() throws {
        print(loadViewModel.products[0].category)
        XCTAssertEqual("Plants",loadViewModel.products[0].category)
        XCTAssertEqual("Apple",loadViewModel.products[0].name)
        XCTAssertEqual(11.0,loadViewModel.products[0].price)
    }

}
