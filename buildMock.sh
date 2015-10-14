sudo cp *.cfg /etc/mock/
sudo rm -rf /var/lib/mock/centos-6-x86_64
spectool -g -R -C ./ couchdb.spec
sudo mock -r centos-6-x86_64 --buildsrpm --sources ./ --spec ./couchdb.spec
cp /var/lib/mock/centos-6-x86_64/result/couchdb-*.src.rpm ./
sudo mock -r centos-6-x86_64 --install autoconf-archive-*.noarch.rpm
sudo mock -r centos-6-x86_64 --no-clean rebuild couchdb-*.src.rpm
cp /var/lib/mock/centos-6-x86_64/result/*.rpm ./