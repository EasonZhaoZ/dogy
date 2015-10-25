echo "stoping ..."
pid=`ps -ef|grep ipython|grep -v grep|awk '{print $2}'`
echo "find pid:${pid}, killing..."
sudo kill -9 ${pid}
sleep 1
echo "starting ...."
#nohup ipython notebook --profile=nbserver --ipython-dir='/Users/gongqingyi/ipython' > /Users/gongqingyi/ipython/ipython.log 2>&1 &
nohup ipython notebook > ~/ipython/ipython.log 2>&1 &
sleep 1
pid=`ps -ef|grep ipython|grep -v grep|awk '{print $2}'`
echo "ipython is running! pid:${pid}"
rm -rf extensions nbextensions
