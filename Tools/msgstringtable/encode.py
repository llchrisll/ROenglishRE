import csv
import base64

with open('msgstringtable.csv', 'w', newline='') as outfile, open('msgstringtable_decoded.txt', newline='') as decoded:
    rdr = csv.reader(decoded, delimiter=',')
    for row in rdr:
        idx = base64.b64encode(row[0].encode('utf-8')).decode('utf-8')
        msg = base64.b64encode(row[1].encode('utf-8')).decode('utf-8')
        print(f"{idx},{msg}")
        outfile.write(f"{idx},{msg}\n")