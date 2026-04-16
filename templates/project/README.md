RVDEVREPLACE_Name
RVDEVREPLACE_projectdir
RVDEVREPLACE_ProjectManager
RVDEVREPLACE_prefix

```
find . -name '*RVDEVREPLACE_prefix*' | while read -r file; do mv "$file" "${file/RVDEVREPLACE_prefix/fm}"; done
```

```
grep -rlF RVDEVREPLACE_Name . | xargs -I# ex +'%s/RVDEVREPLACE_Name/Feral Melon/g' +'wq' #
```
