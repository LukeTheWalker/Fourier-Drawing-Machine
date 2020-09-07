# Fourier-Drawing-Machine
Watch real time drawing of your favorites photos thanks to a Fourier-driven drawing machine!

## Installation
In order to run this project you will first need the Processing IDE installed on your machine, you can find the latest version at ```https://processing.org/download/```


In addition it is recommended to have ffmpeg or any other image/video processing tool in order to create the final result. 

## Usage
Since this is still an under-development project it needs other external help work; specifically, it is not able to process a "raw" rgb image.

It is first needed to extract the edges of the image, to do so I recommend using ```http://bigwww.epfl.ch/demo/ip/demos/edgeDetector/```

Put the image of the edge inside  ```/data/``` and rename it  ```input.png```

Then open the ```Fourier_Drawing_Machine.pde``` and hit the run button.

## Examples

Here are some examples

<p>
  <img src= https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/Thanos/Thanos.png width="250" /> 
  <img src= https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/Thanos/ThanosEdges.png width="250" /> 
  <img src= https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/Thanos/Thanos.gif width="250" /> 
</p>


<p>
  <img src= https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/BoggioLeraLogo/BoggioLera.png width="250" /> 
  <img src= https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/BoggioLeraLogo/BoggioLeraEdges.png width="250" /> 
  <img src= https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/BoggioLeraLogo/BoggioLera.gif width="250" /> 
</p>


<p>
  <img src= https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/HourOfCodeLogo/HourOfCode.png width="250" /> 
  <img src= https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/HourOfCodeLogo/HourOfCodeEdges.png width="250" /> 
  <img src= https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/HourOfCodeLogo/HourOfCode.gif width="250" /> 
</p>

## License

Released under the terms of the [GNU General Public License, version 3](https://gnu.org/licenses/gpl.html)

[Thanos]: https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/Thanos/Thanos.png
[ThanosEdge]: https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/Thanos/ThanosEdges.png
[ThanosGif]: https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/Thanos/Thanos.gif
[BoggioLeraLogo]: https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/BoggioLeraLogo/BoggioLera.png
[BoggioLeraLogoEdge]: https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/BoggioLeraLogo/BoggioLeraEdges.png
[BoggioLeraLogoGif]: https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/BoggioLeraLogo/BoggioLera.gif
[HourOfCodeLogo]: https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/HourOfCodeLogo/HourOfCode.png
[HourOfCodeLogoEdge]: https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/HourOfCodeLogo/HourOfCodeEdges.png
[HourOfCodeLogoGif]: https://github.com/LukeTheWalker/Fourier-Drawing-Machine/blob/master/examples/HourOfCodeLogo/HourOfCode.gif
