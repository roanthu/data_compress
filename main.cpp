#include <iostream>

#include <lz4frame.h>
#include <cstring>
#include <lz4.h>

int main() {
    std::cout << "Hello, World!" << std::endl;
    std::string input = "anh t dassavdassavdassavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdavdassavdassavdassavjsdnlfkl";
    size_t size_input = input.size();
    LZ4F_preferences_t fastCompressPrefs;
    memset(&fastCompressPrefs, 0, sizeof(fastCompressPrefs));
    fastCompressPrefs.compressionLevel = 0;
    char* compressedBuffer = new char[LZ4F_compressFrameBound(size_input, NULL)];
    size_t size_output =  LZ4F_compressFrame(compressedBuffer, LZ4F_compressFrameBound(size_input, NULL), input.data(), size_input, &fastCompressPrefs);
    std::cout<< compressedBuffer<< std::endl;
    std::cout<< size_input<< std::endl;
    std::cout<< size_output<< std::endl;

    //decompress
//    LZ4F_decompressionContext_t dCtx = NULL;
//    LZ4F_createDecompressionContext(&dCtx, LZ4F_VERSION);
//    size_t iSize = LZ4F_headerSize(compressedBuffer, size_output);
//    size_t ss = LZ4F_getFrameInfo(dCtx, &fastCompressPrefs.frameInfo, compressedBuffer, &iSize);
//    std::cout<<ss<<std::endl;
    //LZ4F_decompress(dCtx, decodedBuffer, &decodedBufferSize, compressedBuffer, &compressedBufferSize, NULL)

    return 0;
}