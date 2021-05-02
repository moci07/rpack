FROM rimuru07/Ruserbot:alpine

#clonning repo 
RUN git clone https://github.com/rimuru07/Ruserbot.git /root/Ruserbot
#working directory 
WORKDIR /root/Ruserbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Ruserbot/bin:$PATH"

CMD ["python3","-m","Ruserbot"]
