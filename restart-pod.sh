#!/bin/bash
echo "删除重启pod"
kubectl get po -n default | grep jobcher | awk '{print $1}' > restart_jobcher.sh
# 每行头部插入
sed -i 's/^/kubectl delete po &/g' restart_jobcher.sh
# 每行尾部插入
sed -i 's/$/& -n default/g' restart_jobcher.sh
chmod +x restart_jobcher.sh
./restart_jobcher.sh
rm -rf restart_jobcher.sh
kubectl get po -n default
echo "完成重启"