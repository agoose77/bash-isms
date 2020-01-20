import argparse
import pathlib
import sys


def main(argv):
    parser = argparse.ArgumentParser(argv)
    parser.add_argument("file")
    
    args = parser.parse_args()
    
    try:
        obj = int(args.file)
    except ValueError:
        obj = args.file
    
    print(f"Opening {obj}")
    with open(obj) as f:
        print(f.read())


if __name__ == "__main__":
    main(sys.argv)
