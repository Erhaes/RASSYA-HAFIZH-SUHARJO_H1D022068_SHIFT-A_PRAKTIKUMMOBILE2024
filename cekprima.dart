import 'dart:io';
bool prima(int angka){
  if(angka>2){
    int pembagi=2;
    while(pembagi<angka){
        int hasil=angka%pembagi;
        if(hasil==0){
            pembagi=angka;
            return false;
        }else{
            pembagi++;
        }
    }
    return true;
  }else if(angka==2){
      return true;
  }else{
      return false;
  }
}

void printhasil(bool hasil){
    if(hasil == true){
        print("Bilangan prima");
    }else if(hasil==false){
        print("Bilangan bukan prima");
    }
}

void main(){
    stdout.write("Masukkan angka : ");
    var cekinput = stdin.readLineSync();
    var cek = int.parse('$cekinput');
    printhasil(prima(cek));
}