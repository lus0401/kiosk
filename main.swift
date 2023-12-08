//
//  main.swift
//  kiosk
//
//  Created by t2023-m0051 on 12/5/23.
//

import Foundation

class Order{
    var totalOrder = 0
}

class Spec{
    var name : String
    var price : Double
    var explanation : String
    
    init(_ name: String, _ price: Double ,_ explanation : String) {
        self.name = name
        self.price = price
        self.explanation = explanation
    }
}

class Burgers : Spec {}
class FrozenCustard : Spec {}
class Drinks : Spec {}
class Beer : Spec {}
 
func setBurgers(_ chosenMenu : Int) -> Burgers{
    let burger = Burgers("", 0.0, "")
    
    if chosenMenu == 1 {
        burger.name = "ShackBurger"
        burger.price = 6.9
        burger.explanation = "토마토, 양상추, 쉑소스가 토핑된 치즈버거"
    } else if chosenMenu == 2 {
        burger.name = "SmokeShack"
        burger.price = 8.9
        burger.explanation = "베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거"
    } else if chosenMenu == 3 {
        burger.name = "Shroom Burger"
        burger.price = 9.4
        burger.explanation = "몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거"
    } else if chosenMenu == 4 {
        burger.name = "Cheeseburger"
        burger.price = 6.9
        burger.explanation = "포테이토 번과 비프패티, 치즈가 토핑된 치즈버거"
    } else if chosenMenu == 5 {
        burger.name = "Hamburger"
        burger.price = 5.4
        burger.explanation = "비프패티를 기반으로 야채가 들어간 기본버거"
    } else {
        print("선택한 메뉴: \(chosenMenu), 메뉴에 없습니다. 다른 메뉴를 골라주세요")
    }
    
    return burger
}


func setFrozen(_ chosenMenu : Int) -> FrozenCustard{
   let frozen = FrozenCustard("", 0.0, "")
   
   if chosenMenu == 1 {
       frozen.name = "Shacks"
       frozen.price = 5.9
       frozen.explanation = "바닐라, 초콜렛, 솔티드 카라멜"
   } else if chosenMenu == 2 {
       frozen.name = "Shacks of the Week"
       frozen.price = 6.5
       frozen.explanation = "특별한 커스터드 플레이버"
   } else if chosenMenu == 3 {
       frozen.name = "Red Bean Shake"
       frozen.price = 6.5
       frozen.explanation = "커스터드와 우유와 레드빈이 블렌딩된 시즈널 쉐이크"
   } else {
       print("선택한 메뉴: \(chosenMenu), 메뉴에 없습니다. 다른 메뉴를 골라주세요")
   }
   
   return frozen
}



func printGreeting(){
    print("""
"SHAKESHACK BURGER 에 오신걸 환영합니다."
아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.

""")
}

func printShakeShakeMenu(){
    print("""
[SHAKESHAKE MENU]
1. Burgers         | 앵거스 비프 통살을 다져만든 버거
2. Frozen Custard  | 매장에서 신선하게 만드는 아이스크림
3. Drinks          | 매장에서 직접 만드는 음료
4. Beer            | 뉴욕 브루클린 브루어리에서 양조한 맥주
0. 종료             | 프로그램 종료
""")
}

func printBurgersMenu(){
    print("""
[ Burgers MENU ]
1. ShackBurger   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거
2. SmokeShack    | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거
3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거
4. Cheeseburger  | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거
5. Hamburger     | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거
0. 뒤로가기        | 뒤로가기
""")
}

func printFrozenCustardMenu(){
    print("""
[ FrozenCustard MENU ]
1. Shacks              | W 5.9 | 바닐라, 초콜렛, 솔티드 카라멜
2. Shacks of the Week  | W 6.5 | 특별한 커스터스 플레이버
3. Red Bean Shake      | W 6.5 | 커스터드와 우유와 레드빈이 블렌딩된 시즈널 쉐이크
0. 뒤로가기              | 뒤로가기
""")
}

func printDrinksMenu(){
    print("""
[ Drinks MENU ]
1. Shake-made Lemonade  | W 4.5 | 매장에서 직접 만드는 상큼한 레몬에이드
2. Fresh Brewd Iced Tea | W 3.9 | 직접 유기농 홍차를 우려낸 아이스티
3. Fifty/Fifty          | W 4.4 | 레몬에이드와 아이스티의 만남
4. Fountain Soda        | W 3.3 | 코카콜라, 코카콜라 제로, 스프라이트, 환타 오렌지, 환타 그레이프
5. Abita Root Beer      | W 4.4 | 청량감 있는 독특한 미국식 무알콜 탄산 음료
6. Bottle Water         | W 1.0 | 지리산 암반대수층으로 만든 프리미엄 생수
0. 뒤로가기               | 뒤로가기
""")
}

func printBeerMenu(){
    print("""
[ Beer MENU ]
1. ShackMeister Ale   | W 9.8 | Bottle
2. Magpie Brewing Co  | W 6.8 | Pale Ale, Draft
0. 뒤로가기             | 뒤로가기
""")
}


func main (){
    
    var orderArray = Array<Spec>()
    
    // 메뉴판 출력
    printGreeting()
    
    while true {
        printShakeShakeMenu()
        // 입력값 받기
        if let input = Int(readLine() ?? ""){
            switch input{
            case 1:
                do {
                    printBurgersMenu()
                    if let input = Int(readLine() ?? ""){
                        let orderedBurger = setBurgers(input)
                        orderArray.append(orderedBurger)
                    }
                }
                break
                
            case 2:
                do {
                    printFrozenCustardMenu()
                    if let input = Int(readLine() ?? ""){
                        let orderedFrozen = setFrozen(input)
                        orderArray.append(orderedFrozen)
                    }
                }
                break
                
                /*
            case 3:
                printDrinksMenu()
                break
                
            case 4:
                printBeerMenu()
                break
                 */
                
            case 0:
                print ("프로그램을 종료합니다.")
                exit(0)
                
            default:
                print ("잘못된 번호를 입력했어요. 다시 입력해주세요")
                return
            }//switch
        }//if let
    }//while true
}


main()
