import os, re

def get_space_to_fill():
    """Returns the number of spaces to fill the terminal."""
    rows, columns = os.popen('stty size', 'r').read().split()
    return int(columns) - 1

def get_space_to_fill_text(text: str):
    """Returns the number of spaces to fill the terminal."""
    rows, columns = os.popen('stty size', 'r').read().split()
    return int(columns) - len(text) - 1

def print_top_line():
    """prints the top line of the terminal."""
    print("┌"+"─"*get_space_to_fill_text("┌─")+"┐")

def print_bottom_line():
    """prints the bottom line of the terminal."""
    print("└" + "─"*get_space_to_fill_text("└─") + "┘")

def print_middle_line():
    """prints the middle line of the terminal."""
    print("├"+"─"*get_space_to_fill_text("├─")+"┤")

def lprint(text: str, more_space: int=0):
    """Prints a line with the given text and fills the rest of the terminal with spaces."""
    # Remove ANSI escape sequences
    raw_text = re.sub(r"\x1b\[[0-9;]*m", "", text)
    print(f"│ {text}" + " "*(get_space_to_fill_text(f"│ {raw_text}")+more_space)+"│")


if __name__ == "__main__":
    print(get_space_to_fill())
    print(get_space_to_fill_text("Hello"))
