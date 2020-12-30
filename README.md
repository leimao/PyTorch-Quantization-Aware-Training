# PyTorch Quantization Aware Training

## Introduction

PyTorch quantization aware training example for ResNet.

## Usages

### Build Docker Image

```
$ docker build -f docker/pytorch.Dockerfile --no-cache --tag=pytorch:1.7.0 .
```

### Run Docker Container

```
$ docker run -it --rm --gpus device=0 -v $(pwd):/mnt pytorch:1.7.0
```

### Run ResNet

```
$ python cifar.py
```

## References

* [PyTorch Quantization Aware Training](https://leimao.github.io/blog/PyTorch-Quantization-Aware-Training/)
* [PyTorch Static Quantization](https://leimao.github.io/blog/PyTorch-Static-Quantization/)
* [PyTorch CIFAR10 Tutorial](https://pytorch.org/tutorials/beginner/blitz/cifar10_tutorial.html)
* [PyTorch Transfer Learning Tutorial](https://pytorch.org/tutorials/beginner/transfer_learning_tutorial.html)
* [PyTorch Quantization](https://pytorch.org/docs/stable/quantization.html)
* [PyTorch Distributed Training](https://leimao.github.io/blog/PyTorch-Distributed-Training/)
