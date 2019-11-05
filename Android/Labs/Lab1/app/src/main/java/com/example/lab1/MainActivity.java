package com.example.lab1;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText name;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        name = findViewById(R.id.editText);
    }

    public void nbaChampion(View view) {
        //edittext

        String nameValue = name.getText().toString();

        //textview
        TextView champion = findViewById(R.id.message);
        champion.setText(nameValue + " is an NBA Champion!");

        //imageview
        ImageView trophy = findViewById(R.id.imageView);
        trophy.setImageResource(R.drawable.n);

    }
}
