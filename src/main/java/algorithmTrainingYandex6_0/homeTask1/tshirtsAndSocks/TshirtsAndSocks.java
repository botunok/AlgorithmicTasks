package algorithmTrainingYandex6_0.homeTask1.tshirtsAndSocks;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;


public class TshirtsAndSocks {
    public static void tshirtsAndSocks(int a, int b, int c, int d) throws IOException {



        if(a>b){
            if(c>d){
                System.out.println(b+1+" "+(d+1));
            }else if(c<d){
                if(a>d){
                    System.out.println(b+1+" "+(d+1));
                } else{
                    System.out.println(a+1+" "+(c+1));
                }
            }
        }else {
            if(c>d){
                if(b>c){
                    System.out.println(a+1+" "+(c+1));
                } else{
                    System.out.println(b+1+" "+(d+1));
                }
            }else{
                System.out.println(a+1+" "+(c+1));
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