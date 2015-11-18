#!/usr/bin/env sh
 
VERSION=0.0.3
DATE=`date "+%Y-%m-%d"`
NOTESFOLDER=~/notes
export GIT_DIR=~/notes/.git
export GIT_WORK_TREE=~/notes

cmd_version() {
  cat <<EOF
$VERSION
EOF
}

cmd_usage() {
  cat <<EOF
  $PROGRAM help
    Show this text
  $PROGRAM new note-name
    Open a new note in a text editor 
  $PROGRAM list
    List available notes
  $PROGRAM show note-name
    Show a note
  $PROGRAM rm note-name
    Delete a note
  $PROGRAM edit note-name
    Edit a note
  $PROGRAM git
    Run git commands
  $PROGRAM version
    Show version information.
EOF
}

cmd_list() {
  tree -C $NOTESFOLDER
}

cmd_new() {
  FILENAME=`echo $@ | tr ' ' '-' | tr '[A-Z]' '[a-z]' | tr -d '[{}(),\!]' | tr -d "\'"`
  ${EDITOR:-vi} $NOTESFOLDER/$DATE-$FILENAME.md

  local action="Add"
  if [[ -f $NOTESFOLDER/$DATE-$FILENAME.md ]]; then
    action="Edit"
  fi
  git add $DATE-$FILENAME.md
  git commit -m "$action note for $FILENAME"
}

cmd_edit() {
  ${EDITOR:-vi} $NOTESFOLDER/$@
  git add $@
  local filename=`echo $@ | rev | cut -c 4- | rev`
  git commit -m "Edit note for $filename"
}

cmd_delete() {
  rm $NOTESFOLDER/$@
}

cmd_show() {
  more $NOTESFOLDER/$@
}

cmd_git() {
  git "$@"
}

PROGRAM="${0##*/}"
COMMAND="$1"

case "$1" in
  help|--help|-h) shift; cmd_usage;;
  new) shift; cmd_new "$@" ;;
  edit) shift; cmd_edit "$@" ;;
  list) shift; cmd_list "$@" ;;
  show) shift; cmd_show "$@" ;;
  rm) shift; cmd_delete "$@" ;;
  version|--version|-v) shift; cmd_version "$@" ;;
  git) shift; cmd_git "$@" ;;
  *) cmd_usage "$@" ;;
esac
exit 0
