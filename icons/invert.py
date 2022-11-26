# from PIL import Image
# import PIL.ImageOps    

# image = Image.open('rust.png')

# inverted_image = PIL.ImageOps.invert(image.convert('RGB'))

# inverted_image.save('rust_inverted.png')

# https://stackoverflow.com/questions/11484204/python-invert-image-with-transparent-background-pil-gimp
from PIL import Image

img = Image.open('rust.png').convert('RGBA')

r, g, b, a = img.split()

def invert(image):
    return image.point(lambda p: 255 - p)

r, g, b = map(invert, (r, g, b))

img2 = Image.merge(img.mode, (r, g, b, a))

img2.save('rust_inverted.png')