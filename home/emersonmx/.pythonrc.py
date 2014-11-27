try:
    from jedi.utils import setup_readline
    setup_readline()
except ImportError:
    # Fallback to the stdlib readline completer if it is installed.
    # Taken from http://docs.python.org/2/library/rlcompleter.html
    try:
        import readline
        import rlcompleter
        readline.parse_and_bind("tab: complete")
    except ImportError:
        print("No tab completion is enabled.")

import sys
import pprint

def pp_displayhook(value):
    if value is not None:
        try:
            import __builtin__
            __builtin__._ = value
        except ImportError:
            __builtins__._value

        pprint.pprint(value)

sys.displayhook = pp_displayhook

import os
import sys

from code import InteractiveConsole
from tempfile import mkstemp

EDITOR = os.environ.get("EDITOR", "vi")
EDIT_CMD = "\e"

class EditableBufferInteractiveConsole(InteractiveConsole):

    def __init__(self, *args, **kwargs):
        self.last_buffer = []
        InteractiveConsole.__init__(self, *args, **kwargs)

    def runsource(self, source, *args):
        self.last_buffer = [source.encode("utf-8")]
        return InteractiveConsole.runsource(self, source, *args)

    def raw_input(self, source, *args):
        line = InteractiveConsole.raw_input(self, source, *args)
        if line == EDIT_CMD:
            fd, tmpfl = mkstemp(".py")
            os.write(fd, b'\n'.join(self.last_buffer))
            os.close(fd)
            os.system("{} {}".format(EDITOR, tmpfl))
            with open(tmpfl) as f:
                line = f.read()
            os.unlink(tmpfl)
            tmpfl = ""
            lines = line.split('\n')
            for l in lines: self.push(l)
            line = lines[-1]

        return line

c = EditableBufferInteractiveConsole(locals=locals())
c.interact(banner="")

sys.exit()
