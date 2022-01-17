# customkernel

**我发现还是有朋友将这个 overlay 加入到自己的系统中，而且出现一些奇奇怪怪的问题，不建议各位使用这个 Overlay，我一般会利用这个 Overlay 做一些试验。请大家斟酌**

**非常建议各位使用 Gentoo Linux 的朋友添加 [Gentoo-zh overlay](https://github.com/microcai/gentoo-zh) 源，这样能够得到更好更稳定的更新，谢谢你们的支持**

**Xanmod-hybrid 都可以兼容 OpenZFS 文件系统，但是 RT 内核是不支持的，望周知**

**目前最新的一次第三方内核横评可以参考 [Phoronix](https://www.phoronix.com/scan.php?page=article&item=ryzen5-xanmod-liquorix&num=1)**

### Xanmod-Hybrid 内核

[Xanmod-Hybrid](https://xanmod.org/) 是 Linux 第三方定制内核中久负盛名的。大家可以通过 USE 来启用自己喜欢的 CPU 调度器，我将原始版本 xanmod，xanmod-tt 并加上 cjktty 和 uksm，为了区别 xanmod 原始贡献者的版本，取了这个名字。原始 Xanmod 内核通过对默认的 CPU 调度器做足优化的情况下，能够在 [Phoronix Benchmark](https://www.phoronix.com/scan.php?page=article&item=xanmod-2020-kernel&num=3) 中击败众多对手，比方说 [Liquorix](https://liquorix.net/)。并且 Xanmod 的在其官方主页支持基于 Debian 的所有发行版，当然，还有 [Archlinux](https://aur.archlinux.org/packages/linux-xanmod/) 和 [Gentoo](https://gitlab.com/src_prepare/src_prepare-overlay/-/tree/master/sys-kernel/xanmod-sources) 。那么既然已经有 Gentoo 的 overlay 了，我为什么还要做一个 overlay 呢？

1. [src_prepare overlay](https://gitlab.com/src_prepare/src_prepare-overlay) 只提供稳定版本的 Xanmod 内核。而我们作为[Gentoo-zh](https://github.com/microcai/gentoo-zh) 要做出差异化，做出自己的调性；
2. config 配置文件在内核源码安装后就有了，大家注意源码文件夹中有一个名字叫做 CONFIG 的，从中把大家需要的配置文件拷贝到内核源码目录下，取名 .config 就可以开始编译了；
3. ~~UKSM 补丁，来源是 [Piotr Górski](https://gitlab.com/sirlucjan/kernel-patches/-/tree/master) 提供的各式各样第三方补丁，并且根据主线会实时更新；~~
4. cjktty 补丁，来源是 [zhmars](https://github.com/zhmars/cjktty-patches) 提供的第三方补丁，支持关注并保持更新。

## 写在最后

Xanmod 内核补丁是目前全网性能最好的，突出表现在响应速度。希望大家喜欢。

[Xanmod vs Xanmod-TT](https://www.youtube.com/watch?v=mNKXumLlxII&t) ，但是大家注意，这里 Xanmod-tt 中使用的是实验性功能的 RDB CPU 调度器，所以性能表现不佳是完全可以理解的。

[BMQ VS PDS VS MuQSS](https://www.youtube.com/watch?v=-qFXu_5T9Dg&t) 。

以上就是该 overlay 现在和将来的目标，维护这三个 ebuild，持续更新，为了更好的性能，为了我们共同的挚爱—Linux Kernel。

希望大家多多提意见，多多提 issue，多多点赞。
