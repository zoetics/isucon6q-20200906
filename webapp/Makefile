restart:
	$(MAKE) -C go
	sudo systemctl restart isuda.go isutar.go
	echo '' > /var/log/nginx/access.log > /var/log/nginx/error.log > /tmp/mysql-slow.sql
	sudo systemctl restart mysql nginx