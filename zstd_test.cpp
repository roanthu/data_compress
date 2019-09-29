//
// Created by thurv on 29/09/2019.
//
#include <iostream>
#include "zstd.h"
int main(){
    std::cout<<"Hello, World"<<std::endl;
    std::string input = "anh t dassavdassavdassavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdassavdassavjsdnlfkl";
    size_t size_input = input.size();
    std::cout<<"input size "<<size_input<<std::endl;
    size_t max_size = ZSTD_compressBound(size_input);
    char* compress_input = new char[max_size];
    size_t compress_size = ZSTD_compress(compress_input, max_size, input.data(), input.size(), 1);
    std::cout<<"comopress size "<<compress_size<<std::endl;

    size_t decompressSize_est = ZSTD_getFrameContentSize(compress_input, compress_size);
    std::cout<<"uncomopress size "<<decompressSize_est<<std::endl;
    char* uncompress = new char[decompressSize_est];
    decompressSize_est = ZSTD_decompress(uncompress, decompressSize_est, compress_input, compress_size);
    std::cout<<uncompress<<std::endl;

    std::cout<<"Compress context "<<std::endl;
    //create compress context
    ZSTD_CCtx* CCtx = ZSTD_createCCtx();

    //compress
    char* CC_compress_input = new char[max_size];
    size_t CC_compress_size = ZSTD_compressCCtx(CCtx,CC_compress_input, max_size, input.data(), input.size(), 1);
    std::cout<<"Compress size context "<<CC_compress_size<<std::endl;
    //create decompress context
    ZSTD_DCtx* DCtx = ZSTD_createDCtx();
    //decomperss
    decompressSize_est = ZSTD_getFrameContentSize(CC_compress_input, CC_compress_size);
    char* DC_uncompress = new char[decompressSize_est];
    size_t DC_compress_size = ZSTD_decompressDCtx(DCtx,DC_uncompress, decompressSize_est, CC_compress_input, CC_compress_size);
    std::cout<<DC_uncompress<<std::endl;


    return 0;
}
