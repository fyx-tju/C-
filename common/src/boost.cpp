#include <mutex>
#include <boost/thread.hpp>
#include <boost/archive/binary_iarchive.hpp>
#include <boost/archive/binary_oarchive.hpp>
#include <boost/unordered_map.hpp>
#include <boost/unordered_set.hpp>
#include <iostream>
#include <fstream>
#include <sstream>

using namespace boost;
using namespace std;

namespace fyx{
std::mutex mData;
boost::thread* thread1;
boost::thread* thread2;
class Boost{
public :
  void thread_run(){
    std::cout << "1" << std::endl; 
  }
  void run(){
     thread1 = new boost::thread(bind(&Boost::thread_run,this));
     thread2 = new boost::thread(bind(&Boost::thread_run,this));
  }
  void ordered_map(){
    boost::unordered_map<int,double> umap;
    boost::unordered_set<int> uset;
    umap[3] = 2.1;
    uset.insert(1);
  }
  void fileOP(std::string filename){
    std::ofstream out(filename);
    std::stringstream ss;
    boost::archive::binary_oarchive oa(ss);
    std::string word_b = "words";
    oa << word_b;
    out << ss.str();
    out.close();
    std::ifstream in(filename);
    boost::archive::binary_iarchive ia(in);
    std::string words;
    ia >> words;
    in.close();
    std::cout << words << std::endl;
  }
  void loadFile(string filename){
    ifstream infile;
    infile.open(filename.c_str());
    string line;
    if(infile)
    {
      while(getline(infile,line))
      {
	string numberline = line.substr(10);
	stringstream ss;
	ss.str(numberline);
	vector<string> result;
	while(ss)
	{
	  string c;
	  ss >> c;
	  result.push_back(c);;
	}
      }
    }
    infile.close();
  }
};
  
}