import os
import subprocess
import ranger.api.commands

class fzf(ranger.api.commands.Command):
    def execute(self):
        if self.quantifier:
            command = r"""find -L . -fstype 'dev' -o -fstype 'proc' -o -type d -print 2> /dev/null | sed 1d | cut -b3- | fzf +m"""
        else:
            command = r"""find -L . -fstype 'dev' -o -fstype 'proc' -o -print 2> /dev/null | sed 1d | cut -b3- | fzf +m"""
        
        fzf = self.fm.execute_command(command, stdout=subprocess.PIPE)
        stdout, _ = fzf.communicate()
        
        if fzf.returncode == 0:
            fzf_file = os.path.abspath(stdout.decode('utf-8').rstrip('\n'))
            if os.path.isdir(fzf_file):
                self.fm.cd(fzf_file)
            else:
                self.fm.select_file(fzf_file)

