# Caffe-taobao_Image-Identification
10 category Identification of taobao commodity

本项目应用caffe实现训练和测试自己的数据集,并用训练好的模型进行分类。我们借用网上某童鞋爬取的图片，来自于淘宝10个商品类1000张图片，每个类100张，对这10个商品进行分类，并进行测试
详见我哦csdn博客
http://blog.csdn.net/gaohuazhao/article/details/69568267

将myfile4复制到caffe/examples/目录下
1.训练
在caffe根目录下执行: build/tools/caffe train -solver examples/myfile4/myfile4_solver.prototxt即可,我设置的是2000次保存模型

2.测试,即用训练好的模型来进行分类
1)c++方法
为了方便,我写了demo.sh脚本里,直接在caffe根目录下执行:sh examples/myfile4/demo.sh即可,但是要注意是在caffe根目录下执行,要不会出错
2)python方法
py-classify.py脚本

执行之前需要先将mean.binaryproto转化为mean.npy
执行binaryproto-To-npy.py完成转化

然后执行py-classify.py脚本
