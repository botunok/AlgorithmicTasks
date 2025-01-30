package org.knightsMove;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class Main {
    public static void printArray(int[][] array) {
        int M = array.length;
        if (M == 0) {
            System.out.println("Массив пустой.");
            return;
        }
        int N = array[0].length;

        for (int i = 0; i < M; i++) {
            for (int j = 0; j < N; j++) {
                System.out.print(array[i][j] + " ");
            }
            System.out.println(); // Переход на новую строку после каждой строки массива
        }
    }

    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(System.out));

        String[] dimensions = reader.readLine().split(" ");
        int N = Integer.parseInt(dimensions[1]);//строки
        int M = Integer.parseInt(dimensions[0]);//столбцы

        int array[][]=new int[M][N];
        array[0][0]=1;

        for(int i=0;i<M;i++){
            for(int j=0;j<N;j++){
                if((i==0)&(j==0)){
                    array[0][0]=1;
                }else if(i==0){
                    array[i][j]=0;
                }else if(j==0){
                    array[i][j]=0;
                }else if((i==1)&(j==1)){
                    array[i][j]=0;
                }else if(i==1){
                    array[i][j]=array[i-1][j-2];
                }else if(j==1){
                    array[i][j]=array[i-2][j-1];
                }else{
                    array[i][j]=array[i-2][j-1]+array[i-1][j-2];
                }

            }

        }
       // printArray(array);
        if((M==1)&(N==1)){
            System.out.println(1);
        }else{
            System.out.println(array[M - 1][N - 1]);
        }

        reader.close();
        writer.close();
    }

}
