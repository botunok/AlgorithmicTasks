package algorithmTrainingYandex6_0.homeTask1.tshirtsAndSocks;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;


public class TshirtsAndSocks {
    public static void tshirtsAndSocks(int a, int b, int c, int d) throws IOException {
        int bd=2000000000,ac=2000000000;
        int ab=2000000000,cd=2000000000;

        if ((a>0)&(c>0)){
            bd=b+d+2;
        }
        if((b>0)&(d>0)){
            ac=a+c+2;
        }
        if((a>0)&(b>0)){
            ab=Integer.max(a,b)+2;
        }
        if((c>0)&(d>0)){
            ab=Integer.max(c,d)+2;
        }
        if(bd<ac){
            if(ab<cd) {
                if(bd<ab){
                    System.out.println((b+1)+" "+(d+1));
                }else{
                    System.out.println((Integer.max(a,b)+1)+" "+(1));
                }
            }else {
                if(bd<cd){
                    System.out.println((b+1)+" "+(d+1));
                }else{
                    System.out.println((Integer.max(c,d)+1)+" "+(1));
                }
            }
        }else {
            if (ab < cd) {
                if (ac < ab) {
                    System.out.println((a + 1) + " " + (c + 1));
                } else {
                    System.out.println((Integer.max(a, b) + 1) + " " + (1));
                }
            } else {
                if (ac < cd) {
                    System.out.println((a + 1) + " " + (c + 1));
                } else {
                    System.out.println((Integer.max(c, d) + 1) + " " + (1));
                }
            }
        }


    }

    public static void main(String[] args) throws IOException {
        // Создаем BufferedReader для чтения входных данных
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        // Создаем BufferedWriter для записи выходных данных
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(System.out));

        int a = Integer.parseInt(reader.readLine());
        int b = Integer.parseInt(reader.readLine());
        int c = Integer.parseInt(reader.readLine());
        int d = Integer.parseInt(reader.readLine());

        tshirtsAndSocks(a,b,c,d);

        // Закрываем потоки ввода-вывода
        reader.close();
        writer.close();

    }
}