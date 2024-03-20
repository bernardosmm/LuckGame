// The Swift Programming Language
// https://docs.swift.org/swift-book
// 
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser
import Foundation

@main
struct SweespsTakes: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Random Number Generator",
        usage:"""
sweepstakes [OPTIONS]
""",
        discussion: """
This tool is created to generate random numbers for various purposes. By inputting only the category name (such as MegaSena or Bingo) and a personal seed (a unique key of your choice), NumGen generates a random number. This coolest part of this of this programis the faster way to make to make decisions
""")
    
    @Flag(name: .short, help: "Your own Sweesptake")
    var raffle: Bool = false
    
    @Flag (name: .short, help: "your bingo game")
    var bingo: Bool = false
    
    @Flag (name: .short, help: "Your megasena game")
    var megaSena: Bool = false
    
    func runBingo() {
        var numbersArray = Array(1...75)
        numbersArray.shuffle()
        for number in numbersArray {
            switch number {
            case 1..<16:
                print(/(number)"Coluna B", terminator: "")
            case 1..<16:
                print(/(number)"Coluna B", terminator: "")
            case 1..<16:
                print(/(number)"Coluna B", terminator: "")
            case 1..<16:
                print(/(number)"Coluna B", terminator: "")
                
            }
            
            
                
            
            
            
            
            
            
            
            
            
            
            
            
            print(number, terminator: "")
            let _ = readLine()!
        }
    }
    func runRaffle() {
        print(
        print("Qual é o número mínimo do intervalo?")
        guard let input1 = readLine(), let n1 = Int(input1) else {
            fatalError("Entrada inválida para o número mínimo do intervalo")
        }
        
        print("Qual é o número máximo do intervalo?")
        guard let input2 = readLine(), let n2 = Int(input2) else {
            fatalError("Entrada inválida para o número máximo do intervalo")
        }
        
        print("Quantos números você quer sortear?")
        
        guard let input3 = readLine(), let qntd = Int(input3) else {
            fatalError("Entrada inválida para a quantidade de números a sortear")
        }
        
        var randomNumbers = [Int]()
        
        for _ in 1...qntd {
            let randomNumber = Int.random(in: n1...n2)
            randomNumbers.append(randomNumber)
        }
        
        print("Os números sorteados são: \(randomNumbers)")
    }
    func runMegaSena() {
        let megaSenaNumbers = runMegaSena()
        print("Os números sorteados na Mega-Sena são: \(megaSenaNumbers)")
        return
        func runMegaSena() -> [Int] {
            var numberMega = Array(1...60)
            numberMega.shuffle()
            let sixNumbers = Array(numberMega.prefix(6))
            return sixNumbers
        }
    }
    func run() throws {
        if bingo == true {
            runBingo()
        }
        if megaSena == true {
            runMegaSena()
        }
        if raffle == true {
            runRaffle()
        }
        
    }
    
}

