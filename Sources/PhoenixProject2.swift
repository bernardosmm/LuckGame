// The Swift Programming Language
// https://docs.swift.org/swift-book
//
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser
import Foundation

@main
struct LuckGame: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Random Number Generator",
        usage:"""
luckGame [OPTIONS]
""",
        discussion: """
██╗     ██╗   ██╗ ██████╗██╗  ██╗     ██████╗  █████╗ ███╗   ███╗███████╗
██║     ██║   ██║██╔════╝██║ ██╔╝    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝
██║     ██║   ██║██║     █████╔╝     ██║  ███╗███████║██╔████╔██║█████╗
██║     ██║   ██║██║     ██╔═██╗     ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝
███████╗╚██████╔╝╚██████╗██║  ██╗    ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗
╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝     ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝
This tool is created to generate random numbers for various purposes. By inputting only the category name (such as MegaSena or Bingo) and a personal seed (a unique key of your choice), Luck Game generates a random number. This coolest part of this of this programis the faster way to make to make decisions
""")
    
    @Flag(name: .short, help: "Create your own raffle")
    var raffle: Bool = false
    
    @Flag (name: .short, help: "Play bingo")
    var bingo: Bool = false
    
    @Flag (name: .short, help: "Your megasena game")
    var megaSena: Bool = false
    
    func runBingo() {
        print("""
               ██████╗ ██╗███╗   ██╗ ██████╗  ██████╗
               ██╔══██╗██║████╗  ██║██╔════╝ ██╔═══██╗
               ██████╔╝██║██╔██╗ ██║██║  ███╗██║   ██║
               ██╔══██╗██║██║╚██╗██║██║   ██║██║   ██║
               ██████╔╝██║██║ ╚████║╚██████╔╝╚██████╔╝
               ╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝
""")
        var numbersArray = Array(1...75)
        numbersArray.shuffle()
        for number in numbersArray {
            switch number {
            case 1..<16:
                print("\(number), Coluna B", terminator: " ")
            case 16..<31:
                print("\(number), Coluna I", terminator: " ")
            case 31..<46:
                print("\(number), Coluna N", terminator: " ")
            case 46..<61:
                print("\(number), Coluna G", terminator: " ")
            case 61..<75:
                print("\(number), Coluna O", terminator: " ")
            default:
                break
            }
            
            let input = readLine()!
            print ("Se alguem bater aperte b\n")
            
            
            if input == "b"{
                print("PARABÉNS!!!")
                return
                
            }
            
        }
    }
    func runRaffle() {
        print("""
██████╗  █████╗ ███████╗███████╗██╗     ███████╗
██╔══██╗██╔══██╗██╔════╝██╔════╝██║     ██╔════╝
██████╔╝███████║█████╗  █████╗  ██║     █████╗
██╔══██╗██╔══██║██╔══╝  ██╔══╝  ██║     ██╔══╝
██║  ██║██║  ██║██║     ██║     ███████╗███████╗
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚══════╝

""")
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
        print("""
███╗   ███╗███████╗ ██████╗  █████╗     ███████╗███████╗███╗   ██╗ █████╗
████╗ ████║██╔════╝██╔════╝ ██╔══██╗    ██╔════╝██╔════╝████╗  ██║██╔══██╗
██╔████╔██║█████╗  ██║  ███╗███████║    ███████╗█████╗  ██╔██╗ ██║███████║
██║╚██╔╝██║██╔══╝  ██║   ██║██╔══██║    ╚════██║██╔══╝  ██║╚██╗██║██╔══██║
██║ ╚═╝ ██║███████╗╚██████╔╝██║  ██║    ███████║███████╗██║ ╚████║██║  ██║
╚═╝     ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝    ╚══════╝╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝

""")
        let megaSenaNumbers = runMegaSena()
        print("Os números sorteados na Mega-Sena são: \(megaSenaNumbers)")
        print("BOA SORTE!!!")
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

