#include <iostream>
#include <conio.h>

using namespace std;

int main()
{
    int data_lulus[3][4];
    int tahun,jurusan;
    //clrscr();

    data_lulus[0][0] =35; // TI -1992
    data_lulus[0][1] =45; //TI - 1993
    data_lulus[0][2] =90; //TI - 1994
    data_lulus[0][3] =120; //TI - 1995
    data_lulus[1][0] =100; //MI -1992
    data_lulus[1][1] =110; //MI -1993
    data_lulus[1][2] =70; //MI - 1994
    data_lulus[1][3] =101; //MI -1995
    data_lulus[2][0] =10; //TK -1992
    data_lulus[2][1] =15; //TK -1993
    data_lulus[2][2] =20; //TK -1994
    data_lulus[2][3] =17; //TK -1995

    while(1){
        cout<<"Jurusan (0 =TI, 1=MI, 2=TK)";
        cin>>jurusan;
        if((jurusan==0)||(jurusan==1)||(jurusan==2))
            break;
    }
    while(1){
        cout<<"tahun (1992-1995) : ";
        cin>>tahun;
        if((tahun >= 1992)&&(tahun<=1995)){
            tahun -=1992;
            break;
        }

    }
    cout <<"Jumlah yang lulus = "
    <<data_lulus[jurusan][tahun]<<endl;
}
