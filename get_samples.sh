url="http://ciprianpungila.com/uvt/sc/2023/samples"
password="<archive_password>"

for ((i=1;i<=25;i++)); do
    wget  "$url$i.zip" && mkdir "sample$i" && mv "samples$i.zip" "sample$i/" && cd "sample$i/" && unzip -P $password "samples$i.zip" && cd .. && rm "sample$i/samples$i.zip"&
done
