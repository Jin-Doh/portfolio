"This script converts image files to webp format."
from pathlib import Path
try:
    from PIL import Image
except ModuleNotFoundError:
    import os
    os.system("pip install pillow")
    from PIL import Image

def resize_width(img, width):
    """
    Resize the image to the given width.

    :param Image img: image object
    :param int width: width of the image
    :return Image: resized image object
    """
    return img.resize((width, int(img.height * width / img.width)))

def resize_height(img, height):
    """
    Resize the image to the given height.

    :param Image img: image object
    :param int height: height of the image
    :return Image: resized image object
    """
    return img.resize((int(img.width * height / img.height), height))

def convert_to_webp(img_fpath, max_size=1080):
    """
    Convert image file to webp format and save it to the static/reference_imgs directory.

    :param Path img_fpath: image file path
    :param int max_size: maximum size of the image, defaults to 1080
    :return str: message of the result
    """
    origin_file_size = Path(img_fpath).stat().st_size
    origin_file_ext = Path(img_fpath).suffix
    img = Image.open(img_fpath)

    resize_mode = "width" if img.width > img.height else "height"
    if resize_mode == "width":
        if img.width > max_size:
            img = resize_width(img, max_size)
    else:
        if img.height > max_size:
            img = resize_height(img, max_size)

    save_dir = Path(__file__).parent / "static" / "reference_imgs"
    converted_fpath = save_dir / Path(img_fpath).name.replace(origin_file_ext, ".webp")
    img.save(converted_fpath, "WEBP")
    target_file_size = (converted_fpath).stat().st_size
    return f"Saved {converted_fpath} ({origin_file_size} -> {target_file_size})"

if __name__ == "__main__":
    targets = [
        "/Users/kyunghokim/Desktop/스크린샷 2024-10-22 14.45.54.png"
    ]
    for target in targets:
        print(convert_to_webp(target))
