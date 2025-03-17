package algorithmTrainingYandex6_0.homeTask1.inscriptionOnTheBoard;

import java.io.*;
import java.util.ArrayList;

public class InscriptionOnTheBoard {

    private int rectangle(int[][] field,int x, int y,int N, int M){
        for (int i = x; i < N; i++) {
            for(int j = y; j < M; j++) {
                System.out.print(field[i][j]);
            }
        }

        return 0;
    }

    public static void main(String[] args) throws IOException {
        // Создаем BufferedReader для чтения входных данных
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        // Создаем BufferedWriter для записи выходных данных
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(System.out));

        // Чтение размеров таблицы
        int N = Integer.parseInt(reader.readLine());

        // Чтение таблицы
        ArrayList<String> list= new ArrayList<String>();
        for (int i = 0; i < N; i++) {
            String line = reader.readLine();
            list.add(line);
        }
        int M=list.get(0).length();
        int[][] field = new int[N][M];
        for (int i = 0; i < N; i++) {
            for(int j = 0; j < M; j++) {
                Character str=list.get(i).charAt(j);
                if(str.equals('#')){
                    field[i][j]=1;
                }else{
                    field[i][j]=0;
                }

            }
        }
        for (int i = 0; i < N; i++) {
            for(int j = 0; j < M; j++) {
                System.out.print(field[i][j]);
            }
            System.out.println();
        }

    }

}
