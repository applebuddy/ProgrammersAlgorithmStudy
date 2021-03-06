
// MARK: - 삼각 달팽이

// MARK: swift 문제풀이

import Foundation

let dx = [1, 0, -1]
let dy = [0, 1, -1]

func solution(_ n: Int) -> [Int] {
    var dir = 0
    var row = 0, col = 0
    var num = 1
    var G = [[Int]]()
    (1 ... n).forEach {
        G.append([Int](repeating: 0, count: $0))
    }

    // n, n-1, n-2, ... 1 -> 전환점까지의 거리
    (1 ... n).reversed().forEach {
        (0 ..< $0 - 1).forEach { _ in
            G[row][col] = num
            row += dx[dir]
            col += dy[dir]
            num += 1
        }

        G[row][col] = num
        num += 1
        dir = (dir + 1) % 3
        row += dx[dir]
        col += dy[dir]
    }

    return G.reduce(into: [Int]()) { $0.append(contentsOf: $1) }
}

// MARK: 배열공간 활용 비효율버전

/*
 import Foundation

 let dx = [1, 0, -1]
 let dy = [-1, 2, -1]
 func sadSnail(_ n: Int) -> [Int] {
 let mxLen = n * 2 - 1
 let mxCnt = (n + 1) * n / 2
 var nowCnt = 0
 var nowNum = 1
 var dir = 0
 var G = [[Int]](repeating: [Int](repeating: 0, count: mxLen), count: mxLen)
 var pos = (0, mxLen / 2)
 while nowCnt < mxCnt {
     G[pos.0][pos.1] = nowNum
     nowNum += 1
     nowCnt += 1
     var testCnt = 0
     while testCnt < 3 {
         let nextX = pos.0 + dx[dir]
         let nextY = pos.1 + dy[dir]
         if nextX < 0 || nextX >= mxLen || nextY < 0 || nextY >= mxLen
             || G[nextX][nextY] > 0 { dir = (dir + 1) % 3; testCnt += 1; continue }
         pos.0 = nextX
         pos.1 = nextY
         break
     }
 }

 var Ans = [Int]()
 var standCol = mxLen / 2
 var colCnt = 1
 var startRow = 0
 while startRow < mxLen, standCol >= 0 {
     var tCnt = 0
     for _ in standCol ..< standCol + colCnt {
         Ans.append(G[startRow][standCol + tCnt])
         tCnt += 2
     }
     colCnt += 1
     standCol -= 1
     startRow += 1
 }
 return Ans
 }
 */
