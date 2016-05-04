require "meme_generator"

def images
  MemeGenerator.meme_paths.values
end

def usage
  puts 'usage: memegen <image> <folder> <imagename> <top> <bottom> [--help|-h]'
  exit 1
end

def generate(path, folder, imagename, top, bottom)
  if top || bottom
    output_path = MemeGenerator.generate(path, folder, imagename, top, bottom)
    puts output_path
    exit 0
  else
    puts "Error: You must provide at least one piece of text"
    usage
  end
end
