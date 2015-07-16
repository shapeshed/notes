# notes.sh

Simple, lightweight note taking from the command line.

`notes.sh` is an opinionated lightweight note taking utility. It thinks the following

* Use markdown for taking notes
* Use a text editor for taking notes
* Notes are stored in `~/notes`
* Text files are good
* Doing one thing well is good

## Installation

`notes.sh` is just a bash script so install it somewhere in your `$PATH` and you are good to go.

## Usage

    notes.sh help

Show's help text

    notes.sh new note-name

Creates a new note and opens it in whatever you have set for `$EDITOR`, or `vi` if not set.

    notes.sh list 

Lists the notes you've made

    notes.sh show note-name 

Shows the content of `note-name` in the terminal using `more`.

    notes.sh rm note-name

Deletes `note-name`

    notes.sh edit note-name

Edit `note-name`

    notes.sh version

Displays the current version
