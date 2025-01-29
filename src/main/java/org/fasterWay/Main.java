package org.fasterWay;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;


public class Main {
    public static void main(String[] args) throws IOException {
        // Создаем BufferedReader для чтения входных данных
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        // Создаем BufferedWriter для записи выходных данных
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(System.out));

        // Чтение размеров таблицы
        String[] dimensions = reader.readLine().split(" ");
        int N = Integer.parseInt(dimensions[0]);
        int M = Integer.parseInt(dimensions[1]);

        // Чтение таблицы штрафов
        int[][] grid = new int[N][M];
        for (int i = 0; i < N; i++) {
            String[] line = reader.readLine().split(" ");
            for (int j = 0; j < M; j++) {
                grid[i][j] = Integer.parseInt(line[j]);
            }
        }

        // Инициализация массива dp
        int[][] dp = new int[N][M];

        // Начальная клетка
        dp[0][0] = grid[0][0];

        // Заполнение первой строки
        for (int j = 1; j < M; j++) {
            dp[0][j] = dp[0][j - 1] + grid[0][j];
        }

        // Заполнение первого столбца
        for (int i = 1; i < N; i++) {
            dp[i][0] = dp[i - 1][0] + grid[i][0];
        }

        // Заполнение остальных клеток
        for (int i = 1; i < N; i++) {
            for (int j = 1; j < M; j++) {
                dp[i][j] = grid[i][j] + Math.min(dp[i - 1][j], dp[i][j - 1]);
            }
        }

        // Минимальный вес еды для достижения правого нижнего угла
        writer.write(String.valueOf(dp[N - 1][M - 1]));

        // Закрываем потоки ввода-вывода
        reader.close();
        writer.close();
    }
}