package org.kafe;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;


public class Main  {


    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(System.out));

        int count = Integer.parseInt(reader.readLine());
        int purchase[]=new int[count];
        int coupons[]=new int[count];
        int count200=0;
        int count100=0;
        for(int i=0;i<count;i++){
            purchase[i]=Integer.parseInt(reader.readLine());
            if(purchase[i]>200){
                coupons[i]=2;
                count200++;
            }else if((purchase[i]<200)&(purchase[i]>100)){
                coupons[i]=1;
                count100++;
            }else{
                coupons[i]=1;
            }
        }
        //находим максимальные 200
        for(int i=0;i<count200;i++) {
            int max200=-1;
            int number200=-1;
            boolean is100=false;
            for (int j = 0; j < count; j++) {
                if((max200<purchase[j])&(purchase[j]>200)){
                    max200=purchase[j];
                    number200=j;
                }
            }
            if(number200!=-1) {
                for (int j = number200; j >= 0; j--) {
                    if ((purchase[j] > 100) & (purchase[j] < 200) & (coupons[j] == 1)) {
                        coupons[j] = -1;//этот купон использовали
                        coupons[number200] = -2;//здесь купон был использован
                        j = -1;
                        is100 = true;
                    }
                }
                if (is100 == false) {
                    for (int j = number200; j >= 0; j--) {
                        if ((purchase[j] > 200) & (coupons[j] == 2)) {
                            coupons[j] = -1;//этот купон использовали
                            coupons[number200] = -2;//здесь купон был использован
                            j = -1;
                            is100 = true;
                        }
                    }
                }
            }
        }

        //идем с конца оцениваем как мы максимально можем использовать наши купоны
        for(int i=0;i<count100;i++) {
            int max100=-1;
            int number100=-1;
            for (int j = 0; j < count; j++) {
                if((max100<purchase[j])&(purchase[j]>100)&(purchase[j]<200)&coupons[j]!=-1){
                    max100=purchase[j];
                    number100=j;
                }
            }
            if(number100!=-1) {
                for (int j = number100; j >= 0; j--) {
                    if ((purchase[j] > 100) & ((coupons[j] == 2) || (coupons[j] == 1))) {
                        coupons[j] = -1;//этот купон использовали
                        coupons[number100] = -2;//здесь купон был использован
                        j = -1;
                    }
                }
            }

        }






        reader.close();
        writer.close();
    }
}
