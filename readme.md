# Kaljajuna train module
The train should work as a simple state machine which drives until it reaches it's next checkpoint. Checkpoints are small magnets placed on the track.

## states
1. Stopped
      wait for drive command
2. Driving
      move in given direction until given amount of checkpoints are passed (default 1)
3. Homing
      move slowly in reversed direction until back on checkpoint

## Usage
- UID/train/hops -m <checkpoint count> 
- UID/train/move -m <speed>
