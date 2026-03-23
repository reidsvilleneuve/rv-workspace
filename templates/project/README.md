RVDEVREPLACE_NAME
RVDEVREPLACE_PREFIX
RVDEVREPLACE_PROJECTDIR
RVDEVREPLACE_PROJECTMANAGER
rvdevreplace_name
rvdevreplace_prefix

find -name '*rvdevreplace_prefix*' | sed 's/\(.*\)\(rvdevreplace_prefix\)\(.*\)/\1\2\3 \1fm\3/' | xargs -I% echo %
