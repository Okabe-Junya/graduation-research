FROM paperist/texlive-ja:latest


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    texlive-science \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr update --self && \
    tlmgr install \
    algorithms \
    algorithmicx \
    && rm -rf /tmp/texlive*
