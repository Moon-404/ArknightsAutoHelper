import os
import pickle
from PIL import Image
import numpy as np
from functools import lru_cache

root = os.path.realpath(os.path.dirname(__file__))

def get_path(*names):
    return os.path.join(root, *names)

def load_image(name, mode=None):
    names = name.split('/')
    path = get_path(*names)
    im = Image.open(path)
    if mode is not None and im.mode != mode:
        im = im.convert(mode)
    return im

@lru_cache(maxsize=None)
def load_image_cached(name, mode=None):
    return load_image(name, mode)

def load_image_as_ndarray(name):
    return np.asarray(load_image(name))

def load_pickle(name):
    names = name.split('/')
    path = get_path(*names)
    with open(path, 'rb') as f:
        result = pickle.load(f)
    return result
