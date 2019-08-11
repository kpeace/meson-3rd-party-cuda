project('hello-cuda', 'cpp', 'cuda')

cuda_comp = meson.get_compiler('cuda')
cuda = import('unstable-cuda')
nvcc_flags = cuda.nvcc_arch_flags(cuda_comp, 'Auto')
executable('hello-cuda', 'hello.cu', cuda_args : nvcc_flags)
