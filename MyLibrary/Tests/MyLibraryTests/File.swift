//
//  File.swift
//  
//
//  Created by Aakash Kulkarni on 10/15/22.
//

import XCTest
import MyLibrary
@testable import MyLibrary

final class MyIntegrationTest: XCTestCase {
    
    func testingWeatherModel() async throws {
        
        // given
        let weatherService = WeatherServiceImpl()
        
        //when
        let temperature = try await weatherService.getTemperature()
        
        
        //then
        XCTAssertEqual(temperature, 63)
        
    }
}
    
