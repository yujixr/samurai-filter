rm -f list.txt
touch list.txt
for url in $(cat target.txt); do
    echo -e "duckduckgo.com##div:-abp-has(> div > h2 > a[href^=\"$url\"])
www.google.*##div:-abp-has(> div > div > a[href^=\"$url\"])
www.google.*##div:-abp-has( > g-inner-card a[href^=\"$url\"])
www.bing.com##li:-abp-has(> h2 > a[href^=\"$url\"])" >>list.txt
done
