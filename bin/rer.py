#!/usr/bin/env python
# -*- coding: utf-8 -*-


import sys
import requests
import json

if __name__=='__main__':
    if "status" in sys.argv:
        text = requests.get("http://api-ratp.pierre-grimaud.fr/v2/traffic/rers/A").text

        response = json.loads(text)

        #TODO
        print response['response']['title']
        print response['response']['message']
    else:
        text = requests.get("http://api-ratp.pierre-grimaud.fr/v2/rers/A/stations/28?destination=1").text
        response = json.loads(text)
        for mes in response["response"]["schedules"]:
            print u"{0:s} : {1:s}  ({2:s})".format(mes["message"],
                                          mes["destination"],
                                          mes["id"])

