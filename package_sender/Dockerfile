FROM ubuntu:latest

RUN apt update
RUN apt install -y tcpdump curl

COPY script.sh .

CMD tcpdump -i ${INTERFACE} -w capture-%Y-%M-%d_%H.%M.%S.pcap -K -n -G 30 -z $(pwd)/script.sh -Z root
