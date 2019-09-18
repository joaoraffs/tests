//
//  ConverterTests.swift
//  NumeroTests
//
//  Created by João Raffs on 17/09/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import XCTest
@testable import Numero

class ConverterTests: XCTestCase {
    let converter = Converter()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testConversionForOne(){
        let result = converter.convert(1)
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
    
    func testConversionForTwo(){
        let result = converter.convert(2)
        XCTAssertEqual(result, "II", "conversion for 2 incorrect") 
    }
    
    func testConversionForFive(){
        let result = converter.convert(5)
        XCTAssertEqual(result,"V", "conversion for 5 incorrect")
    }
    
    func testConversionForSix(){
        let result = converter.convert(6)
        XCTAssertEqual(result, "VI", "conversion for 6 incorrect")
    }
    
    func testConversionForTen(){
        let result = converter.convert(10)
        XCTAssertEqual(result,"X", "conversion 10 error")
    }
    func testConversionForTwenty(){
        let result = converter.convert(20)
        XCTAssertEqual(result,"XX", "conversion 20")
    }
    
    // special cases
    func testConversionForFour(){
        let result = converter.convert(4)
        XCTAssertEqual(result, "IV", "conversion 4")
    }
    func testConversionForNine(){
        let result = converter.convert(9)
        XCTAssertEqual(result,"IX", "")
    }
    func testConversionForZero(){
        let result = converter.convert(0)
        XCTAssertEqual(result,"", "")
    }
    func testConversionFor3999(){
        let result = converter.convert(3999)
        XCTAssertEqual(result,"MMMCMXCIX", "")
    }
}
