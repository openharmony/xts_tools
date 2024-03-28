hdc file recv /system/etc/security/trusted_root_ca.json
python add_trust_root.py
hdc shell mount -o rw,remount /
hdc file send trusted_root_ca.json /system/etc/security/trusted_root_ca.json
pause
