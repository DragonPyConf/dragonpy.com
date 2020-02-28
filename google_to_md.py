import csv
import urllib.request
import io
import requests

CSV_URL = 'https://docs.google.com/spreadsheets/d/e/2PACX-1vSrMWn1Ayn1KbXZ-Xkw5AMZzzsuYK33psefErVZt9NsVHjp-1l_DqaOJ_NcSOAsFNEFj2NVehxB-uVE/pub?gid=1520786013&single=true&output=csv'


def get_talks():
    csv_file = urllib.request.urlopen(CSV_URL)
    text = csv_file.read().decode('utf-8')
    data = csv.DictReader(io.StringIO(text), dialect=csv.excel, delimiter=",")
    return data


def get_file_content(talk):
    description = """---
layout: talk
title: "{title}"
speaker: {name}
image: {avatar}
twitter: {twitter}
github: https://github.com/stephsamson
url: {url}
---

## Abstract
{abstract}

## Description
{description}

## Bio
{bio}

""".format(**talk)
    return description


def get_talk_filename(talk):
    return talk['title'].lower().replace(' ', '_').replace(',', '').replace('`', '').replace('?', '').replace(':', '') + '.md'


def update_md_talk(talk):
    filename = get_talk_filename(talk)
    with open('./_talks/{}'.format(get_talk_filename(talk)), 'w') as f:
        f.write(get_file_content(talk))
    print('Successfully updated {}'.format(filename))


def update_all_talks():
    talks = get_talks()
    errors = []
    for talk in talks:
        try:
            if talk['state'] == 'accepted' and talk['confirmed'] == 'TRUE':
                update_md_talk(talk)
        except Exception as e:
            print('Exception: %s' % e)
            errors.append(talk['ID'])

    print("DONE!")
    if errors:
        print("Errors with: %s" % errors)


if __name__ == '__main__':
    update_all_talks()
