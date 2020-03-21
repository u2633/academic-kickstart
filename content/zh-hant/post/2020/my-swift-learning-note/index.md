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

學習中…🤓
