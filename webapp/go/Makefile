all: isuda isutar

deps:
	/snap/bin/go get github.com/go-sql-driver/mysql
	/snap/bin/go get github.com/gorilla/mux
	/snap/bin/go get github.com/gorilla/sessions
	/snap/bin/go get github.com/Songmu/strrand
	/snap/bin/go get github.com/unrolled/render
	/snap/bin/go get github.com/google/pprof
	/snap/bin/go get net/http/pprof
	/snap/bin/go get runtime/pprof

isuda: deps
	/snap/bin/go build -o isuda isuda.go type.go util.go

isutar: deps
	/snap/bin/go build -o isutar isutar.go type.go util.go

.PHONY: all deps

pprof:
	/snap/bin/go tool pprof -http=0.0.0.0:1080 /home/isucon/webapp/go/  http://localhost:6060/debug/pprof/profile
.PHONY: pprof

kataribe:
	sudo cat /var/log/nginx/access.log | /tmp/kataribe -f /tmp/kataribe.toml
.PHONY: profile

slowquery:
	sudo mysqldumpslow -s t /tmp/mysql-slow.sql
.PHONY: slowquery
