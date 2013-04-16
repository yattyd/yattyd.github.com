---
layout: default
date: 2006-08-17
title: 详细介绍 Linux 2.6 设备的驱动模型
---

# {{ page.title }}
详细介绍 Linux 2.6 设备的驱动模型
　
1.背景
随着设备拓扑结构越来越复杂，需要为内核建立一个统一的设备模型，对系统结构做一般性的抽象描述。
有了该抽象结构，可支持多种不同的任务：
a) 电源管理 完成电源管理工作需要对系统结构的理解，且有严格的顺序，如：一个USB宿主适配器，在处理完所有与其相连接的设备面前是不能关闭的；
b) 与用户空间通信 由/sysfs虚拟文件系统展示设备的属性
c) 热插拔设备
d) 对象生命周期
2.sysfs 虚拟文件系统
sysfs 是一个特殊的文件系统，类似于/proc。sysfs不仅象/proc一样允许用户空间访问内核的数据，而且它以更结构化的方式向用户提供内核数据信息。
sysfs的一个目的就是展示设备驱动模型中各组件的层次关系。其顶级目录包括：


a) block
b) device
c) bus
d) drivers
e) class
f) power
g) firmware
每个目录代表一个kobject对象，每个文件代表kobject的属性。
3. Kobject、Kset 和 subsystem
3.1 Kobject
Kobject 是组成设备模型的基本结构。类似于C++中的基类，它嵌入于更大的对象的对象中--所谓的容器--用来描述设备模型的组件。如bus, devices, drivers 都是典型的容器。
容器有了kobject之后，允许内核：
a) 保存对容器的引用计数
b) 保存容器之间的层次关系
c) 为每个容器的属性提供一个用户视图


	struct kobject{
		char             * k_name;
		char               name[20];
		struct k_ref       kref;
		struct list_head   entry;
		struct kobject   * parent;
		struct kset      * kset;
		struct ktype     * ktype;
		struct dentry    * dentry;
	};
	struct kobj_type{
		void (*release) (struct kobject *);
		struct sysfs_ops *sysfs_ops;
		struct attribute **default_attrs;
	};
3.2 Kset
一个kset是嵌入相同类型结构的kobject集合。


	struct kset{
	struct subsystem * subsys;
	struct kobj_type   ktype;
	struct list_head   list;
	struct kobject     kobj;
	struct kset_hotplug_ops * hotplug_ops;
	};
3.3 Subsystem
一系列的kset就组成了subsystem. subsystem可以包括不同类型的kset， 它只有两个成员


	struct subsystem{
	struct kset kset;
	struct rw_semaphore rwsem;
	};
4.设备驱动模型的组件
4.1 device
4.2 drive
4.3 bus
4.4 class
