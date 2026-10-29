RVDEVREPLACE_Name
RVDEVREPLACE_projectdir
RVDEVREPLACE_ProjectManager
RVDEVREPLACE_prefix

```
find . -name '*RVDEVREPLACE_prefix*' | while read -r file; do mv "$file" "${file/RVDEVREPLACE_prefix/fm}"; done
```

```
grep -rlF RVDEVREPLACE_Name . | xargs -I# ex +'%s/RVDEVREPLACE_Name/Feral Melon/g' +'wq' #
grep -rlF RVDEVREPLACE_projectdir . | xargs -I# ex +'%s/RVDEVREPLACE_projectdir/Feral Melon/g' +'wq' #
grep -rlF RVDEVREPLACE_ProjectManager . | xargs -I# ex +'%s/RVDEVREPLACE_ProjectManager/Feral Melon/g' +'wq' #
grep -rlF RVDEVREPLACE_prefix . | xargs -I# ex +'%s/RVDEVREPLACE_prefix/Feral Melon/g' +'wq' #
```

If auto-backup is needed:

In `crontab -e`:

```
0 10,15 * * 1-5 <Project dir>/scripts/prefix-create-scheduled-project-commit
```
