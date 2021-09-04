[Unit]
Description=Job that runs your user script

[Service]
ExecStart=/some/command
Type=oneshot
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target


sudo systemctl daemon-reload
sudo systemctl enable foo.service
