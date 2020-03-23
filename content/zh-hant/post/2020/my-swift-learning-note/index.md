---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "我的 Swift 學習之旅"
subtitle: ""
summary: "Swift 語法重點紀錄"
authors: [zane]
tags: [syntax]
categories: [swift]
date: 2020-03-15T17:00:26+08:00
lastmod: 2020-03-15T17:00:26+08:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

## 前言

終於開始了我`正式`的 SWIFT 學習之路，會說正式是因為在過去片段學習的日子裡，我只是看著[官方文件](https://docs.swift.org/) 並照著各個章節的順序以`看`的方式並試著理解文章內容預讀罷了。但是，在瀏覽過網路上許多人的學習方式，我的總結是`做筆記`。
因為，做筆記一方面是為了紀錄所學，另一方面是為了能夠把所學利用描述轉化成自己的知識，而且會儘量以能讓人容易理解的文字加以描述。
這個做法的好處一方面能讓自己在未來的日子裡要復習時更有印象，另一方面可以讓其他使用者在看文章的時候也能快速理解。
但是，關於`如何有效的做筆記`我也仍然還在學習，或許之後也會寫另一篇文章關於這方面的。現在就讓我們接著看下去吧。

## 宣告

### 變數與常數

Swift 只有兩種宣告型態，一種是*變數*以`var`做前綴的方式，另一種就是*常數*以`let`為前綴

```swift
var a = 10  // 可以重新賦值
let b = 20  // 不可以重新賦值
```

### 型別註解

宣告時如果已經確定型別也可以直接賦予型別

```swift
var a: Int = 10
let b: Double = 20.0
```

### 型別推斷

一般宣告方式如果沒有`型別註解`，Swift 會主動幫我們做判斷，稱為`型別推斷`

### 變數名稱

Swift 的命名可以使用`Unicode`來命名。所以，我們亦可以使用繁體中文做為命名方式

```swift
let Ω = "omega"
let 狗 = "🐶"
```

### 型別轉換

Swift 是個強型別的語言。所以，在做非同型別的計算時必需使用轉型語法。

```swift
let a: Int = 10
let b: Double = 10.0

let c = (Double)a + b
```

### 匿名型別

有時候為了可讀性，我們可以使用`匿名型別`來開發。

```swift
typealias Age = Int

let age: Age = 10
```

## 基本型別

### 整數

整數在宣告時會根據不同的平台自動使用成`Int32`或是`Int64`，並且也具有*有號整數*`Int`與*無號整數*`UInt`

```swift
let minValue = UInt8.min  // 0
let maxValue = UInt8.max  // 255

let minIntValue = Int8.min  // -128
let maxIntValue = Int8.max  // 127
```

### 浮點數

`Double`為 64 位元，`float`為 32 位元

```swift
let pi: Double = 3.1415926535
let weight: Float = 66.8
```

### 布林值

與其他程式語言一樣，也是以`true`或`false`為值。比較值得一提的是，在 Swift 裡的 if...else
描述句裡，條件判斷式的值僅能是`布林值`

```swift
let isTrue = true
let isFalse = false

if isTrue {
  // 可以正常執行
}

if 1 {
  // 發生錯誤 'Int' is not convertible to 'Bool'
}

```

### 元組

元組為多個值組合而成的群組型別。

```swift
let http404Error = (404, "Not Found!")
// equal to
let http404Error:(Int, String) = (404, "Not Found!")

// 解構賦值
let (justTheStatusCode, _) = http404Error

// 存取元組
http404Error.0  // 404
http404Error.1  // "Not Found!"

// 宣告並賦予元素名稱
let http200Status = (statusCode: 200, description: "OK")
http200Status.statusCode  // 200
http200Status.description // "OK"
```

## Optional 宣告

Swift 在宣告時必需明確給予值。但如果我們的變數是在後來才被賦值的話，就必需宣告成`Optional`型別

```swift
let s: String?
s = "new string"
```

### Nil-Coalescing 運算元

一般的三元運算為`a != nil ? a! : b`。Nil-Coalescing 的語法為`a ?? b`，如果`a`有值則返回`a`，
反之則返回`b`

## 範圍運算子

### Closed Range

語法:`1...5`，迭代`1~5`

```swift
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
```

### Half-Open Range

語法:`1..<5`，僅迭代`1-4`

```swift
for i in 0..<5 {
    print(i)
}
```

### 單向範圍

語法:`...`

```swift
let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// is equal to
let range = ...2
for name in names[range] {
  print(name)
}

// Anna
// Alex
// Brian

for name in names[..<2] {
    print(name)
}
// Anna
// Alex
```

## 字串與字元

字串為`值型別`。
字串可以多行並且保留原始格式

```swift
let s: String = """
你好
   這是第二行，且啟始位置有兩個空格
這是第三行
"""
```

## 集合型別

Swift 有三種集合型別，`Array`、`Set` 及 `Dictionary`，關念也與其他語言一樣。

![Collection types](./collection_type.png)

集合型別預設為`可修改(mutable)`狀態，如果要令其成員無法被修改，僅需要使用`let`宣告

```swift
let a = [String]()        // array
let s = Set<Character>()  // set
let d = [Int: String]()   // dictionary
```

### 陣列(Array)

陣列原始宣告語法為`Array<TYPE>()`，短語法為`[]`

```swift
var a1 = Array(repeating: 0.0, count: 3)   // 原始語法
var a2 = [0.0, 0.0, 0.0]                    // 短語法
```

陣列相加可以得到新的陣列

```swift
let a1 = [1, 2, 3]
let a2 = [3, 4, 5]

let a3 = a1 + a2 // [1, 2, 3, 4, 5]
```

若是想迭代陣列元素，可以直接存取元素或是以**列舉**(`enumerated`)的方式取得`索引值`及`元素`

```swift
// 直取
for item in someArray {
  print(item)
}

// 列舉
for (index, value) in someArray {
  print("Item \(index + 1): \(value)")
}

```

### 集合(Set)

一種`無序`且僅具有`唯一值`的集合型別。宣告語法為`Set<TYPE>()`，

```swift
let set1 = Set<Int>()           // 空集合
let set2: Set<Int> = [1, 2, 3]  // 字面值
```

Set 可以做`交集(intersection)`、`聯集(union)`、`差集(subtracting)`及`對稱差集(symmetric difference)`

```swift
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

// intersection
oddDigits.intersection(evenDigits).sorted()

// union
oddDigits.union(evenDigits).sorted()  // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

// subtracting
oddDigits.subtracting(singleDigitPrimeNumbers).sorted() // [1, 9]

// symmetric difference
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted() // [1, 2, 9]
```

### 字典(Dictionary)

以`唯一鍵值(key)`與`值(value)`組合而成的集合型別。原始宣告語法為`Dictionary<Key, Value>`。

```swift
var d1 = [Int: String]()    // 空字典
var d2 = ["1": 1, "2": 2]   // 字面值宣告
d2 = [:]                    // 清空字典

// 迭代字典
for (k, v) in d2 {
  print("\(k): \(v)")
}
```

## 流程控制

### For-In

For-In 可以忽略迭代的值

```swift
for _ in 1...5 {
  print("hi")
}
```

### While

與其他語言相似，差別只在 Swift 中的條件式都只能接受布林值(Bool)，也就是 True/False，
不然會報錯。

```swift
let condition = true
while condition {
  print("Hello")
}
```

### Repeat-While

有些語言叫`do...while`，但其目的都一樣，一定會執行一次程式區段。

```swift
let condition = true
repeat {
  print("Hello")
} while condition
```

### If

其判斷式也僅接受布林值(Bool)

```swift
let condition = true
if condition {
  print("Hello")
}
```

### Switch

Switch 判斷式讓我覺得很彈性變得更大且運用得當的話，反而能讓程式碼更簡潔。

基本語法會自動跳離(`break`)執行成立的區段

```swift
let c = "z"
switch c {
  case "a":
    print("a")
  case "z":
    print("z")
  default:
    print("unknown")
}
// print "z"
```

具有多個相同狀態的條件

```swift
let c = "Z"
switch c {
  case "a":
    print("a")
  case "z", "Z":
    print("z")
  default:
    print("unknown")
}
// print "z"
```

區間匹配

```swift
let i = 52
switch i {
  case 0:
    print("0")
  case 1..<25:
    print("1~25, not include 25")
  case 25..<50:
    print("25~50, not include 50")
  case 50..<100:
    print("50~100, not include 100")
  default:
    print("not in the range of number")
}
// print "50~100, not include 100"
```

元組(Tuple)條件式

```swift
let point = (1, 1)
switch point {
  case (0, 0):
    print("\(point) is at the origin")
  case (_, 0):
    print("\(point) is on the x-axis")
  case (0, _):
    print("\(point) is on the y-axis")
  case (-2...2, -2...2):
    print("\(point) is inside the box")
  default:
    print("outside!")
}
```

若有使用條件式的數值需求，可使用`數值綁定`功能實現

```swift
let point = (2, 0)
switch point {
  case (let x, 0):
  case (0, let y):
  case let (x, y):
}
```

在使用`數值綁定`後可再利用`where`進行條件判斷

```swift
let point = (1, -1)
switch point {
  case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
  case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
  case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
```

如需讓下一個`case`執行，只需要在執行區塊中最後加入`fallthrough`關鍵字

```swift
let i = 5
switch i {
  case 5:
    print("it is 5")
    fallthrough
  default:
    print(" and it is end")
}
// print "it is 5 and it is end"
```

### 標簽陳述

標簽陳述(Labeled Statements)可嵌套在`條件判斷式`或是`迴圈`中

```Swift
myLabel: if true {
    for _ in 1...1000 {
        for _ in 1...1000 {
            print("hello")
            break myLabel
        }
    }
}

if true {
    myLabel: for _ in 1...1000 {
        for _ in 1...1000 {
            print("hello")
            break myLabel
        }
    }
}

myLabel: while true {
    print("hello")
    break myLabel
}

// 上述三個標簽陳述句結果都僅列印一次"hello"
```

### Guard

簡單說，`Guard`就是一種反向的`if`，也就是`條件不成立則執行程式區塊`，只是與`if`的差別在於永遠會有`else`區塊
以及`guard let`後的常數可以在後續使用，但`if let`後的常數僅能使用在執行區塊內

```swift
func greet(person: [String: String]) {
  guard let name = person["name" ] else {
    return
  }

  print("Hello \(name)")

  guard let location = person["location"] else {
    print("I hope the weather is nice near you.")
    return
  }
  print ("I hope the weather is nice in \(location).")
}

// multiple guard

guard let a = a1, let b = b1, let, c = c1 else {
  return
}
```

### API 可用性檢查

使用者不可能全部都是使用一樣的作業系統版本，但為了能使一套程式碼通用，API 的可用性檢查就重要多了

```swift
if #available(iOS 10, macOS 10.22, *) {
  // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
  // Do something
}
```

## 函數

可傳回多個值

```swift
func myFunc() -> (Int, Int) {
  return (1, 2)
}
```

若回傳的數值可能為`nil`，必需在回傳敘述最後加上`選擇性(optional, ?)`關鍵字

```swift
func myFunc() -> (Int, Int)? {
  return (nil, nil)
}
```

可以定義`參數標簽(Argument Labels)`及`參數名稱(Parameter Names)`，如果沒有定義標簽，
預設會與名稱相同。

```swift
func myFunc(param: String) {
  print(param)
}

myFunc(param: "Hi")
```

```swift
func myFunc(argumentLabel parameterName: String) {
  print(parameterName)
}

myFunc(argumentLabel: "Hi")
```

宣告時可以忽略`參數標簽`，呼叫時會很方便，但個人覺得會失去可讀性

```swift
func myFunc(_ paramName: String) {
  print(paramName)
}

myFunc("Hi")
```

可賦予參數初始值，`但僅能放在一般參數之後`

```swift
func myFunc(_ paramWithoutDefault: Int, _ paramWithDefault: Int = 10) {
  print(paramWithoutDefault, paramWithDefault)
}

myFunc(1, 3)  // Prints "1, 3"
myFunc(1)     // Prints "1, 10"
```

可使用不定長度參數

```swift
func myFunc(_ numbers: Int...) -> Int {
  var sum = 0
  for i in numbers {
    sum += i
  }
  return sum
}

myFunc(1, 2, 3) // Prints 7
```

參數預設為`常數`，若對其做改變會造成`compile-error`，如果改變參數本身的值需要在`型別`前加上
`inout`關鍵字，並且在呼叫函式時在傳入的變數前面加上`取值運算子(&)`

```swift
func myFunc(_ a: inout Int) {
  a += 10
}

var a = 10

myFunc(&i)

print(a)  // 20
```

## 閉包

## 列舉

## 結構與類別

## 屬性

## 方法

## 下標

## 繼承

## 建構式

## 解構式

## 可選鏈

## 錯誤處理

## 型別檢查

## 巢狀型別

## 擴展

## 協定

## 泛型

```

```
