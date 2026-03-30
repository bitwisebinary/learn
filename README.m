1. BFS
from collections import deque

# Take number of nodes
n = int(input("Enter number of nodes: "))

# Create adjacency list
graph = {}

# Input neighbors for each node
for i in range(n):
    node = input(f"Enter node {i+1} name: ")
    neighbors = input(f"Enter neighbors of {node} (space-separated): ").split()
    graph[node] = neighbors

# BFS function
def bfs(graph, start):
    visited = set()
    queue = deque([start])

    print("BFS Traversal:")

    while queue:
        node = queue.popleft()
        
        if node not in visited:
            print(node, end=" ")
            visited.add(node)

            for neighbor in graph[node]:
                if neighbor not in visited:
                    queue.append(neighbor)

# Start node input
start_node = input("\nEnter starting node: ")

# Call BFS
bfs(graph, start_node)

........................................

2. DFS

# Take number of nodes
n = int(input("Enter number of nodes: "))

# Create adjacency list
graph = {}

# Input neighbors for each node
for i in range(n):
    node = input(f"Enter node {i+1} name: ")
    neighbors = input(f"Enter neighbors of {node} (space-separated): ").split()
    graph[node] = neighbors

# DFS function (recursive)
def dfs(graph, node, visited):
    if node not in visited:
        print(node, end=" ")
        visited.add(node)

        for neighbor in graph[node]:
            dfs(graph, neighbor, visited)

# Start node input
start_node = input("\nEnter starting node: ")

# Call DFS
print("DFS Traversal:")
dfs(graph, start_node, set())


..........................................

3. TIC-TAC-TOE

# Initialize board
board = [" " for _ in range(9)]

# Print board
def print_board():
    print()
    print(board[0], "|", board[1], "|", board[2])
    print("--+---+--")
    print(board[3], "|", board[4], "|", board[5])
    print("--+---+--")
    print(board[6], "|", board[7], "|", board[8])
    print()

# Check winner
def check_winner(player):
    win_positions = [
        [0,1,2], [3,4,5], [6,7,8],  # rows
        [0,3,6], [1,4,7], [2,5,8],  # cols
        [0,4,8], [2,4,6]            # diagonals
    ]
    
    for pos in win_positions:
        if board[pos[0]] == board[pos[1]] == board[pos[2]] == player:
            return True
    return False

# Game loop
def play():
    current_player = "X"
    
    for turn in range(9):
        print_board()
        move = int(input(f"Player {current_player}, enter position (1-9): ")) - 1
        
        if board[move] == " ":
            board[move] = current_player
            
            if check_winner(current_player):
                print_board()
                print(f" Player {current_player} wins!")
                return
            
            # Switch player
            current_player = "O" if current_player == "X" else "X"
        else:
            print(" Position already taken! Try again.")
            continue
    
    print_board()
    print(" It's a draw!")

# Start game
play()

......................................

4. 8 PUZZLE

from collections import deque

# Goal state
goal = [1,2,3,4,5,6,7,8,0]

# Possible moves (up, down, left, right)
moves = {
    0: [1,3], 1: [0,2,4], 2: [1,5],
    3: [0,4,6], 4: [1,3,5,7], 5: [2,4,8],
    6: [3,7], 7: [4,6,8], 8: [5,7]
}

# BFS function
def bfs(start):
    queue = deque([(start, [])])
    visited = set()
    
    while queue:
        state, path = queue.popleft()
        
        if state == goal:
            return path
        
        visited.add(tuple(state))
        
        zero = state.index(0)
        
        for move in moves[zero]:
            new_state = state[:]
            new_state[zero], new_state[move] = new_state[move], new_state[zero]
            
            if tuple(new_state) not in visited:
                queue.append((new_state, path + [new_state]))
    
    return None

# Input
print("Enter initial state (use 0 for blank):")
start = list(map(int, input().split()))

# Solve
result = bfs(start)

# Output
if result:
    print("\nSteps to reach goal:")
    for step in result:
        print(step)
else:
    print("No solution found.")
.......................................


  5. TRAVELLIGN SALESMAN

  from itertools import permutations

# Input
n = int(input("Enter number of cities: "))

print("Enter distance matrix:")
graph = []
for i in range(n):
    row = list(map(int, input().split()))
    graph.append(row)

cities = list(range(n))

min_path = float('inf')
best_route = None

# Try all permutations (except starting city 0)
for perm in permutations(cities[1:]):
    route = [0] + list(perm) + [0]
    cost = 0
    
    for i in range(len(route)-1):
        cost += graph[route[i]][route[i+1]]
    
    if cost < min_path:
        min_path = cost
        best_route = route

# Output
print("\nMinimum cost:", min_path)
print("Best route:", best_route)

..............................

6.WATER JUG PROBLEM

from collections import deque

# BFS function
def water_jug(cap1, cap2, target):
    visited = set()
    queue = deque([((0, 0), [])])  # (jug1, jug2), path
    
    while queue:
        (x, y), path = queue.popleft()
        
        if (x, y) in visited:
            continue
        
        visited.add((x, y))
        path = path + [(x, y)]
        
        # Check if target reached
        if x == target or y == target:
            return path
        
        # Possible moves
        next_states = [
            (cap1, y),   # fill jug1
            (x, cap2),   # fill jug2
            (0, y),      # empty jug1
            (x, 0),      # empty jug2
            # pour jug1 -> jug2
            (x - min(x, cap2 - y), y + min(x, cap2 - y)),
            # pour jug2 -> jug1
            (x + min(y, cap1 - x), y - min(y, cap1 - x))
        ]
        
        for state in next_states:
            if state not in visited:
                queue.append((state, path))
    
    return None

# Input
cap1 = int(input("Enter capacity of Jug1: "))
cap2 = int(input("Enter capacity of Jug2: "))
target = int(input("Enter target amount: "))

# Solve
result = water_jug(cap1, cap2, target)

# Output
if result:
    print("\nSteps:")
    for step in result:
        print(step)
else:
    print("No solution possible.")


  ..............................

7.TOWER OF HANOI

def hanoi(n, source, auxiliary, destination):
    if n == 1:
        print(f"Move disk 1 from {source} → {destination}")
        return
    
    # Move n-1 disks to auxiliary
    hanoi(n-1, source, destination, auxiliary)
    
    # Move largest disk
    print(f"Move disk {n} from {source} → {destination}")
    
    # Move n-1 disks to destination
    hanoi(n-1, auxiliary, source, destination)

# Input
n = int(input("Enter number of disks: "))

# Call function
hanoi(n, "A", "B", "C")


  
