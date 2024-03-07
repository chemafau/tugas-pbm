import 'jubah.dart';
import 'jagoan.dart';
import 'senjata.dart';

void main(List<String> args) {
        Jagoan pitung = Jagoan("Pitung", 120, 90, 2, 10, 15, true);
        Jubah jubahSilatPutih = Jubah("Jubah Silat Putih", 7, 50);
        Senjata golok = Senjata("Golok", 20);

        pitung.setJubah(jubahSilatPutih);
        pitung.setSenjata(golok);

        Jagoan jakaSembung =  Jagoan("Jaka Sembung", 110, 100, 2, 15, 10, true);
        Jubah jubahSilatHitam = Jubah("Jubah Silat Hitam", 10, 50);
        Senjata toya = Senjata("Toya", 25);

        jakaSembung.setJubah(jubahSilatHitam);
        jakaSembung.setSenjata(toya);

        pitung.info();
        jakaSembung.info();

        jakaSembung.menyerang(pitung);
        jakaSembung.menyerang(pitung);
        jakaSembung.menyerang(pitung);
        jakaSembung.menyerang(pitung);
        
        pitung.menyerang(jakaSembung);
        pitung.menyerang(jakaSembung);
        pitung.menyerang(jakaSembung);
        pitung.menyerang(jakaSembung);

        print('${pitung.getNama()} : ${pitung.getNilaiKesehatan()}');
        print('${jakaSembung.getNama()} : ${jakaSembung.getNilaiKesehatan()}');

        if (pitung.getStatus() && jakaSembung.getStatus() == false) {
            print('${pitung.getNama()} menang cuy!');
        } else if (pitung.getStatus() == false && jakaSembung.getStatus()) {
            print('${jakaSembung.getNama()} menang cuy!');
        } else {
            if (pitung.getNilaiKesehatan() > jakaSembung.getNilaiKesehatan()) {
                print('${pitung.getNama()} menang cuy!');
            } else if (pitung.getNilaiKesehatan() < jakaSembung.getNilaiKesehatan()) {
                print('${jakaSembung.getNama()} menang cuy!');
            } else {
                print('Kedua jagoan seri, cuy!');
            }
        }
    }