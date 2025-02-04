package algorithmTrainingYandex6_0.homeTask1;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;


public class Raft {
    public static void raft(int x,int y, int x1,int y1,int x2,int y2) throws IOException {


        if((x<x1)&(y<y1)){
            System.out.println("SW");
        } else if((x<x1)&(y>y1)&(y<y2)){
            System.out.println("W");
        } else if((x<x1)&(y>y2)){
            System.out.println("NW");
        }else if((x>x1)&(y>y2)&(x<x2)){
            System.out.println("N");
        }else if((x>x2)&(y>y2)){
            System.out.println("NE");
        }else if((x>x2)&(y<y2)&(y>y1)){
            System.out.println("E");
        }else if((x>x2)&(y<y1)){
            System.out.println("SE");
        }else if((x>x1)&(y<y1)&(x<x2)){
            System.out.println("S");
        }


    }

    public static void main(String[] args) throws IOException {
        // Создаем BufferedReader для чтения входных данных
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        // Создаем BufferedWriter для записи выходных данных
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(System.out));

        int x1=Integer.parseInt(reader.readLine());
        int y1=Integer.parseInt(reader.readLine());
        int x2=Integer.parseInt(reader.readLine());
        int y2=Integer.parseInt(reader.readLine());
        int x=Integer.parseInt(reader.readLine());
        int y=Integer.parseInt(reader.readLine());

        raft(x,y,x1,y1,x2,y2);

        // Закрываем потоки ввода-вывода
        reader.close();
        writer.close();

    }
}