all: isuda isutar

deps:
	go get github.com/go-sql-driver/mysql
	go get github.com/gorilla/mux
	go get github.com/gorilla/sessions
	go get github.com/Songmu/strrand
	go get github.com/unrolled/render
	go get github.com/google/pprof
	go get net/http/pprof
	go get runtime/pprof

isuda: deps
	go build -o isuda isuda.go type.go util.go

isutar: deps
	go build -o isutar isutar.go type.go util.go

.PHONY: all deps

pprof:
	go tool pprof -http=0.0.0.0:1080 /home/isucon/webapp/go/  http://localhost:6060/debug/pprof/profile
.PHONY: pprof

kataribe:
	sudo cat /var/log/nginx/access.log | /tmp/kataribe -f /tmp/kataribe.toml
.PHONY: profile

slowquery:
	sudo mysqldumpslow -s t /tmp/mysql-slow.sql
.PHONY: slowquery