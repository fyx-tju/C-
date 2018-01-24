#include <iostream>
#include <assert.h>
#include <random>

namespace fyx{

std::random_device rand_dev;
std::mt19937_64 rng(rand_dev());
std::uniform_real_distribution<> proba(0,1);
    
template <unsigned int N>
struct MAXVALUE
{
  enum : uint64_t{value = 2 * MAXVALUE<N-1>::value };
};

template <>
struct MAXVALUE<0>
{
  enum { value = 1 };
};

template <typename T>
inline T uniform(T min, T max)
{
  #ifndef NDEBUG
  if(min >= max) {
    throw std::invalid_argument("Error");
  }
  #endif
  
  return min + proba(rng) * (max - min);
}

template <int N>
class Randomize
{
    static_assert(N > 0 && N <= 64, "template parameter N cannot be outside interval [1,64]");
public:
    static constexpr uint64_t MAXVAL = MAXVALUE<N>::value - 1;
    static uint64_t generate() {
      static std::uniform_int_distribution<uint64_t> udistrib(0,MAXVAL);
      return udistrib(rng); 
    }
};
  
}