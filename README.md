# jerzpals

Color palettes for R and ggplot2 inspired by my stylish friend and colleague, Jerzy Eisenberg-Guyot. Jerzy is many things to many people, but he is a paragon of style to just about everyone. This package is a way to bring Jerzy's style to the masses. 

This package was a convenient excuse to learn how to build packages in R and host them on Github (and eventually CRAN). And also an opportunity to work with my wife, Tanya Basmadjian Avoundjian, who is a very talented graphic designer (who is always supplying me with awesome color palettes for visualizations!).

## Installation

To install, run the following in R:

```
devtools::install_github("tavoundjian/jerzpals")
```

## Usage

The functions ```scale_fill_jerzeg``` and ```scale_color_jerzeg``` can be used directly with ggplot2. 

### Arguments 
* **alpha**: pass through parameter to jerz. Numeric value between 0 and 1 that controls opacity of color map (1 = opaque).
* **begin**: numeric value between 0 and 1. Indicates the first color in the palette/map.
* **end**: numeric value between 0 and 1. Indicates the last color in the palette/map.
* **direction**: sets the order of the colors in the scale. If 1 (default), colors are output by ```jerz_pal```. If -1, the order of colors is reversed.
* **discrete**: generate a discrete palette? (default: ```FALSE``` - generate continuous palette)
* **option**: character string indicating the palette option to use. (see "Palettes" below for available palette options)

### Examples
```
library(jerzpals)

library(ggplot2)
# library(jerzpals)

data(iris)

# Discrete scale
ggplot(data = iris, aes(x = Species, y = Petal.Length)) +
geom_bar(aes(fill = Species), stat = "identity") +
scale_fill_jerzeg(option = "jerzshoe2", discrete = T) +
theme_bw()

# Continuous scale
ggplot(data = iris, aes(x = Petal.Width, y = Petal.Length)) +
geom_point(aes(color = Sepal.Width)) +
scale_color_jerzeg(option = "H", begin = 0, end = 0.5) + # use begin and end to set range of colors used in the palette
theme_bw()
```

## Palettes

### jerzshoe1 (option = "A")

![jerzshoe1](https://github.com/tavoundjian/jerzpals/blob/master/images/jerzshoe1.png?raw=true)

### jerzeg (option = "B")

![jerzeg](https://github.com/tavoundjian/jerzpals/blob/master/images/jerzeg.png?raw=true)

### jerzhat (option = "C")

![jerzhat](https://github.com/tavoundjian/jerzpals/blob/master/images/jerzhat.png?raw=true)

### jerzshirt (option = "D")

![jerzshirt](https://github.com/tavoundjian/jerzpals/blob/master/images/jerzshirt.png?raw=true)

### jerzshoe2 (option = "E")

![jerzshoe2](https://github.com/tavoundjian/jerzpals/blob/master/images/jerzshoe2.png?raw=true)

### jerzjacket (option = "F")

![jerzjacket](https://github.com/tavoundjian/jerzpals/blob/master/images/jerzjacket.png?raw=true)

### jerzpack1 (option = "G")

![jerzpack1](https://github.com/tavoundjian/jerzpals/blob/master/images/jerzpack1.png?raw=true)

### jerzpack2 (option = "H")

![jerzpack2](https://github.com/tavoundjian/jerzpals/blob/master/images/jerzpack2.png?raw=true)
