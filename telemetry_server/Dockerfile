FROM ubuntu:latest AS build

WORKDIR /home/ubuntu
RUN ls -a
RUN apt update
RUN apt install golang -y
RUN apt install git -y
RUN git config --global http.https://pkg.re.followRedirects true
RUN git clone --no-checkout --single-branch --no-tags --filter=blob:none https://github.com/pyrevitlabs/pyRevit.git
WORKDIR /home/ubuntu/pyRevit
RUN git sparse-checkout init
RUN git sparse-checkout set dev/pyRevitTelemetryServer
RUN git checkout
WORKDIR /home/ubuntu/pyRevit/dev/pyRevitTelemetryServer
RUN go build -o pyRevit-TelemetryServer main.go

FROM ubuntu:latest
COPY --from=build /home/ubuntu/pyRevit/dev/pyRevitTelemetryServer/pyRevit-TelemetryServer /bin/pyRevit-TelemetryServer
CMD /bin/pyRevit-TelemetryServer postgres://postgres:$(cat /run/secrets/db_password)@db:5432/pyrevit_telemetry?sslmode=disable --scripts=scripts --events=events --port=8080
