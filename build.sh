rm -f list.txt
touch list.txt
echo -e "[Adblock Plus 2.0]
! Title: samurai-filter
! Updated: $(date "+%Y-%m-%d")
! Expires: 5 days
! Licence: https://creativecommons.org/licenses/by/3.0/
! Homepage: https://github.com/yujixr/samurai-filter.git\n" >> list.txt
for url in $(cat target.txt); do
    echo -e "duckduckgo.com##div:-abp-has(> div > h2 > a[href^=\"$url\"])
www.google.*##div:-abp-has(> div > div > a[href^=\"$url\"])
www.google.*##div:-abp-has( > g-inner-card a[href^=\"$url\"])
www.bing.com##li:-abp-has(> h2 > a[href^=\"$url\"])" >> list.txt
done
