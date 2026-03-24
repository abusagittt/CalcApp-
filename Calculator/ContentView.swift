//
//  ContentView.swift
//  Calculator
//
//  Created by arkhat on 24.03.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumber: String = ""
    @State private var secondNumber: String = ""
    @State private var result: String = ""
    
    
    var body: some View {
        VStack {
            Text(result)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.purple)
            
            TextField("Enter the first number", text: $firstNumber)
                .padding(6)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.purple, lineWidth: 1)
                )
            
            
            TextField("Enter the second number", text: $secondNumber)
                .padding(6)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.purple, lineWidth: 1)
                )
                .padding(.bottom, 16)
     
     
            HStack {
                Button("+") {
                    let num1 = Int(firstNumber) ?? 0
                    let num2 = Int(secondNumber) ?? 0
                    result = "Result: \(num1 + num2)"
                }
                
                .frame(maxWidth: .infinity, minHeight: 48)
                .foregroundStyle(Color.white)
                .background(Color.pink)
                .cornerRadius(12)
                    
                    Button("-") {
                        let num1 = Int(firstNumber) ?? 0
                        let num2 = Int(secondNumber) ?? 0
                        result = "Result: \(num1 - num2)"
                    }
                    .frame(maxWidth: .infinity, minHeight: 48)
                    .foregroundStyle(Color.white)
                    .background(Color.pink)
                    .cornerRadius(12)
                
                Button("*") {
                    let num1 = Int(firstNumber) ?? 0
                    let num2 = Int(secondNumber) ?? 0
                    result = "Result: \(num1 * num2)"
                }
                .frame(maxWidth: .infinity, minHeight: 48)
                .foregroundStyle(Color.white)
                .background(Color.pink)
                .cornerRadius(12)
                
                Button("/") {
                    let num1 = Int(firstNumber) ?? 0
                    let num2 = Int(secondNumber) ?? 0
                    result = "Result: \(num1 / num2)"
                }
                .frame(maxWidth: .infinity, minHeight: 48)
                .foregroundStyle(Color.white)
                .background(Color.pink)
                .cornerRadius(12)
                    
                }

        
                Spacer()
            }
            .padding()
        }
    }
    
    
    #Preview {
        ContentView()
    }

