package com.example.calcsalute;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class imc_result extends AppCompatActivity {

    private TextView textImc, textValorImc;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_imc_result);


        textImc = findViewById(R.id.ViewTextoImc);
        textValorImc =  findViewById(R.id.textViewImc);

        Bundle dados = getIntent().getExtras();

        String  textoImc = dados.getString("textImc");
        float   ValorImc = dados.getFloat("imc");

        textImc.setText( textoImc);
        textValorImc.setText(String.format(String.valueOf(ValorImc), 1));







    }
}