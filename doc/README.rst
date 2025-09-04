################
JMA's debian ppa
################

Based on https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html

$ KEY="https://jan-matejka.github.io/debian-ppa-bookworm/KEY.gpg"
$ KEY_DST=/etc/apt/trusted.gpg.d/jmatejka_debian-ppa-bookworm.gpg
$ KEY_FP="845B80B9AD12DB400CE534F6837EED10F97A36A1"
$ PPA="https://jan-matejka.github.io/debian-ppa-bookworm/my_list_file.list"
$ PPA_DST=/etc/apt/sources.list.d/jmatejka_debian-ppa-bookworm.list

$ curl -s --compressed $KEY | gpg --dearmor -o $KEY_DST
$ [ $(gpg --show-keys $KEY_DST | head -n2 | tail -n1 | sed 's/ //g') = "$KEY_FP" ] || { echo "KEY_FP does not match" >&2; exit 1 }
$ curl -s --compressed -o $PPA_DST $PPA
