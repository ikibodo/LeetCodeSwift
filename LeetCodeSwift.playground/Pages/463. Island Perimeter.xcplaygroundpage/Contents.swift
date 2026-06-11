// Time: O(m × n)
// Space: O(1)

func islandPerimeter(_ grid: [[Int]]) -> Int {
    var cells = 0
    var neighbors = 0
    
    for i in 0..<grid.count {
        for j in 0..<grid[0].count {
            if grid[i][j] == 1 {
                cells += 1
                if j + 1 < grid[0].count && grid[i][j + 1] == 1 {
                    neighbors += 1
                }
                if i + 1 < grid.count && grid[i + 1][j] == 1 {
                    neighbors += 1
                }
            }
        }
    }
    
    return cells * 4 - neighbors * 2
}
