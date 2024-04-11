#!/usr/bin/python
#   _____ _____ _____ _____ 
#  | __  |_   _|     |  _  |
#  | __ -| | | |  |  |   __|
#  |_____| |_| |_____|__|    THEMES
#                         
#  by Bina


import os
import sys
import argparse
import pywal
from typing import Tuple


def get_args():

    parser = argparse.ArgumentParser(
        description='create btop theme file with pywal')
    parser.add_argument('-n',
                        '--name',
                        required=True,
                        help='base name for the wallpaper and output theme file')
    parser.add_argument('-t',
                        '--file-type',
                        default='png',
                        help='image file type: png (default), jpg or jpeg')
    parser.add_argument('-wp',
                        '--wp-dir',
                        default='~/wallpapers/',
                        help='path to the wallpaper directory')
    parser.add_argument('-i',
                        '--in-temp',
                        default='~/.config/wal/templates/btop',
                        help='path to wal template file; ~/.config/wal/templates/btop (default)')
    parser.add_argument('-o',
                        '--out-dir',
                        default='~/.config/btop/themes/',
                        help='path to btop theme file directory; ~/.config/btop/themes/ (default)')

    if len(sys.argv) <= 1:
        parser.print_help()
        sys.exit(1)

    return parser.parse_args()


def transform_color(colors):

    def to_rgb(color_str: str) -> Tuple[int, int, int]:
        return (
            int(color_str[1:3], base=16),
            int(color_str[3:5], base=16),
            int(color_str[5:7], base=16))

    def to_luminance(color_str) -> float:
        r, g, b = to_rgb(color_str)
        return r + g + b

    assert len(colors['colors']) == 16, len(colors['colors'])
    all_colors = [colors['colors'][f'color{i}'] for i in range(1, 8)]
    sorted_by_luminance = sorted(all_colors, key=to_luminance)

    new_colors = dict(
        sum([[(f'color{i + 1}', color), (f'color{i + 9}', color)]
             for i, color in enumerate(sorted_by_luminance)], []))
    colors['colors'].update(new_colors)
    colors['special']['background'] = colors['colors']['color0']
    colors['special']['foreground'] = colors['colors']['color7']
    colors['special']['cursor'] = colors['colors']['color7']

    return colors


if __name__ == '__main__':
    args = get_args()

    wallpaper = os.path.expanduser(os.path.join(args.wp_dir, args.name + '.' + args.file_type))
    template_file = os.path.expanduser(args.in_temp)
    theme_file = os.path.expanduser(os.path.join(args.out_dir, args.name + '.theme'))

    colors = pywal.colors.get(wallpaper)
    colors = transform_color(colors)
    pywal.export.every(colors)
    flatten_colors = pywal.export.flatten_colors(colors)
    
    pywal.export.template(flatten_colors, template_file, theme_file)

        
