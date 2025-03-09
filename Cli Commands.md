Assuming I remember all the basic commands.

- #### Word count, file size.
In normal mode, \[g] + \[ctrl] + \[g].

- #### quick navigation around buffers.
There's a lot of commands here, so just note that it's \[ctrl] + \[w] in normal mode.

- #### Repeat.
The dot command in normal mode repeats the last change made. It re-executes the last change at the current cursor position.
So in normal mode, \[.]

- #### Rot 13 Cryptography.
In visual mode, the selected text will be encrypted by pressing \[g] + \[?].

- #### Bang Bang.
Write a shell command as a line. Then in normal mode with the cursor on the line, press \[!] + \[!] then \[s] + \[h].
The line executes as a command.
There are other terminal command like tricks with bang. Such as \[:r!date] or \[:r!whoami].

- #### Earlier, later.
Essentially like "undo" and "redo" but through time.
For example, \[:earlier 2m] to go back two minutes.

- #### To html.
\[:tohtml] to convert the content of the current buffer into a HTML file with syntax highlighting.

---

#### Commands to remember (Linux)
These are commands that I keep on forgetting but should keep in mind.

##### Connecting to WiFi using nmcli:
-> nmcli device wifi list
-> nmcli device wifi connect <SSID> <password>

For a graphical interface, just type nmtui in the terminal instead.

##### Connecting to bluetooth devices.
-> bluetoothctl
-> devices
-> connect <BD_ADDR>

Turning on or off bluetooth:
-> power off
-> power on

-> quit
to exit bluetoothctl

##### lf terminal file manager.
lf (list files).
lfcd (list files, change directory).
zh to toggle seeing hidden files.
y to copy.
d to cut.
p to paste.
c to clear selection.
t to "tag". (Idk what the fuck tagging does).
r to rename file or directory.
space to toggle selection.
f to find.
/ to search.
q to quit.

##### BC cli calculator.
To use functions like 'sqrt', 'sine (s)', 'cosine (c)', etc. You have to load the L math library with bc-l.
Scale variable, specifies the number of decimal places. As an example:
-> 151.17 / 60 = 2
-> scale = 4
-> 151.17 / 60 = 2.5195
scale is by default 0.

To exit bc, type quit.
