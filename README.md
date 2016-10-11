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

Show help text

    notes help

Create a new note and opens it in whatever you have set for `$EDITOR`, or `vi` if not set.

    notes new note-name

List the notes you've made

    notes list 

Show the content of `note-name` in the terminal using `more`.

    notes show note-name 

Delete `note-name`

    notes rm note-name

Edit `note-name`

    notes edit note-name

Display the current version

    notes version

Run git commands on the notes repository

    notes git


