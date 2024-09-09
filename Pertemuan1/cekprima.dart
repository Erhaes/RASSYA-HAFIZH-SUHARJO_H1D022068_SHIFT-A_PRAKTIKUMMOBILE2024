import 'dart:io';
bool prima(int angka){
  if(angka>1){
    int pembagi=2;
    while(pembagi<angka){
        int hasil=angka%pembagi;
        if(hasil==0){
            return false;
        }else{
            pembagi++;
        }
    }
    return true;
  }else{
    return false;
  }
}

void printhasil(int angka, bool hasil){
    if(angka<2){
        print("Bilangan bukan prima dan komposit");
    }else if(hasil==true){
        print("Bilangan prima");
    }else if(angka>2 && hasil==false){
        print("Bilangan komposit");
    }
}

void main(){
    stdout.write("Masukkan angka : ");
    var cekinput = stdin.readLineSync();
    var cek = int.parse('$cekinput');
    printhasil(cek,prima(cek));
}