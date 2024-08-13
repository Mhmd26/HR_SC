FROM Mhmd26/ScoR:slim-buster

#clonning repo 
RUN git clone https://github.com/Mhmd26/ScoR.git /root/JoKeRUB
#working directory 
WORKDIR /root/JoKeRUB

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/JoKeRUB/bin:$PATH"

CMD ["python3","-m","JoKeRUB"]
