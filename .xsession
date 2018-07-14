# $Id: ~/.xsession

mkdir -p ~/.log
exec sh ~/.xinitrc > ~/.log/xsession-errors 2>&1

# vim:fenc=utf-8:ft=sh:
