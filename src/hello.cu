#include <iostream>
#include <cuda_runtime.h>
#include <fmt/format.h>


__global__ 
void hello(int *b) 
{
    *b = 43;
}


int main(){


    int *pd;
    cudaMalloc(&pd, sizeof(int));
    //pd = (int*)malloc(sizeof(int));
    hello<<<1, 1>>>(pd);
    cudaDeviceSynchronize();

    int res = 0;
    cudaMemcpy(&res, pd, sizeof(int), cudaMemcpyDeviceToHost );
    cudaFree(pd);
    //res = *pd;

    std::cout << fmt::format("hello {} world: ", "formated") << res << std::endl;
    return 0;
}
