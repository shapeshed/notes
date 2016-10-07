# notes

Simple, lightweight note taking from the command line.

`notes` is an opinionated lightweight note taking utility. It thinks the following

* Use markdown for taking notes
* Use a text editor for taking notes
* Notes are stored in `~/notes`
* Text files are good
* Doing one thing well is good

## Installation

First, create a git repository under `~/notes`. 

Then `notes.sh` is just a bash script, so install it somewhere in your `$PATH` and you are good to go.

## Usage

    notes help

Show's help text

    notes new note-name

Creates a new note and opens it in whatever you have set for `$EDITOR`, or `vi` if not set.

    notes list 

Lists the notes you've made

    notes show note-name 

Shows the content of `note-name` in the terminal using `more`.

    notes rm note-name

Deletes `note-name`

    notes edit note-name

Edit `note-name`

    notes version

Displays the current version

    notes git

Runs git commands on the notes repository

