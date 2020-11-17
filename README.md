# Exercise-05i-3D-Particles
Exercise for MSCH-C220, 17 November 2020

This exercise is a chance to play with Godot's 3D Particles. Also, you will have a chance to export a game as a finished product.

Fork this repository. When that process has completed, make sure that the top of the repository reads [your username]/Exercise-05i-3D-Particles. *Edit the LICENSE and replace BL-MSCH-C220-F20 with your full name.* Commit your changes.

Clone the repository to a Local Path on your computer.

Open Godot. Import the project.godot file and open the "FPS" project.

In res://Game.tscn, I have provided a starting place for the exercise: the scene contains a FPS character in an empty warehouse with five moving targets. Your gun can shoot those targets, but you will need to provide feedback to the player.

I will leave the details of the exercise to your imagination. You will need to use an AnimatedSprite3D node for the explosion, and you will need to use at least two CPUParticles or Particles emitters. Maybe the Player/Pivot/Laser mesh will help?

When you are happy with the result, go to Project->Export. Tap Add… and then select Mac OSX. The default settings should work; export the project as project.dmg. If Godot tells you to download a template or other resources, follow those steps until you are able to export the file.

If you are not using a Mac, feel free to export other project types to test. 

Quit Godot. In GitHub desktop, add a summary message, commit your changes and push them back to GitHub. If you return to and refresh your GitHub repository page, you should now see your updated files with the time when they were changed.

Now edit the README.md file. When you have finished editing, commit your changes, and then turn in the URL of the main repository page (https://github.com/[username]/Exercise-05i-3D-Particles) on Canvas.

The final state of the file should be as follows (replacing the "Created by" information with your name):
```
# Exercise-05i-3D-Particles
Exercise for MSCH-C220, 17 November 2020

An exploration of Godot's 3D Particles and 3D Sprites.

## Implementation
Built using Godot 3.2.2
Exported for MacOS as project.dmg

The blaster and target models are from the [Blaster Kit](https://kenney.nl/assets/blaster-kit) at kenney.nl.

The skybox was downloaded from [HDRIhaven.com](https://hdrihaven.com/hdri/?c=indoor&h=empty_warehouse_01).

## References
None

## Future Development
None

## Created by 
Jason Francis
```