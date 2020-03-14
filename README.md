#####1. Problem Statement

A pawn can move on 10x10 chequerboard horizontally, vertically and diagonally by these rules:
1. 3 tiles moving North (N), West (W), South (S) and East (E)
2. 2 tiles moving NE, SE, SW and NW
3. Moves are only allowed if the ending tile exists on the board
4. Starting from initial position, the pawn can visit each cell only once

Write a program that finds at least one path for the pawn to visit all tiles on the board following
the above rules, starting from any tile.

##### 2. Algorithim
Applied Warnsdorff algorithims
 
1. 10*10 Board with value = 0 (Consider it as not visited)
2. Prepare all possible moves by valid_move_list = [[0,3],[2,2],[3,0],[2,-2],[0,-3],[-2,-2],[-3,0],[-2,2]]
3. Pawn can start from any valid position on the board.  
4.  find unvisited tile with minimal degree from the current position
5. Once find the next position, update the position in board as visited by updating value 1 to 100.  
6. Keep continue step 4 and 5 until all the tiles got visited



##### 2. App setup and run the App:    
1. ruby 2.2.10
2. unzip the app folder and go to app path.
3. Run bundle install

     `$ bundle install`

 
4.Run the application with below command.
 
      $ ruby lib/runner.rb i j
       (default i,j is 0,0)

##### 3. Running Unit test cases:   
 	  $ rspec spec/*
