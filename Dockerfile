FROM dzhuang/docker-deluge:1.3.15

COPY ./plugins/* /usr/lib/python2.7/dist-packages/deluge/plugins/

RUN chmod +x /usr/lib/python2.7/dist-packages/deluge/plugins/FileBotTool-1.2.6-py2.7.egg \
    && chmod +x /usr/lib/python2.7/dist-packages/deluge/plugins/ltConfig-0.3.1-py2.7.egg \
    && chmod +x /usr/lib/python2.7/dist-packages/deluge/plugins/PurgeOnAdd-0.1-py2.7.egg \
    && chmod +x /usr/lib/python2.7/dist-packages/deluge/plugins/YaRSS2-1.4.4-py2.7.egg

COPY ./deluge/core/torrentmanager.py /usr/lib/python2.7/dist-packages/deluge/core/torrentmanager.py
COPY ./deluge/ui/gtkui/glade/add_torrent_dialog.glade /usr/lib/python2.7/dist-packages/deluge/ui/gtkui/glade/add_torrent_dialog.glade
COPY ./deluge/ui/web/js/deluge-all.js /usr/lib/python2.7/dist-packages/deluge/ui/web/js/deluge-all.js
