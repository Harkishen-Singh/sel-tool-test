FROM ubuntu:18.04

# installing chrome stable

RUN apt-get update
RUN apt-get -qq install wget gnupg2
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list
RUN apt-get update
RUN apt-get -qq install google-chrome-stable

# installing firefox stable

RUN apt-get -qq install software-properties-common
RUN add-apt-repository ppa:mozillateam/firefox-next
RUN apt-get update
RUN apt-get -qq install firefox nodejs npm
RUN node --version && npm --version

RUN apt-get -qq install xvfb xserver-xephyr

# api keys

RUN export yandex_translation_key="trnsl.1.1.20190201T091415Z.1803a5df1896d502.a4a1f2086e5e5cf2141b8017ec90fb0eb9a5ffce"
RUN export yandex_dictionary_key="dict.1.1.20190204T161745Z.bb0aa94e776353fa.42c0e735b951fd43e7c9c5038f702dcad26fdb70"
