# syntax=docker/dockerfile:1
FROM busybox:latest
COPY --chmod=755 <<EOF /app/run.sh
#!/bin/sh
while true; do
  TZ='Europe/London' echo  "jeteve says: It is $(date +%T) in London."
  sleep 1
done
EOF

ENTRYPOINT /app/run.sh
