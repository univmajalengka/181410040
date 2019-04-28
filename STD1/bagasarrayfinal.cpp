#include <iostream>
using namespace std;

int main()
{
    char NAMA[100][100];
    int NILAI[100];
    int NPM[100];
    int no;

    cout<<"Masukan Jumlah Mahasiswa Di Kelas : ";
    cin>>no;

    //input data
    for (int i=1;i<=no;i++){
            cout<<"Masukan NAMA Mahasiswa : ";
    cin>>NAMA[i];
            cout<<"Masukan NILAI Mahasiswa : ";
    cin>>NILAI[i];
    		cout<<"Masukan NPM Mahasiswa : ";
    cin>>NPM[i];
}

//menampilkan data
cout<<"MENAMPILKAN DATA"<<endl;
for (int a=1;a<=no;a++){
        cout<<"NAMA : "<<NAMA[a]<<" dengan nilai : "<<NILAI[a]<<endl;
        cout<<"NPM : "<<NPM[a]<<endl;
        cout<<" INFORMATIKA 2B "<<endl;
}
return 0;
}
