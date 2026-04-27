FROM sugarshin/puppeteer-base:2.1.1@sha256:34b2c8ef4a233f0cf6f61559dbfba41f90ccfae90a758555cca7e17d457f3776

LABEL maintainer "Shingo Sato <shinsugar@gmail.com>"

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV NPM_CONFIG_PREFIX=/home/pptruser/.npm-global
ENV PATH=$PATH:/home/pptruser/.npm-global/bin
ENV VERSION "2.1.0"
RUN npm install -g capture-website-cli@${VERSION}

RUN groupadd -r pptruser && useradd -r -g pptruser -G audio,video pptruser \
  && mkdir -p /home/pptruser/Downloads \
  && chown -R pptruser:pptruser /home/pptruser

USER pptruser

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable

ENTRYPOINT ["dumb-init", "--", "capture-website"]
