"""distutils.spawn

Provides the 'spawn()' function, a front-end to various platform-
specific functions for launching another program in a sub-process.
Also provides the 'find_executable()' to search the path for a given
executable name.
"""

# created 1999/07/24, Greg Ward

__revision__ = "$Id: spawn.py,v 1.11 2001/12/06 20:51:35 fdrake Exp $"

import sys, os, string
from distutils.errors import *


def spawn (cmd,
           search_path=1,
           verbose=0,
           dry_run=0):

    """Run another program, specified as a command list 'cmd', in a new
    process.  'cmd' is just the argument list for the new process, ie.
    cmd[0] is the program to run and cmd[1:] are the rest of its arguments.
    There is no way to run a program with a name different from that of its
    executable.

    If 'search_path' is true (the default), the system's executable search
    path will be used to find the program; otherwise, cmd[0] must be the
    exact path to the executable.  If 'verbose' is true, a one-line summary
    of the command will be printed before it is run.  If 'dry_run' is true,
    the command will not actually be run.

    Raise DistutilsExecError if running the program fails in any way; just
    return on success.
    """
    if os.name == 'posix':
        _spawn_posix(cmd, search_path, verbose, dry_run)
    elif os.name == 'nt':
        _spawn_nt(cmd, search_path, verbose, dry_run)
    else:
        raise DistutilsPlatformError, \
              "don't know how to spawn programs on platform '%s'" % os.name

# spawn ()


def _nt_quote_args (args):
    """Quote command-line arguments for DOS/Windows conventions: just
    wraps every argument which contains blanks in double quotes, and
    returns a new argument list.
    """

    # XXX this doesn't seem very robust to me -- but if the Windows guys
    # say it'll work, I guess I'll have to accept it.  (What if an arg
    # contains quotes?  What other magic characters, other than spaces,
    # have to be escaped?  Is there an escaping mechanism other than
    # quoting?)

    for i in range(len(args)):
        if string.find(args[i], ' ') != -1:
            args[i] = '"%s"' % args[i]
    return args

# def _spawn_nt (cmd,
def _spawn_posix (cmd,
               search_path=1,
               verbose=0,
               dry_run=0):

    executable = cmd[0]
    cmd = _nt_quote_args(cmd)
    if search_path:
        # either we find one or it stays the same
        executable = find_executable(executable) or executable
    if verbose:
        print string.join([executable] + cmd[1:], ' ')
    if not dry_run:
        # spawn for NT requires a full path to the .exe
        try:
            rc = os.spawnv(os.P_WAIT, executable, cmd)
        except OSError, exc:
            # this seems to happen when the command isn't found
            raise DistutilsExecError, \
                  "command '%s' failed: %s" % (cmd[0], exc[-1])
        if rc != 0:
            # and this reflects the command running but failing
            raise DistutilsExecError, \
                  "command '%s' failed with exit status %d" % (cmd[0], rc)


def _spawn_nt (cmd,
               search_path=1,
               verbose=0,
               dry_run=0):

    executable = cmd[0]
    cmd = _nt_quote_args(cmd)
    if search_path:
        # either we find one or it stays the same
        executable = find_executable(executable) or executable
    if verbose:
        print string.join([executable] + cmd[1:], ' ')
    if not dry_run:
        # spawn for NT requires a full path to the .exe
        try:
            rc = os.spawnv(os.P_WAIT, executable, cmd)
        except OSError, exc:
            # this seems to happen when the command isn't found
            raise DistutilsExecError, \
                  "command '%s' failed: %s" % (cmd[0], exc[-1])
        if rc != 0:
            # and this reflects the command running but failing
            raise DistutilsExecError, \
                  "command '%s' failed with exit status %d" % (cmd[0], rc)

def _spawn_posix_old (cmd,
                  search_path=1,
                  verbose=0,
                  dry_run=0):

    if verbose:
        print string.join(cmd, ' ')
    if dry_run:
        return
    exec_fn = search_path and os.execvp or os.execv

    pid = os.fork()

    if pid == 0:                        # in the child
        try:
            #print "cmd[0] =", cmd[0]
            #print "cmd =", cmd
            exec_fn(cmd[0], cmd)
        except OSError, e:
            sys.stderr.write("unable to execute %s: %s\n" %
                             (cmd[0], e.strerror))
            os._exit(1)

        sys.stderr.write("unable to execute %s for unknown reasons" % cmd[0])
        os._exit(1)


    else:                               # in the parent
        # Loop until the child either exits or is terminated by a signal
        # (ie. keep waiting if it's merely stopped)
        while 1:
            (pid, status) = os.waitpid(pid, 0)
            if os.WIFSIGNALED(status):
                raise DistutilsExecError, \
                      "command '%s' terminated by signal %d" % \
                      (cmd[0], os.WTERMSIG(status))

            elif os.WIFEXITED(status):
                exit_status = os.WEXITSTATUS(status)
                if exit_status == 0:
                    return              # hey, it succeeded!
                else:
                    raise DistutilsExecError, \
                          "command '%s' failed with exit status %d" % \
                          (cmd[0], exit_status)

            elif os.WIFSTOPPED(status):
                continue

            else:
                raise DistutilsExecError, \
                      "unknown error executing '%s': termination status %d" % \
                      (cmd[0], status)
# _spawn_posix ()


def find_executable(executable, path=None):
    """Try to find 'executable' in the directories listed in 'path' (a
    string listing directories separated by 'os.pathsep'; defaults to
    os.environ['PATH']).  Returns the complete filename or None if not
    found.
    """
    if path is None:
        path = os.environ['PATH']
    paths = string.split(path, os.pathsep)
    (base, ext) = os.path.splitext(executable)
    if (sys.platform == 'win32') and (ext != '.exe'):
        executable = executable + '.exe'
    if not os.path.isfile(executable):
        for p in paths:
            f = os.path.join(p, executable)
            if os.path.isfile(f):
                # the file exists, we have a shot at spawn working
                return f
        return None
    else:
        return executable

# find_executable()
