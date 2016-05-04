# memegen

Modified fork of [memegen](https://github.com/cmdrkeene/memegen) (An RMagick-based two-caption meme generator written in ruby). This fork can generate a fixed number of images from the same meme template. 

## Install

You'll need [ImageMagick](http://www.imagemagick.org/script/index.php) and [ghostscript](http://www.ghostscript.com/) installed.

## Usage

To generate an image:

    $ bin/memegen Advice-Dog.jpg . example "Generate memes" "Profit"
    ./example.jpg

You only have to supply one piece of text:

    $ bin/memegen Advice-Dog.jpg . example "" "Profit"
    ./example.jpg

To generate memes with text from a file:

    $ ./generate.sh superimpose.txt Advice-Dog.jpg Advice-Dog
    Advice-Dog
    Data/Advice-Dog/0.jpg
    Data/Advice-Dog/1.jpg
    Data/Advice-Dog/2.jpg
    Data/Advice-Dog/3.jpg
    Data/Advice-Dog/4.jpg
    Data/Advice-Dog/5.jpg
    Data/Advice-Dog/6.jpg
    .
    .
    .

To generate such memes for all templates in folder:

    $ ./run_all.sh ../Meme_templates/


