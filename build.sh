rm -f list.txt
touch list.txt
echo -e "! Title: samurai-filter
! Homepage: https://github.com/yujixr/samurai-filter.git
!
! Licence: 
! This file is only permitted for personal use under copyright law.
! Commercial use or  redistribution are prohibited except as permitted by copyright law.
!
! Last updated: $(date "+%Y-%m-%d")\n"
for url in $(cat target.txt); do
    echo -e "duckduckgo.com##div:-abp-has(> div > h2 > a[href^=\"$url\"])
www.google.*##div:-abp-has(> div > div > a[href^=\"$url\"])
www.google.*##div:-abp-has( > g-inner-card a[href^=\"$url\"])
www.bing.com##li:-abp-has(> h2 > a[href^=\"$url\"])" >>list.txt
done
