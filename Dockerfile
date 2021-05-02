FROM rimuru07/ruserbot:alpine

#clonning repo 
RUN git clone https://github.com/rimuru07/ruserbot.git /root/ruserbot
#working directory 
WORKDIR /root/ruserbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/ruserbot/bin:$PATH"

CMD ["python3","-m","ruserbot"]
