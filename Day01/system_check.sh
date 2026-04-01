#!/bin/bash
echo "--- LAPORAN KONDISI SERVER ---" > laporan_server.txt
date >> laporan_server.txt
echo "Top 5 Memory Usage:" >> laporan_server.txt
ps aux --sort=-%mem | head -n 6 >> laporan_server.txt
echo "Disk Usage:" >> laporan_server.txt
df -h / >> laporan_server.txt
echo "Laporan berhasil dibuat di laporan_server.txt"