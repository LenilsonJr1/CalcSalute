package com.example.calcsalute;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    private EditText altura;
    private EditText peso;
    private Button botao;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        altura = findViewById(R.id.AlturaNumber);
        peso = findViewById(R.id.PesoNumber);
        botao = findViewById(R.id.button);


        botao.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                float alturaRes =  Float.parseFloat(String.valueOf(altura.getText()));
                float pesoRes =  Float.parseFloat(String.valueOf(peso.getText()));
                float imc =  pesoRes / (alturaRes * alturaRes)  ;



                Intent intent = new Intent(getApplicationContext(),imc_result.class);

                if(imc < 18.5){
                    intent.putExtra("imc",imc);
                    intent.putExtra("textImc","você está abaixo do peso");

                }else if(imc >= 18.25 && imc <= 24.9){

                    intent.putExtra("imc",imc);
                    intent.putExtra("textImc","você está  com o  peso normal");

                }else if(imc >= 25  && imc <= 29.9){

                    intent.putExtra("imc",imc);
                    intent.putExtra("textImc","você está  Sobrepeso");


                }else if(imc >= 30  && imc <= 34.9){


                    intent.putExtra("imc",imc);
                    intent.putExtra("textImc","você está  com obesidade grau 1");

                }else if(imc >= 35   && imc <= 39.9){


                    intent.putExtra("imc",imc);
                    intent.putExtra("textImc","você está  com obesidade grau 2");

                }else if(imc >= 40){

                    intent.putExtra("imc",imc);
                    intent.putExtra("textImc","você está  com obesidade grau 3 ou mórbida");

                }

                startActivity(intent);

            }
        });







    }
}