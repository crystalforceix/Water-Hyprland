#!/bin/bash
cd /tmp/ && git clone https://github.com/crystalforceix/OneUI4-Icons && cd OneUI4-Icons/ && mv OneUI-dark ~/.icons && mv OneUI-light ~/.icons && echo "Done! OneUI themes has installed!" && cd /tmp/ && rm -rf OneUI4-Icons/
