 #include<cstdio>
 #include<cstdlib>
 #include<ctime>
 typedef double db;
 using namespace std;
 
 int main()
 {
    system("g++ mycode.cpp -o mycode");
    system("g++ testcode.cpp -o testcode");
    system("g++ generator.cpp -o generator");
    for(int t=0; t < 100; ++t)
    {
        system("./generator > data.txt");
        db Beg = clock();
        system("./mycode <data.txt>out1.txt");
        db End = clock();
        system("./testcode <data.txt>out2.txt");
        if(system("diff out1.txt out2.txt"))
        {
            printf("#%d WA\n", t); 
            return 0;
        }
        else printf("#%d AC %.2lfms\n", t, End - Beg);
    }
    return 0;
 }
