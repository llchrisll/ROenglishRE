import csv
import base64

with open('msg_emotion.csv', 'w', newline='') as outfile, open('msg_emotion_decoded.txt', newline='') as decoded:
    rdr = csv.reader(decoded, delimiter=',')
    for row in rdr:
        idx = base64.b64encode(row[0].encode('utf-8')).decode('utf-8')
        msg = base64.b64encode(row[1].encode('utf-8')).decode('utf-8')
        desc = base64.b64encode(row[2].encode('utf-8')).decode('utf-8')
        print(f"{idx},{msg},{desc}")
        outfile.write(f"{idx},{msg},{desc}\n")