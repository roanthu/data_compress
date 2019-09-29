//
// Created by thurv on 29/09/2019.
//
#include <iostream>

#include <lz4frame.h>
#include <cstring>
#include "zlib.h"

int main() {
    std::cout << "Hello, World!" << std::endl;
    std::string input = "anh t dassavdassavdassavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdassavdassavjsdnlfkl";
    size_t size_input = input.size();
    std::cout<<"input size "<<size_input<<std::endl;
    //get max size
    z_stream zs;
    zs.zalloc = Z_NULL;
    zs.zfree = Z_NULL;
    zs.opaque = Z_NULL;
    zs.avail_in = 0;
    zs.next_in = Z_NULL;
    size_t max_size = deflateBound(&zs, size_input);
    deflateEnd(&zs);
    std::cout<<"max size "<<max_size<<std::endl;
    //compress
    char* compress = new char[max_size];
    z_stream zs1;
    zs1.zalloc = Z_NULL;
    zs1.zfree = Z_NULL;
    zs1.opaque = Z_NULL;
    zs1.avail_in = 0;
    zs1.next_in = Z_NULL;
    if (deflateInit(&zs1, Z_DEFAULT_COMPRESSION) != Z_OK) {
        throw std::runtime_error("deflate compression init failure");
    }
    zs1.next_in = reinterpret_cast<unsigned char*>(const_cast<char*>(input.data()));
    zs1.avail_in = size_input;
    zs1.next_out = reinterpret_cast<unsigned char*>(compress);
    zs1.avail_out = max_size;
    auto res = ::deflate(&zs1, Z_FINISH);
    deflateEnd(&zs1);
    size_t compress_size = (max_size - zs1.avail_out);
    std::cout<<"compress size "<<compress_size<<std::endl;
    //decompress
    char* uncompress = new char[input.size()];
    z_stream zs3;
    zs3.zalloc = Z_NULL;
    zs3.zfree = Z_NULL;
    zs3.opaque = Z_NULL;
    zs3.avail_in = 0;
    zs3.next_in = Z_NULL;
    if (inflateInit(&zs3) != Z_OK) {
        throw std::runtime_error("deflate uncompression init failure");
    }
    zs3.next_in = reinterpret_cast<unsigned char*>(const_cast<char*>(compress));
    zs3.avail_in = compress_size;
    zs3.next_out = reinterpret_cast<unsigned char*>(uncompress);
    zs3.avail_out = input.size();
    auto res2 = inflate(&zs3, Z_FINISH);
    inflateEnd(&zs3);
    size_t uncompressize = input.size() - zs3.avail_out;
    std::cout<<"uncompressize "<<uncompressize<<std::endl;
    std::cout<<uncompress<<std::endl;
    return 0;
}

