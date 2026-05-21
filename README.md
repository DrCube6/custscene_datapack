# Minecraft Cutscene Datapack
Create smooth, complex cutscenes in Minecraft with ease!

<img width="400" height="225" alt="csdp_example" src="https://github.com/user-attachments/assets/ea0cd137-555c-40fc-8cbd-d916641e1477" />

#### Supports
* Custom Focal Point and Camera timings
* Precise Movement and repeatability
* Smooth Focal Point interpolation
* Indefinitely long cutscenes
* Utilizes Minecraft's spectator mode
* Can swap out the Camera entity with a mob for Core Shaders effects (Creeper, etc.)

#### Requirements
* Datapack

#### Theory
Segment-based movement is crucial in making indefinitely long cutscenes. The cutscene loader increments the segments until the cutscene is complete.
<img width="1484" height="485" alt="csdp_01" src="https://github.com/user-attachments/assets/3b71eecc-8b66-4d5a-9e1a-02428d2c3c9b" />
To create a smooth interpolation of the focal point's movement, we use a smoothing function f(t), such as a parabola whose integral equals 1. We find Δx = (xf-x0) and, based on the time in the sequence, multiply this value by our smoothing function. The integral of this smoothing function must be 1 over the bounds 0 to 1 to make sure that the product of f(t) and Δx over the duration t adds up to Δx.
<img width="634" height="418" alt="csdp_02" src="https://github.com/user-attachments/assets/847b5ef3-8077-4063-97de-0226cd2bfc9a" />
Finally, we apply this technique to all dimensions and utilize Minecraft's "facing" command to handle rotation.

