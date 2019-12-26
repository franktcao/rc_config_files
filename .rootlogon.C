{
  cout << "Loading custom include and shared library directories" << endl;
  //gSystem->AddIncludePath("-I/usr/local/include/eigen3");
  //gInterpreter->AddIncludePath("/usr/local/include/eigen3");
  gSystem->AddIncludePath("-I./include/");
  gInterpreter->AddIncludePath("./include/");
  
  gSystem->AddIncludePath("-I~/local/include/");
  gInterpreter->AddIncludePath("~/local/include/");
  
  gSystem->AddIncludePath("-I/usr/local/Cellar/gcc/8.3.0/include/c++/8.3.0");
  gInterpreter->AddIncludePath("/usr/local/Cellar/gcc/8.3.0/include/c++/8.3.0");
  
  
  //gSystem->AddIncludePath("-I/Users/franktcao/UConn/19_Argonne/analysis/mcp_analysis/FCKinFitter/target");
  //gInterpreter->AddIncludePath("/Users/franktcao/UConn/19_Argonne/analysis/mcp_analysis/FCKinFitter/target/include");
  //gSystem->AddIncludePath("-I/Users/franktcao/Desktop/eg6PID/CLAS_KinFitter/target/include");
  //gInterpreter->AddIncludePath("/Users/franktcao/Desktop/eg6PID/CLAS_KinFitter/target/include");
  //gSystem->Load("KinFitter_cxx.so");
}
