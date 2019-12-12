package com.example.project2;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;


public class Activity2 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_2);

        //textview
        TextView song = findViewById(R.id.songTitle);
        song.setText("Marvin's Room");

        TextView rapper = findViewById(R.id.artist);
        rapper.setText("Drake");
    }
}
